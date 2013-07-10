/**
    
     * @author Jordan Vannoy
     */
     
/** @namespace */
var detail = function () {
	//Private Vars
	var serviceURL = '/Service/'; //'http://imlsdcc.grainger.illinois.edu/Service/';
	
    //Private Methods
    //drawDetails recieves the json from getView and outputs the html to the Item.ascx page
    drawDetails = function (json){
                    //$('#new-item-title').html(json.title);
                    //$('#original-url').append('<a href=""> See Original <img id="ExternalLink" src="Images/externallinks.gif" alt="External Link" name="ExternalLink"></a>');
//                    var img = new Image();
//                    img.class = 'details-image';
//                    img.src = json.thumbnail;
//                    img.onerror = function () { alert(this.src); }
        $('#details-container').html('');
        $('#more-panel ul').html('');
        if($('#detailTab').html() == 'Item'){
            //Item Details
            //Create the skeleton for the Item Details
            $('#details-container').append('<h1 id="new-item-title">'+json.title+'</h1><br/>')
                .append('<p id="original-url"><a href="'+ json.isavailableat +'" target="_blank"> See Original <img id="ExternalLink" src="../../Images/externallinks.gif" alt="External Link" name="ExternalLink"></a></p>');
            $('#details-container').append('<ul>')
                .append('<div class="right"><img class="details-image" src="'+ json.thumbnail) //'" onerror="alert(\'The image could not be loaded.\')"/></div>')
                .append('<h3>isPartOf</h3>').append('<p>'+ json.isPartOf +'</p>')
                .append('<h3>Creator</h3>').append('<p>'+ json.creator +'</p>')
                //.append('<h3>Contributor</h3>').append('<p>'+ json.contributor +'</p>')
                .append('<h3>Type</h3>').append('<ul id="detailItemTypes"></ul>')
                .append('<h3>Date</h3>').append('<p>'+ json.dateof +'</p>')
                .append('<h3>Publisher</h3>').append('<p>'+ json.publisher +'</p>')
                .append('<h3>Language</h3>').append('<p>'+ json.language +'</p>')
                .append('<h3>Format</h3>').append('<p>'+ json.format +'</p>')
                .append('<h3>Description</h3>').append('<p>'+ json.description +'</p>')
                .append('<h3>Subject</h3>').append('<p id="detailItemSubjects"></p>')
                .append('<h3>Relation</h3>').append('<p>'+ json.relation +'</p>')
                .append('</ul>');
            $('#more-panel ul').append('<li>Titles Like <a href="/ResultList/Items/1?title='+json.title+'">'+json.title+'</a></li>');
            $('#more-panel ul').append('<li>Creators Like <a href="/ResultList/Items/1?agent='+json.creator+'">'+json.creator+'</a></li>');
            //$('.right').append(img);
            //Deal with the lists
            drawLists(json.type,'#detailItemTypes');
            for(s=0; s < json.subject.length; s++){  
                $('#detailItemSubjects').append(json.subject[s] + ',');
                $('#more-panel ul').append('<li>Subjects Like <a href="/ResultList/Items/1?anywhere='+json.subject[s]+'">'+json.subject[s]+'</a></li>');
            }
            detail.collectionDescription(json.cid);
            dcc.replaceHist();

        } else {
            //Collection Details
            //Create the skeleton of the Collection Details
                        
            $('#details-container').append('<h1 id="new-item-title">'+json.title+'</h1><br/>')
                .append('<p id="original-url"><a href="'+ json.isavailableat +'" target="_blank"> See Original Collection <img id="ExternalLink" src="../../Images/externallinks.gif" alt="->" name="ExternalLink"></a></p>');
            $('#details-container').append('<ul>')
                .append('<h3>Collection Description</h3>').append('<p>'+ json.description +'</p>')
                .append('<h3>Subjects</h3>').append('<ul id="deatilColSubjects"></ul>')
                .append('<h3>GEM Subjects</h3>').append('<ul id="detailColGEMSubjects"></ul>')
                .append('<h3>Geographic Coverage</h3>').append('<ul id="detailColGeo"></ul>')
                .append('<h3>Time Period</h3>').append('<ul id="detailColTime"></ul>')
                .append('<h3>Objects Represented</h3>').append('<ul id="detailColObj"></ul>')
                .append('<h3>Format</h3>').append('<ul id="detailColFormat"></ul>')
                .append('<h3>Audience</h3>').append('<ul id="detailColAud"></ul>')
                .append('<h3>Interaction With Collection</h3>').append('<ul id="detailColInter"></ul>')
                .append('<h3>Copyright & IP Rights</h3>').append('<ul id="detailColCopy"></ul>')
                .append('<h3>Size</h3>').append('<ul id="detailColSize"><ul></ul></p>')
                .append('<h3>Frequency Of Additions</h3>').append('<ul id="detailColFreq"></ul>')
                .append('<h3>Supplementary Materials</h3>').append('<ul id="detailColSupp"></ul>')
                .append('<h3>Hosting Institution</h3>').append('<ul id="detailColHost"></ul>')
                .append('<h3>Contributing Institution</h3>').append('<ul id="detailColContrib"></ul>')
                .append('</ul>');

            //For all of the lists pass them and their div to the function drawLists()
            drawLists(json.subject,'#deatilColSubjects');
            drawLists(json.geographic,'#detailColGeo');
            drawLists(json.timeperiod,'#detailColTime');
            drawLists(json.objectsrepresented,'#detailColObj');
            drawLists(json.format,'#detailColFormat');
            drawLists(json.audience,'#detailColAud');
            drawLists(json.interactivity,'#detailColInter');
            drawLists(json.copyright,'#detailColCopy');
            drawLists(json.size,'#detailColSize');
            drawLists(json.frequency,'#detailColFreq');
            drawLists(json.supplementary,'#detaillColSupp');
            drawLists(json.hosting,'#detailColHost');
            drawLists(json.contributing,'#detailColContrib');

            //This is a special case with a list within a list so don't send it to the function
            for(i=0; i < json.GEMsubjectlist.length;i++){  
                $('#detailColGEMSubjects').append('<li>'+json.GEMsubjectlist[i].gemtop +'<ul></ul></li>');
                for(g=0; g < json.GEMsubjectlist[i].gemlist.length;g++){
                    $('#detailColGEMSubjects li ul').append('<li>'+ json.GEMsubjectlist[i].gemlist[g] +'</li>');
                }
            }

            //Add the link to search the items in the collection
                $('#itemsInCollection-panel').append('<a href="/ResultList/Items/1?collections='+$('#detailNumber').html()+'">View all '+ json.size[0] +' items from this collection</a>');
            dcc.replaceHist();
        }
    },

    //drawLists recieves the json list and the corresponding div and loops through to output html to the div
    drawLists = function(field, div) {
        for(i=0; i < field.length;i++){ 
            if(field[i]){
                $(div).append('<li>'+ field[i] + '</li>');
            }
        }
    };

    
	//Public Methods
return {    
        //getView runs when Item.ascx is rendered. It takes the private var serviceURL and gets the json from
        //the service
        
        getView: function() {
            $('#details-container').html('');
            if( $('#detailTab').html() == 'Collection'){
                $('#collection-description').hide();
                $('#more-panel').hide();
                $('#social-panel-links').hide();
                $('#itemsInCollection-panel').show();
            } else {
                $('#itemsInCollection-panel').hide();
                $('#collection-description').show();
                $('#more-panel').show();
                $('#social-panel-links').show();
            }
           $.getJSON(serviceURL + $('#detailTab').html() + '/Detail/' + $('#detailNumber').html(), function (json) {
	            if(json.errors.length < 1){
                        drawDetails(json)
                } else {
                    //Deal with errors
                }

	        }).complete( function () {
                dcc.replaceHist()
            });

        },
        collectionDescription: function(cid){

            $('#collection-description').html('');
            $.getJSON( serviceURL + 'Collection/Detail/' + cid, function(json){
                var url = '/Detail/Collection/' + cid;
                $('#collection-description').append('<p id="colLink"><strong>This item is part of the collection </strong></p>');
                var button = $("<a href='" + url + "'> " + json.title + "</a>")
						    .click(function () {
                                
                                $('#detailTab').html('Collection')
                                $('#detailNumber').html(cid)
                                history.pushState({ content: $('#content').html() }, url, url);
						        detail.getView();
						        return false;
						    });
                $('#colLink').append(button);
                $('#collection-description').append('<p>' + json.description + '</p>');
                $('#collection-description').append('<p><a href="/ResultList/Items/1?collections='+ cid +'">View all ' + json.size[0] + ' items from this collection</a></p>');
            dcc.replaceHist();
            });
        },
    };
	

}();