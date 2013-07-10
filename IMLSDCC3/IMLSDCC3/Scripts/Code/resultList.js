/**
     * @fileOverview Various functions for calling and displaying IMLS DCC 
     		results. Requires JQuery BBQ for hash and deparam functions.
     		Read JQuery BBQ documentation at:
     		http://benalman.com/projects/jquery-bbq-plugin/.
     * @author Peter Organisciak
     */
     
/** @namespace */
var dcc = function () {
	//Private Vars
	var data = {
		/*
		Data that is being saved by Javascript
		*/
		current: null,
		query: null,
		results: {},
		briefs: {}
	},
	briefQueue = [],
	defaults = {
		"search" : {
			"items" : {
				"anywhere" : "",
				"dates":"",
				"types": "",
				"places":"",
				"collections": "",
				"startRecord": 1,
				"maximumRecords": 10,
				"scope" : "",
				"sort" : ""
				}
			}
	 },
	
	//Private Methods
     
	createResultStrip = function (resultData, div_id) {
		/**
		Creates the HTML DOM elements that represent an individual result.
		
		Returns:
			DOM Object of individual result.			
		*/
		var resultStrip = $("<li class='item-match' id='"+div_id+"'>");
		
		$('<div class="item-description">')
			.html("<h3><a href='"+resultData.uri+"'>"+resultData.text+"</a></h3>")
			.appendTo(resultStrip);
		return resultStrip;
		},
	drawBrief = function (briefData, resultDiv) {
		/* Draws a full search result based on an item/brief web service call.
		Args:
			briefData: Json response from web service.
			resultDiv: The existing div for that record (created from createResultStrip)
		 */
		$('<div class="item-thumbnail">')
			.html('<img class="results thumbnail" src="'+briefData.thumbnail+'" alt="thumbnail"></div>')
			.fadeIn()
			.prependTo(resultDiv);
		$(resultDiv+" .item-description")
			.html(
			'<span class="item-type">'+briefData.type+'</span><h3><a href="" title="View the full item record">'+briefData.title+' [NEED URL]</a></h3><p>Created by <a href="">'+briefData.creator+' [NEED URL]</a></p><p>View original at <a href="'+briefData.identifier+'" target="_blank">NEED SOURCE</a></p><p>View all <a href="">matching items [NEED URL]</a> from <a href="">'+briefData.isPartOf+' [NEED URL]</a></p></div>'
			);
		
		//.text(briefData.identifier);
	},
	addOrCallBrief = function (briefURL, callbackFunction) {
		/**
		This function checks if the JSON for the current brief view has already
		been loaded. If it has not, it is done so.
		
		Args:
			briefURL - the web service url for the brief, which stands in as a 
				unique ID for a set of JSON results.
			callbackFunction - function to send the load data to.
		*/
		
		//DURING TESTING, OVERWRITE URL
		//briefURL = "sample_brief.json";
		
		if (briefURL in data.briefs) {
			callbackFunction(data.briefs[briefURL]);
		} else {
			$.getJSON(briefURL, function(json){
				var new_brief = {};
				new_brief[briefURL] = json;
				$.extend(data.briefs, new_brief);
				callbackFunction(json);
			});
		}
		};
	
	//Public Methods
	return {
		constructWebServiceURL: function(opts, baseURL) {
			/** 
			Construct a webService url, taking into account the
			
			Args:
				opts{object}: Object overriding parameter defaults
					without including them in the fragment id. [Optional]
				baseURL{string}: Web service url. [Optional]
			
			Returns:
				url{string}
			*/
			var url = baseURL || "http://imlsdccweb.grainger.illinois.edu/imlsdcc_WebService/";
			var params = defaults.search.items;
			var hash = $.deparam.fragment(window.location.hash, true);	
			/** Extend parameters with opts and hash values.*/
			$.extend(params, opts, hash);
			
			//Correct if people try to enter their own startRecord, before the first record.
			if (params.startRecord < 1) {
				params.startRecord = 1;
			}
			a = $.param.querystring(url+"Search/Items", params)
			return a;
		},
		addOrCallResults: function (resultsId, callbackFunction) {
			/**
			This function checks if the JSON for the current page has already
			been loaded. If it has not, it is done so.
			
			Args:
				ResultsId - the service url, which stands in as a unique
					ID for a set of JSON results.
			*/
			if (resultsId in data.results) {
				data.current = data.results[resultsId];
				callbackFunction(data.current);
			} else {
				$.getJSON(resultsId, function(json){
					var new_result = {};
					new_result[resultsId] = json;
					$.extend(data.results, new_result);
					data.current = json;
					callbackFunction(data.current);
				});
			}
		},
		drawAll: function(json, appendDiv) {	
			/**
			Draw all search results. Assumes existing HTML fields in the page.
			
			Args:
				json{object/json}: The json response from the server.

			*/	
			//First check if the current page shouldn't exist.
			if (json.startRecord > json.totalRecords) {
				$.bbq.pushState({"startRecord":json.totalRecords - json.maximumRecords});
			}
			//Clear appendDiv. This is for when pages changes, the visible
			// page gets rebuilt for the new data.
			$(appendDiv).html(""); 
			maxRecord = json.maximumRecords + json.startRecord - 1;
			//Doublecheck that you're not on the last page of results
			if (json.totalRecords < maxRecord) { maxRecord = json.totalRecords };
			$(".field-totalRecords").text(json.totalRecords);
			$(".field-startRecord").text(json.startRecord);
			$(".field-endRecord").text(maxRecord);
			
			var detailsDiv = $("<div>");
			
			/** Anonymous function for creating navigation buttons */
			function nav(url, text){
				// Deparses parameters from provided URL.
				var urlOpts = $.deparam.querystring(url, true);
				
				if (urlOpts.startRecord < 1 && $.bbq.getState("startRecord") != 1) {
					/* If you're not on the first page of results but the target
						page starts before the first result, change the target to
						the first result */
					urlOpts.startRecord = 1;
				} 
				var button;
				console.log(urlOpts.startRecord);
				console.log(data.current.total);
				if (urlOpts.startRecord < 1 || urlOpts.startRecord > data.current.totalRecords) {
					return false;
				} else {				
					button = $("<a href='"+url+"'>"+text+"</a>")
						.click(function() {
							// On click, this sets the hash to a new startRecord. 
							$.bbq.pushState({"startRecord":urlOpts.startRecord});
							return false;
						});
				}
				return $("<li>").append(button)
			}
			
			
			//Rebuild pager from scratch
			$(".pager").html("")
				.append(nav(json.uriPreviousPage, "&lt;&lt; Previous Page"))
				.append(nav(json.uriNextPage, "Next Page &gt;&gt;"))
				;
				// Here is how you create and append DOM objects in JQuery.
				//;
				for (var i = 0; i < json.itemList.length; i++) {
					var result = json.itemList[i];
					createResultStrip(result, "result_"+i).appendTo(appendDiv);

					//Using a closure to queue
					queueDiv = $(appendDiv);
					(function (url, div_id) {
						//TEMPORARY: determine brief url my grepping the detail url.
						//	Ideally, the brief URL should be in the web service
						url = url.replace("Detail", "Brief")
						queueDiv.queue(function (next) {
							addOrCallBrief(url, function(json) {
								if (json.errors.length<1) {
									drawBrief(json, "#"+div_id);
								} else {
									// Deal with errors here
								};
								next();
							});
						});
					})("/imlsdcc_WebService"+result.uri, "result_"+i);

					//Records and their corresponding ID are added to a queue,
					//	In order to load and display the fuller brief.
					//briefQueue.push({"id":result.uri, "div_id":"result_"+i});
					
				}
				queueDiv.dequeue();
				
				// Load brief records
				/*for(var j = 0; j < briefQueue.length; j++) {
					a = briefQueue[j].div_id;
					addOrCallBrief(briefQueue[j].id, function(json){
						if (json.errors.length<1) {
							console.log(a);
							drawBrief(json).prependTo(a);
						} else {
							// Deal with errors here
						};
					});
				}*/
				console.log(data);
				//console.log(briefQueue);
			},
	};
	

}();