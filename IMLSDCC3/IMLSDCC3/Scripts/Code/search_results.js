/**
     * @fileOverview Various functions for calling and displaying IMLS DCC 
     		results. Requires JQuery BBQ for hash and deparam functions.
     		Read JQuery BBQ documentation at:
     		http://benalman.com/projects/jquery-bbq-plugin/.
     * @author Peter Organisciak
     */

window.addEventListener('popstate', function (event) {
    //console.log('popstate fired!');
    dcc.updateContent(event.state);
});

/** @namespace */
var dcc = function () {
    //Private Vars
    var serviceUrl = "/Service/"; //http://imlsdcc.grainger.illinois.edu
    var data = {
        /*
        Data that is being saved by Javascript
        */
        currentColPage: 1,
        currentItemPage: 1,
        maxColPage: 1,
        maxItemPage: 1,
        query: null,
        results: {},
        briefs: {}
    },
	briefQueue = [],
	defaults = {
	    "search": {
	        "items": {
	            "anywhere": "",
	            "idates": "",
	            "itypes": "",
	            "iplaces": "",
	            "cdates": "",
	            "ctypes": "",
	            "cplaces": "",
	            "collections": "",
	            "iStartRecord": 1,
	            "iMaximumRecords": 10,
	            "cStartRecord": 1,
	            "cMaximumRecords": 10,
	            "scope": "",
	            "sort": "relevant"
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
	    resultData.uri = resultData.uri.replace('Collection/Detail', 'Detail/Collection').replace('Item/Detail', 'Detail/Item');
	    var resultStrip = $("<li class='item-match' id='" + div_id + "'>");
	    var divId = $('<div class="item-description">')
	    if (resultData.hitsColl > 0) {
	        var v = $.deparam.querystring();
	        v['iStartRecord'] = 1; v['cStartRecord'] = 1; v['iMaximumRecords'] = 10; v['iMaximumRecords'] = 10;
	        v['collections'] = resultData.briefuri.replace('/Collection/Brief/', '');
	        var collURL = $.param.querystring("/ResultList/Items/1", v);
	        divId.html("<h3><a href='" + resultData.uri + "'>" + resultData.text + "</a></h3> (<a href='" + collURL + "'>" + resultData.hitsColl + " relevant items</a>)")
			.appendTo(resultStrip);
	    } else {
	        divId.html("<h3><a href='" + resultData.uri + "'>" + resultData.text + "</a></h3>")
			.appendTo(resultStrip);
	    }

	    return resultStrip;
	},
	drawBrief = function (briefData, resultDiv) {
	    /* Draws a full search result based on an item/brief web service call.
	    Args:
	    briefData: Json response from web service.
	    resultDiv: The existing div for that record (created from createResultStrip)
	    */
	    //if (briefData.detailurl.indexOf('item/detail') != 0) {
	    briefData.detailurl = briefData.detailurl.replace('item/detail', 'Detail/Item');
	    //} else if (briefData.detailurl.indexOf('collection/detail') != 0) {
	    briefData.detailurl = briefData.detailurl.replace('collection/detail', 'Detail/Collection');
	    //}
	    var itemThumbnail = $('<div class="item-thumbnail">'), itemDesc = "";
	    if (briefData.thumbnail) {
	        itemThumbnail.html('<img class="results thumbnail" src="' + briefData.thumbnail + '" alt="thumbnail"></div>')
	        			.fadeIn()
	        			.prependTo(resultDiv);
	    }
	    if (briefData.type) {
	        itemDesc = '<span class="item-type">' + briefData.type + '</span>';
	    }
	    //	    if (briefData.detailurl && briefData.title) {
	    //	        itemDesc = itemDesc + '<h3><a href="' + briefData.detailurl + '" title="View the full item record">' + briefData.title + '</a></h3>';
	    //	    }
	    if (briefData.creatorurl && briefData.creator) {
	        itemDesc = itemDesc + '<p>Created by <a href="' + briefData.creatorurl + '">' + briefData.creator + '</a></p>';
	    }
	    if (briefData.identifier && briefData.isPartOf) {
	        itemDesc = itemDesc + '<p>View original at <a href="' + briefData.identifier + '" target="_blank">' + briefData.isPartOf + '</a></p>';
	    }
	    if (briefData.collectionbrowse && briefData.collectionurl && briefData.isPartOf) {

	        itemDesc = itemDesc + '<p>View all <a href="' + briefData.collectionbrowse + '">matching items</a> from <a href="' + briefData.collectionurl + '">' + briefData.isPartOf + '</a></p>';
	    }
	    if (briefData.description) {
	        if (briefData.description.length > 400) {
	            itemDesc = itemDesc + '<p>' + briefData.description.substr(0, 400) + '...</p>';
	        } else {
	            itemDesc = itemDesc + '<p>' + briefData.description + '</p>';
	        }
	    }
	    if (briefData.isavailableat) {
	        itemDesc = itemDesc + '<p><a href="' + briefData.isavailableat + '">Collection Homepage<img id="ExternalLink" name="ExternalLink" alt="->" src="../../Images/externallinks.gif"></p>';
	    }
	    //$(resultDiv + " .item-description").html(itemDesc);
	    $(resultDiv + " .item-description").append(itemDesc);

	    //.text(briefData.identifier);
	},
    cleanParams = function (params, cat) {
        // params: Object with the params
        // cat: category of item or collection 
        //var rtrnObj = [], obj = {};
        for (i in params) {
            if (params[i] == '' || params[i] == null || !params.hasOwnProperty(i) || params[i] == 'undefined') {
                delete params[i];
            } //else {
            //                obj[params[i]] = 0;
            //            }
            //            if (cat) {
            //                var s = cat + 'startRecord', m = cat + 'maximumRecord';
            //                if (i == s) {
            //                    var start = { 'startRecord': params[i] };
            //                    console.log(start);
            //                   
            //                } else if (i == m) {
            //                    var max = { 'maximumRecord': params[i] };
            //                    console.log(max);
            //                }
            //            }
            //console.log(i);
        }
        //        for (n in obj) {
        //            rtrnObj.push(n);
        //        }
        //params = params.filter(function (o, i, a) { return a.indexOf(o) === i; });
        //        console.log(params);
        return params;
    },
    preLoad = function (startR, maxR, appndDiv, preUrl) {
        var pref = appndDiv.substring(0, 1), currentPage, maxPage, nPage, pPage, isCollection = false;
        if (pref == 'i') {
            currentPage = data.currentItemPage;
            maxPage = data.maxItemPage;
        } else {
            currentPage = data.currentColPage;
            maxPage = data.maxColPage;
            isCollection = true;
        }
        //Change currentPage plus to however many pages that you wan't pre-Loaded
        if (currentPage + 5 > maxPage) { nPage = maxPage - currentPage } else { nPage = currentPage + 3 }

        for (var i = currentPage + 1; i <= nPage; i++) {
            var pageNumberDiv = '#' + appndDiv + ' ol#' + appndDiv + '-page-' + i;

            if ($(pageNumberDiv).length == 0) {
                $('#' + appndDiv + '-matches').append('<ol id="' + appndDiv + '-page-' + i + '"></ol>');
                $(pageNumberDiv).hide();

                var prams = $.deparam.querystring();
                prams[pref + 'StartRecord'] = (i * maxR) + 1;

                var url = dcc.constructWebServiceURL('', $.param.querystring(preUrl.split('?')[1], prams), isCollection);
                dcc.addOrCallResults(url, function (data) { dcc.drawPreLoad(data, pageNumberDiv, appndDiv, i); }, false);
                //console.log(url);
            }

        }

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
        //briefURL = "../../Scripts/Code/TempJSON/Items.json";
        briefURL = briefURL.replace('Brief/Collection', 'Collection/Brief').replace('Brief/Item', 'Item/Brief')
        if (briefURL in data.briefs) {
            callbackFunction(data.briefs[briefURL]);
        } else {
            $.getJSON(briefURL, function (json) {
                var new_brief = {};
                new_brief[briefURL] = json;
                $.extend(data.briefs, new_brief);
                callbackFunction(json);
            });
        }
    };

    //Public Methods
    return {
        runService: function (url, service, facet) {
            //url: Pass in url to bypass getting parameters from the window url
            //service: Pass in Item or Collection to only run that service
            var disabledTab = '';
            //For Items
            if (service == null || service == 'item') {
                var url = dcc.constructWebServiceURL('', url);
                dcc.addOrCallResults(url, function (data) {
                    if (data) {
                        if (data.errors.length < 1) {
                            if (data.totalRecords > 0) {
                                dcc.drawAll(data, 'item'); //#item-matches ol#item-page-1');
                                if (facet == true) {
                                    dcc.drawSearchedFacets(data.itemFacets, 'items');
                                }
                            } else {
                                $("#item .spinner").hide();
                                $('#item-matches').html('<div text-align="center">No Items Found</div>');
                            }
                        } else {
                            $("#item .spinner").hide();
                            $('#item-matches').html('');
                            for (e in data.errors) {
                                $('#item-matches').append('<div style="text-align: center">' + data.errors[e] + '</div>');
                            }
                        };
                    } else {
                        $("#item .spinner").hide();
                        $('#item-matches').html('<div text-align="center">No Items Found</div>');
                    };
                }, facet, 'item');
                //$('#item-page-1').show();

            }
            //For Collections
            if (service == null || service == 'collection') {
                url = dcc.constructWebServiceURL('', url, true);
                dcc.addOrCallResults(url, function (data) {
                    if (data) {
                        if (data.errors.length < 1) {
                            if (data.totalRecords > 0) {
                                dcc.drawAll(data, 'collection'); //#collection-matches ol#collection-page-1');
                                if (facet == true) {
                                    dcc.drawSearchedFacets(data.itemFacets, 'collections');
                                }
                            } else {
                                $("#collection .spinner").hide();
                                $('#collection-matches').html('<div text-align="center">No Collections Found</div>');
                            }
                        } else {
                            $("#collection .spinner").hide();
                            $('#collection-matches').html('');
                            for (e in data.errors) {
                                $('#collection-matches').append('<div style="text-align: center">' + data.errors[e] + '</div>');
                            }
                        };
                    } else {
                        $("#collection .spinner").hide();
                        $('#collection-matches').html('<div text-align="center">No Collections Found</div>');
                    };
                }, facet, 'collection');

            }
            //            if (facet == true || facet == null) {
            //                dcc.getFacets(url);
            //            }


            //Returns the name of either Items or Collections if they have no results found
            //This is handled on page load to disable either tab
            //return disabledTab;
        },
        constructWebServiceURL: function (opts, baseURL, collections) {
            /** 
            Construct a webService url, taking into account the
			
            Args:
            opts{object}: Object overriding parameter defaults
            without including them in the fragment id. [Optional]
            baseURL{string}: Web service url. [Optional]
            collections{bool}: Determines if Collections or Items are to
            be searched on

            Returns:
            url{string}
            */
            var url = serviceUrl;
            var params = defaults.search.items;
            var hash
            if (baseURL) {
                hash = $.deparam.querystring(baseURL);
            } else {
                hash = $.deparam.querystring(); //.fragment(window.location.hash, true);
            }
            var keyAr = ['anywhere', 'keyword', 'title', 'agent'];
            var facAr = ['idates', 'iplaces', 'itypes', 'cdates', 'cplaces', 'ctypes'];
            /** Extend parameters with opts and hash values.*/
            $.extend(params, opts, hash);

            //If the parameters contain any of the accepted search terms then placed them in the 'Searched Terms' panel
            for (key in params) {
                if (hash[key]) {
                    if (jQuery.inArray(key, keyAr) >= 0 && $('#' + key + hash[key].replace(' ', '')).length == 0) {
                        $('#field-query-ul').append('<li id=\"' + key + hash[key].replace(' ', '') + '\">' + key.charAt(0).toUpperCase() + key.slice(1) + " : \"" + hash[key] + '\"</li>');
                    }
                    if (jQuery.inArray(key, facAr) >= 0 && $('#' + key + hash[key]).length == 0) {
                        var IorC;
                        if (key.charAt(0) == 'i') { IorC = 'Item' } else { IorC = 'Collection' };
                        var facID = IorC.toLowerCase() + 's' + key.slice(1).replace('s', '') + '-facet-searched';
                        if ($('#' + facID).length == 0) {
                            $('#field-query-ul').append('<li id="' + facID + '">' + IorC + ' ' + key.charAt(1).toUpperCase() + key.slice(2) + ' : <ul></ul></li>');

                            var subfac = hash[key].split(',');
                            for (s in subfac) {
                                var rmvFac = 'dcc.removeFacet("' + key.replace('s', '') + subfac[s].replace(' ', '') + '","' + subfac[s] + '","' + IorC.toLowerCase() + 's");return false;'
                                var facLi = $('<li id="' + key.replace('s', '') + subfac[s].replace(' ', '') + '">' + subfac[s] + " <a href='' onclick='" + rmvFac + "'>[x]</a></li>");
                                //$('#' + facID + ' ul').append('<li id="' + key.replace('s', '') + subfac[s] + '">' + subfac[s] + '</li>');
                                facLi.appendTo('#' + facID + ' ul');
                            }
                        }
                    }
                }
            };
            params = cleanParams(params);

            //Correct if people try to enter their own startRecord, before the first record.
            if (params.iStartRecord < 1) {
                params.iStartRecord = 1;
            }
            if (params.cStartRecord < 1) {
                params.cStartRecord = 1;
            }
            if (collections == true) {
                //cleanParams(params, 'collection');
                a = $.param.querystring(url + "Search/Collections", params)
            } else {
                //cleanParams(params, 'item');
                a = $.param.querystring(url + "Search/Items", params)
                //a = a + '&withFacets=True';
            }
            return a;
        },
        addOrCallResults: function (resultsId, callbackFunction, withFacets, iorc) {
            /**
            This function checks if the JSON for the current page has already
            been loaded. If it has not, it is done so.
			
            Args:
            ResultsId - the service url, which stands in as a unique
            ID for a set of JSON results.
            */
            //For Testing purposes only
            //resultsId = '../../Scripts/Code/TempJSON/Items.json';
            if (document.location.href.search('localhost')) {
                //resultsId = '../../Scripts/Code/TempJSON/Items.json';
            };
            if (withFacets == true) {
                resultsId = resultsId + '&withFacets=True';
            }
            if (resultsId in data.results) {
                data.current = data.results[resultsId];
                callbackFunction(data.current);
            } else {
                $.getJSON(resultsId, function (json) {
                    var new_result = {};
                    new_result[resultsId] = json;
                    $.extend(data.results, new_result);
                    data.current = json;
                    //callbackFunction(data.current);
                    //draw(data.current, iorc);

                }).success(function (json) {

                    callbackFunction(data.current);

                });
            }
        },
        drawAll: function (json, appendDiv) {
            /**
            Draw all search results. Assumes existing HTML fields in the page.
			
            Args:
            json{object/json}: The json response from the server.

            */
            //Get name for the StartRecord and MaximumRecords with either i or c in front
            var currentPageNum, maxPage, pageNumberDiv, startR, maxR, pref = appendDiv.substring(0, 1);
            var sR = pref + 'StartRecord';
            var mR = pref + 'MaximumRecords';

            //Get the value for the StartRecord and MaximumRecords and push it to the global variables
            startR = json[sR];
            defaults.search.items[sR] = startR;
            maxR = json[mR];
            defaults.search.items[mR] = maxR;

            //Calculate the maxPage and currentPage from total, start, and max Records
            maxPage = Math.ceil(json.totalRecords / maxR);
            currentPageNum = Math.ceil(startR / maxR);

            //Check to make sure current page doesn't go past the maximum pages or below 0
            if (currentPageNum > maxPage) {
                currentPageNum = maxPage;
            }
            if (currentPageNum < 0) {
                currentPageNum = 1;
            }

            if (pref == 'i') {
                data.currentItemPage = currentPageNum;
                data.maxItemPage = maxPage;
            } else {
                data.currentColPage = currentPageNum;
                data.maxColPage = maxPage;
            }

            //get the current pages div id and if it exits
            //if page exist show it and hide everything else
            //if it doesn't create the div on page and hide every other page
            pageNumberDiv = '#' + appendDiv + ' ol#' + appendDiv + '-page-' + currentPageNum;
            $("#" + appendDiv + " .spinner").hide();
            if ($(pageNumberDiv).length != 0) {
                $('#' + appendDiv + '-matches ol:not(' + pageNumberDiv + ')').hide();
                $(pageNumberDiv).show();
            } else {
                $('#' + appendDiv + '-matches ol:not(' + pageNumberDiv + ')').hide();
                $('#' + appendDiv + '-matches').append('<ol id="' + appendDiv + '-page-' + currentPageNum + '"></ol>');
                $(pageNumberDiv).show();
                //console.log('<ol id="' + appendDiv + '-page-' + currentPageNum + '"></ol>');
            }

            maxRecord = maxR + startR - 1;
            //Doublecheck that you're not on the last page of results
            if (json.totalRecords < maxRecord) { maxRecord = json.totalRecords };
            $('#' + appendDiv + " .description").html('');
            $('#' + appendDiv + " .description").append('<span class="field-startRecord">' + startR + '</span> - <span class="field-endRecord">' + maxRecord + '</span> of <span class="field-totalRecords">' + json.totalRecords + '</span> ' + appendDiv + 's');

            /** Anonymous function for creating navigation buttons */
            function nav(url, text, current) {
                // Deparses parameters from provided URL.
                var urlOpts = $.deparam.querystring(url, true);

                //Get the opposite start and maximum Records
                if (sR == 'iStartRecord') {
                    if (!urlOpts.hasOwnProperty('cStartRecord')) { urlOpts['cStartRecord'] = defaults.search.items['cStartRecord'] }
                    if (!urlOpts.hasOwnProperty('cMaximumRecords')) { urlOpts['cMaximumRecords'] = defaults.search.items['cMaximumRecords'] }
                } else {
                    if (!urlOpts.hasOwnProperty('iStartRecord')) { urlOpts['iStartRecord'] = defaults.search.items['iStartRecord'] }
                    if (!urlOpts.hasOwnProperty('iMaximumRecords')) { urlOpts['iMaximumRecords'] = defaults.search.items['iMaximumRecords'] }
                }
                urlOpts = cleanParams(urlOpts);
                url = $.param.querystring(url.split('?')[0], urlOpts);
                if (urlOpts[sR] < 1 || urlOpts[sR] > data.current.totalRecords) {
                    return false;
                } else {
                    var button = $("<a href='" + url + "'>" + text + "</a>")
						.click(function () {
						    $(pageNumberDiv).hide();
						    $('#' + appendDiv + " .spinner").show();
						    dcc.runService(url, appendDiv, false);
						    history.pushState({ content: $('#content').html() }, url, url);
						    return false;
						});
                }
                return $("<li>").append(button)
            }

            //Rebuild pager from scratch
            $("#" + appendDiv + " .pager").html("");
            var uriPrevious = json.uriPreviousPage.replace("Search/Items?", "ResultList/Items/" + (currentPageNum - 1) + '?').replace("Search/Collections?", "ResultList/Collections/" + (currentPageNum - 1) + '?');
            if (currentPageNum > 1) {
                $("#" + appendDiv + " .pager").append(nav(json.uriPreviousPage.replace("Search", "ResultList").replace("?", "/" + (currentPageNum - 1) + '?'), "&lt;&lt; Previous Page"));
                for (var i = 6; i >= 1; i--) {
                    //console.log(i);
                    var pp = currentPageNum - i
                    if (pp <= maxPage && pp > 0) {
                        var urlPrev = json.uriPreviousPage.replace("Search", "ResultList").replace("?", "/" + pp + '?');
                        var prevStart = {};
                        prevStart[sR] = startR - (maxR * i);
                        $("#" + appendDiv + " .pager").append(nav($.param.querystring(urlPrev, prevStart), pp));
                    };
                };
            };

            $("#" + appendDiv + " .pager").append('<li class=\"current-page\">' + currentPageNum + '</li>');

            if (currentPageNum < maxPage) {
                for (var i = 1; i < 6; i++) {
                    var np = currentPageNum + i
                    if (np <= maxPage) {
                        var urlNext = json.uriNextPage.replace("Search", "ResultList").replace("?", "/" + np + '?');
                        var nextStart = {};
                        nextStart[sR] = startR + (maxR * i);
                        $("#" + appendDiv + " .pager").append(nav($.param.querystring(urlNext, nextStart), np));
                    };
                };
                $("#" + appendDiv + " .pager").append(nav(json.uriNextPage.replace("Search", "ResultList").replace("?", "/" + (currentPageNum + 1) + '?'), "Next Page &gt;&gt;"));

            };

            // Here is how you create and append DOM objects in JQuery.
            //;
            //if page has children then exit, if not then populate it
            if ($(pageNumberDiv).children().length == 0) {
                for (var i = 0; i < json.itemList.length; i++) {
                    var result = json.itemList[i];

                    createResultStrip(result, appendDiv + '_' + currentPageNum + "_result_" + i).appendTo(pageNumberDiv);

                    //Using a closure to queue
                    queueDiv = $(pageNumberDiv);
                    (function (url, div_id) {
                        //TEMPORARY: determine brief url my grepping the detail url.
                        //	Ideally, the brief URL should be in the web service
                        url = url.replace("Detail", "Brief")
                        queueDiv.queue(function (next) {
                            addOrCallBrief(url, function (json) {
                                if (json.errors.length < 1) {
                                    //console.log(div_id);
                                    drawBrief(json, "#" + div_id);
                                } else {
                                    // Deal with errors here
                                };
                                dcc.replaceHist();
                                next();
                            });
                        });
                    })("/Service" + result.uri, appendDiv + '_' + currentPageNum + "_result_" + i);
                    //Records and their corresponding ID are added to a queue,
                    //	In order to load and display the fuller brief.
                    //briefQueue.push({"id":result.uri, "div_id":"result_"+i});

                }
                queueDiv.dequeue();
            }
            //preLoad(startR, maxR, appendDiv, json.uriNextPage);

        },
        drawSearchedFacets: function (json, facetName) {
            //json = the facet data that was brought back with the searched results
            //letter = either i for items or c for collections

            $('#' + facetName + '-date-facet').html('');
            $('#' + facetName + '-place-facet').html('');
            $('#' + facetName + '-type-facet').html('');
            if (json) {
                for (f in json) {
                    if (json[f].facetCount > 0) {
                        //var ul = letter + json[f].facetType + 'Facet';
                        if ($('#' + json[f].facetType + "_" + json[f].facetValue.replace(/ /g, '')).length == 0) {
                            var cb = "<input type='checkbox' name='formDoor[]' id='" + json[f].facetType + "_" + json[f].facetValue.replace(/ /g, '') + "' value= '" + json[f].facetID + "' />";
                            $('#' + facetName + '-' + json[f].facetType.toLowerCase() + '-facet').append('<li>' + cb + json[f].facetValue + ' (' + json[f].facetCount + ' ' + facetName + ')</li>');
                        }
                    }

                }

                $('#' + facetName + '-date-facet li').filter(function (index) { return (index >= 10); }).css('display', 'none');
                $('#' + facetName + '-place-facet li').filter(function (index) { return (index >= 10); }).css('display', 'none');
                $('#' + facetName + '-type-facet li').filter(function (index) { return (index >= 10); }).css('display', 'none');

                if (window.location.pathname.indexOf(facetName.charAt(0).toUpperCase() + facetName.slice(1)) != -1) {
                    $('#' + facetName + '-date-facet').show();
                    $('#' + facetName + '-place-facet').show();
                    $('#' + facetName + '-type-facet').show();
                }

                $('#date-facet-buttons').show();
                $('#place-facet-buttons').show();
                $('#type-facet-buttons').show();
                $('#facet-panel .spinner').hide();
            } else {
                $('#' + facetName + '-date-facet').hide();
                $('#' + facetName + '-place-facet').hide();
                $('#' + facetName + '-type-facet').hide();
                $('#facet-panel').hide();
            }
        },
        toggle_facets: function (facetDivName, fun) {

            var IorC;
            if ($('#items-' + facetDivName + '-facet').is(":visible")) {
                IorC = 'items'
            } else {
                IorC = 'collections'
            }

            if (fun == 'clear') {

                $('#' + facetDivName + '-facet :checkbox').removeAttr('checked');

            } else if (fun == 'more') {

                $('#' + IorC + '-' + facetDivName + '-facet li').show();
                $('#more-' + facetDivName).hide();
                $('#less-' + facetDivName).show();

            } else if (fun == 'less') {

                $('#' + IorC + '-' + facetDivName + '-facet li').filter(function (index) { return (index >= 10); }).css('display', 'none');
                $('#more-' + facetDivName).show();
                $('#less-' + facetDivName).hide();
            }
        },
        getFacets: function (facetUrl) {
            //facetUrl is the searched url

            var params = $.deparam.querystring(facetUrl);
            //params['iStartRecord'] = 1;
            //params['iMaximumRecord'] = 10;
            var dateUrl = $.param.querystring(serviceUrl + 'Facets/Dates?', params);
            var placeUrl = $.param.querystring(serviceUrl + 'Facets/Place?', params);
            var typeUrl = $.param.querystring(serviceUrl + 'Facets/Types?', params);
            $('#dateFacet').html('');
            $('#placeFacet').html('');
            $('#typeFacet').html('');
            fac(dateUrl, 'dates', '#dateFacet');
            fac(placeUrl, 'places', '#placeFacet');
            fac(typeUrl, 'types', '#typeFacet');

            function fac(facURL, name, appndDiv) {
                //facURL: the url to search the service with
                // name: the name of the facet
                // objs: facet object to merge into the existing params
                // appndDiv: the facet div to append to

                $.getJSON(facURL, function (json) {
                    if (json) {
                        if (json.totalRecords > 0 && json.errors.length < 1) {
                            for (var d = 0; d < json.itemList.length; d++) {
                                //get the existing params
                                var facParams = $.deparam.querystring(facetUrl), objs = {};

                                //set the appropiate vars
                                var text = json.itemList[d].text, id = json.itemList[d].facetid;

                                if ($('#facet' + name + id).length == 0) {
                                    //if facet already has a value then add the new facet after the old and an ',' then merge and clean params
                                    if (facParams[name]) {
                                        objs[name] = facParams[name] + ',' + id;
                                    } else {
                                        objs[name] = id;
                                    }
                                    $.extend(facParams, objs);
                                    facParams = cleanParams(facParams);

                                    var url = $.param.querystring('/ResultList/Items/1?', facParams);
                                    var fun = 'dcc.facetOnClick(this.href,"' + text.split('(')[0] + '",' + id + ',"' + name + '");return false;'
                                    var button = $("<li id='facet" + name + id + "'><a href='" + url + "'onclick='" + fun + "'>" + text + "</a></li>");
                                    $('#' + name + 'Spinner').hide();
                                    $(appndDiv).append(button);
                                }
                            }
                        } else {
                            if (json.errors) {
                                $('#' + name + 'Spinner').hide();
                                for (e in json.errors) {
                                    $(appndDiv).append('<div style="margin-left: 5px">' + json.errors[e] + '</div>');
                                }
                            } else {
                                $('#' + name + 'Spinner').hide();
                                $(appndDiv).append('<div style="margin-left: 5px">No ' + name + ' found</div>');
                            }
                        }
                    } else {
                        $('#' + name + 'Spinner').hide();
                        $(appndDiv).append('<div style="margin-left: 5px">No ' + name + ' found</div>');
                    }
                }).complete(function () {
                    if (name == 'types') {
                        dcc.secondarySources();
                    }
                });
            }
        },
        facetUpdate: function (facDivName) {
            dcc.replaceHist();

            var IorC, displayDivName = facDivName.charAt(0).toUpperCase() + facDivName.slice(1);
            if ($('#items-' + facDivName + '-facet').is(":visible")) {
                IorC = 'items';
            } else {
                IorC = 'collections';
            }
            var currentParams = $.deparam.querystring(), newUrl = '/ResultList/' + IorC.charAt(0).toUpperCase() + IorC.slice(1) + '/1';
            var facetParams = {}, count = 0;
            var baseLiID = IorC + facDivName + '-facet-searched';
            $('#field-query-ul').append('<li id="' + baseLiID + '">' + IorC.charAt(0).toUpperCase() + IorC.slice(1).replace('s', '') + ' ' + displayDivName + 's: <ul></ul></li>');
            $("#" + IorC + '-' + facDivName + "-facet input[type='checkbox']:checked").each(
	            function () {
	                //var val = this.value;
	                if (currentParams[IorC.charAt(0) + facDivName + 's']) {
	                    currentParams[IorC.charAt(0) + facDivName + 's'] = currentParams[IorC.charAt(0) + facDivName + 's'] + ',' + this.value;
	                    facetParams[baseLiID] = currentParams[IorC.charAt(0) + facDivName + 's'] + ',' + this.value;
	                } else {
	                    currentParams[IorC.charAt(0) + facDivName + 's'] = this.value;
	                    facetParams[baseLiID] = this.value;
	                }
	                //currentParams[IorC.charAt(0) + facDivName] = currentParams[IorC.charAt(0) + facDivName] + ',' + this.value

	                newUrl = $.param.querystring(newUrl, currentParams);

	                var rmvFac = 'dcc.removeFacet("' + facDivName + '","' + this.value + '","' + IorC + '");return false;'
	                //var facLi = $('<li id="' + IorC + facDivName + '">' + this.id.replace('_', ': ') + ' <a href="" onclick=\'dcc.removeFacet("");return false;\'>Remove</a></li>');
	                var facLi = $('<li id="' + facDivName + this.value + '">' + this.id.replace(displayDivName + '_', '') + " <a href='' onclick='" + rmvFac + "'>[x]</a></li>");
	                facLi.hide().appendTo('#' + baseLiID + ' ul').fadeIn(1000);
	                count++;
	            });

            if (count > 1) {
                var rmvAllFunc = 'dcc.removeFacet("' + facDivName + '","-facet-searched","' + IorC + '");return false;'
                $('#' + baseLiID + ' ul').append("<li><a href='' onclick='" + rmvAllFunc + "'>Remove All</a></li>").fadeIn(1000);
            }
            $('#' + IorC + '-date-facet').html('');
            $('#' + IorC + '-place-facet').html('');
            $('#' + IorC + '-type-facet').html('');
            $('#' + facDivName + '-facet').hide();
            $('#' + baseLiID + ' ul li').show();
            $("#" + IorC.slice(0, IorC.length - 1) + "-matches").html("");
            $("." + IorC.slice(0, IorC.length - 1) + "Description").html("");
            $("." + IorC.slice(0, IorC.length - 1) + "Pager").html("");
            $("." + IorC.slice(0, IorC.length - 1) + "Spinner").show();
            $(".facetSpinner").show();
            //$(".facetSpinner").not(":#" + facDivName + "-facet .facetSpinner").show();

            dcc.runService(newUrl, IorC.slice(0, IorC.length - 1), true);
            history.pushState({ content: $("#content").html() }, newUrl, newUrl);
        },
        removeFacet: function (facCat, facVal, facIorC) {
            //facCat: the facet category that has been posted to the Searched Terms panel
            //facVal: Facet value to be deleted - can be '-facet-searched' for all facets in 
            //Use the name and id of the facet to get the li and remove it


            //dcc.toggle_facets(facName, 'clear');
            //$('#' + facName + '-facet').show();
            var par = $.deparam.querystring();
            if (facVal == '-facet-searched') {
                var facLi = $('#' + facIorC + facCat + facVal);
                facLi.fadeOut().remove();
                par[facIorC.charAt(0) + facCat + 's'] = "";
                //defaults.search.items[facIorC.charAt(0) + facCat + 's'] = "";
            } else {
                var facLi = $('#' + facCat + facVal);
                facLi.fadeOut().remove();
                var f = par[facIorC.charAt(0) + facCat + 's'].split(',');
                for (s in f) {
                    if (f[s] == facVal) {
                        f[s] = null;
                    }
                }
                var d = [];
                for (m in f) {
                    if (f[m]) {
                        d.push(f[m]);
                    }
                }
                f = d;
                if (jQuery.isEmptyObject(f)) {
                    facLi = $('#' + facIorC + facCat + '-facet-searched');
                    facLi.fadeOut().remove();
                    par[facIorC.charAt(0) + facCat + 's'] = "";
                } else {
                    par[facIorC.charAt(0) + facCat + 's'] = f.join(',');
                }
            }

            par[facIorC.charAt(0) + 'StartRecord'] = 1;
            par[facIorC.charAt(0) + 'MaximumRecords'] = 10;
            $.extend(defaults.search.items, par);

            //cleanParams will remove any pieces in the object that are empty, null, or undefined
            par = cleanParams(par);

            //get front of the window url and add the cleaned params to it
            var facUrl = '/ResultList/' + facIorC.charAt(0).toUpperCase() + facIorC.slice(1) + '/1'; ;
            facUrl = $.param.querystring(facUrl, par);

            //empty the matches panels, along with the navigation and description
            //show all the spinners and runService with the new url
            $("#" + facIorC.slice(0, facIorC.length - 1) + "-matches").html("");
            $("." + facIorC.slice(0, facIorC.length - 1) + "Description").html("");
            $("." + facIorC.slice(0, facIorC.length - 1) + "Pager").html("");
            $("." + facIorC.slice(0, facIorC.length - 1) + "Spinner").show();
            $("#" + facIorC + '-' + facCat + "-facet").show();
            $("#" + facCat + "-facet").show();
            dcc.runService(facUrl, facIorC.slice(0, facIorC.length - 1), true);

            //push the new url to the window
            history.pushState({ content: $("#content").html() }, facUrl, facUrl);
        },
        updateContent: function (data) {
            //if data is null then do nothing
            if (data == null)
                return;

            //if data has something then replace the middle content of the page with it
            $('#content').html(data.content);
        },
        tabChange: function (tabName) {
            var tabNumber
            if (tabName == 'Items') { tabNumber = 0 } else { tabNumber = 1 }
            var disabledNumber = $("#tabs").tabs('option', 'disabled');

            if (disabledNumber[0] != tabNumber) {
                $('.facet').hide();
                //if (('#' + tabName.toLowerCase().replace('s','') + '-date-facet-searched').length == 0) {
                $('#' + 'date-facet').show();
                $('#' + tabName.toLowerCase() + '-date-facet').show();
                //}
                //if (('#' + tabName.toLowerCase().replace('s', '') + '-place-facet-searched').length == 0) {
                $('#' + 'place-facet').show();
                $('#' + tabName.toLowerCase() + '-place-facet').show();
                //}
                //if (('#' + tabName.toLowerCase().replace('s', '') + '-type-facet-searched').length == 0) {
                $('#' + 'type-facet').show();
                $('#' + tabName.toLowerCase() + '-type-facet').show();
                //}

                //var pageNumb = $('#input[type!=hidden]');
                var newUrl = document.location.href.replace(document.location.pathname, '/ResultList/' + tabName);
                history.replaceState({ content: $('#content').html() }, newUrl, newUrl);
            }
        },
        pushHist: function (url, r) {
            //if the given url
            //if (url == document.location.href) {
            //console.log(url);
            history.pushState({ content: $('#content').html() }, url, url);
            //console.log('push');
            //}
        },
        replaceHist: function () {
            //get the document url and add the new content to it in the cache
            //this is usually done after everything is loaded so when the user
            //uses the arrows the page doesn't have to rerun all of the calls
            //to the service
            var url = document.location.href;
            history.replaceState({ content: $('#content').html() }, url, url);
            //console.log(url);
        },
        secondarySources: function () {
            var ar = ["state", "type", "subject", "collection", "subjectCollection"], cont = true, vars = $.deparam.querystring();
//            for (a in ar) {
//                if ($.inArray(ar[a], vars) > -1) {
//                    cont = false;
//                }
            //            }
            for (a in ar) {
                if (vars[ar[a]]) {
                    cont = false;
                }
            }
            if (cont == true) {
                var secTargets = ["hathi", "googbk", "amer", "jstor", "acse", "scopus"];
                var urlParams = $.deparam.querystring();
                //+ urlParams['keyword'] + urlParams['title'] + urlParams['agent']
                var phrase = urlParams['anywhere'];
                jQuery.each(secTargets, function (n, target) { // for each Secondary Source, call searchaid w/the user's search phrase
                    $('#meta_search_' + target).load("/Service/Browse/secondarySources", { q: phrase, db: target });
                });
            } else {
                $('#metasearch-panel').hide();
            }
        }
    };


} ();

