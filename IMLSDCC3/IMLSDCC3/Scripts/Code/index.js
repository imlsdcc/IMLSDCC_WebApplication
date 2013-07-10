/**
     * @fileOverview Various functions for calling and displaying IMLS DCC 
     		results. Requires JQuery BBQ for hash and deparam functions.
     		Read JQuery BBQ documentation at:
     		http://benalman.com/projects/jquery-bbq-plugin/.
     * @author Peter Organisciak
     */
     
/** @namespace */
var index = function () {
	//Private Vars
	var serviceURL = '/Service/'; //http://imlsdcc.grainger.illinois.edu
	//Private Methods
    
    function fetchFeatured () {
        $.get(serviceURL + 'Browse/featuredContent', 'html', function(data) {
            $('#DataList1').empty();
            $('#DataList1').append(data);
        })
	}

	//Public Methods
return {    
        featuredContent: function() {
            fetchFeatured();
            setInterval(function() {fetchFeatured()}, 35000);

        },

        stats: function() {
            //Service call is 'Server/Browse/Stats?portalcode=16'
            // portalcode is the code for imlsdcc
            //For testing the url should be the file: 'Scripts/Code/TempJSON/Stats.js'
            $.getJSON(serviceURL +'Browse/Stats', function (json) {                
                $('#statsItems').append(addCommas(json.itemCount))
                $('#statsColl').append(addCommas(json.collectionCount))
                $('#statsInstit').append(addCommas(json.institutionCount))
            });
            
            function addCommas(nStr) {
                nStr += '';
                var x = nStr.split('.');
                var x1 = x[0];
                var x2 = x.length > 1 ? '.' + x[1] : '';
                var rgx = /(\d+)(\d{3})/;
                while (rgx.test(x1)) {
                    x1 = x1.replace(rgx, '$1' + ',' + '$2');
                }
                return x1 + x2;
            }
        
        },

        subjectBrowse: function() {
            
            $.getJSON(serviceURL +'Browse/subjectBrowse', function (json) {
                
                //subjectBrowse-list
                for (var i = 0; i < json.subjectCount.length; i++) {
                    var li = '<li><a href="ResultList/Collections/1?subjectCollection='+ json.subjectCount[i].subjectName +'">' + json.subjectCount[i].subjectName + ' ('  + json.subjectCount[i].subjectCount + ' Collections)</a></li>';
                    $('#subjectBrowse-list').append(li);
                }


            });
        
        
        },
    
    };
	

}();