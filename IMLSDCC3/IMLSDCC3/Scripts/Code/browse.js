
     
/** @namespace */
var browse = function () {
    //Private Vars
    var serviceURL = '/Service/Browse/';
    //Private Methods

    function drawPager(cat, numb) {
        var pages = ['0-9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
        $('#' + cat.toLowerCase() + '-pager').html('');
        for (p in pages) {
            var pLi = '';
            if (pages[p] == numb) {
                pLi = '<li class="current-page">' + pages[p] + '</a></li>';
            } else {
                pLi = '<li><a class="other-page" href="/BrowseList/' + cat + '/' + pages[p] + '/1/30" onclick="browse.draw(this.href);return false;">' + pages[p] + '</a></li>';
            }
            $('#' + cat.toLowerCase() + '-pager').append(pLi);
        }
    }
    function drawLetterPager(currentPage, total, maxRecords, appendDiv, uri) {
        //var appendDiv = "#" + cat.toLowerCase() + "-results .pager"
        var maxPages = Math.ceil(total / maxRecords), startRecord = ((maxRecords * (currentPage - 1)) + 1), m = (startRecord + maxRecords) - 1;
        if (total <= m) { m = total };

        $(appendDiv).html("");
        $(appendDiv).show();
        $(appendDiv).append('<div>' + startRecord + ' - ' + m + ' of ' + total + '<div>');
        if (currentPage > 1) {
            $(appendDiv).append('<li><a href="' + uri.replace(currentPage, currentPage - 1) + '" onclick="browse.draw(this.href);return false;">&lt;&lt; Previous Page</a></li>');
            for (var i = 6; i >= 1; i--) {
                var pp = currentPage - i
                if (pp <= maxPages && pp > 0) {
                    $(appendDiv).append('<li><a href="' + uri.replace(currentPage, pp) + '" onclick="browse.draw(this.href);return false;">' + pp + '</a></li>');
                };
            };
        };
        if (maxPages > 1) {
            $(appendDiv).append('<li class=\"current-page\">' + currentPage + '</li>');
            // Draw the current page number
        }
        if (currentPage < maxPages) {
            for (var i = 1; i < 6; i++) {
                var np = currentPage + i
                if (np <= maxPages) {
                    $(appendDiv).append('<li><a href="' + uri.replace(currentPage, np) + '" onclick="browse.draw(this.href);return false;">' + np + '</a></li>');
                };
            };
            $(appendDiv).append('<li><a href="' + uri.replace(currentPage, currentPage + 1) + '" onclick="browse.draw(this.href);return false;">Next Page &gt;&gt;</a></li>');

        };
        browse.pushHist();
    }
    function getRoutes(url) {
        var obj = { 'category': '', 'letter': '', 'page': 1, 'maximumRecords': 30 };

        //url = url.replace('http://imlsdcc.grainger.illinois.edu/BrowseList/', '').replace('/BrowseList/', '').split('/');
        url = url.substr(url.indexOf('BrowseList/')).split('/');

        obj.category = url[1];
        obj.letter = (url[2]).replace(/\s/g, "_").replace("%20", "_").replace("/", "-");
        if (url[2]) {
            obj.page = url[3];
        }
        if (url[3]) {
            obj.maximumRecords = url[4];
        }
        return obj;
    }
    function getContents(browseCat, browseLet, page, maxR) {
        //browseCat = the category currently browsing
        //browseLet = the browse letter
        //browseCat = browseCat + 's'
        var url = serviceURL
        var itemObj = ['Titles', 'Subjects', 'Types', 'Dates'];
        var startR = ((maxR * (page - 1)) + 1);
        var resultsPanel = browseCat.toLowerCase() + '-results-panel';
        //if the category is an item then browse item
        //if not then browse collection
        if (jQuery.inArray(browseCat + 's', itemObj) >= 0) {
            url = url + 'Item/' + browseCat + 's?startsWith=' + browseLet + '&startRecord=' + startR + '&maximumRecords=' + maxR;
        } else {
            if (browseCat == 'Collections') {
                url = url + 'Collection/Titles?startsWith=' + browseLet + '&startRecord=' + startR + '&maximumRecords=' + maxR;
            } else if (browseCat == 'Institutions') {
                if (browseLet.substr(0, 6) == "States") {

                    if (browseLet.split('-').length > 1) {

                        url = url + 'Institution/States?state=' + browseLet.split('-')[1].replace("_", "%20") + '&startRecord=' + startR + '&maximumRecords=' + maxR;

                        $('#institutions-selectAnother-state').show();
                    } else {
                        url = url + 'Institution/States?startsWith=&startRecord=' + startR + '&maximumRecords=' + maxR;
                    }

                    resultsPanel = 'institutions-states-results-panel';
                    $('#institutions-browseby li:not(#institutions-browseby-states)').show();
                    $('#institutions-browseby-states').hide();
                } else if (browseLet.substr(0, 5) == 'Types') {
                    
                    if (browseLet.split('-').length > 1) {
                        url = url + 'Institution/Types?type=' + browseLet.split('-')[1].replace("_", "%20").replace("-", "/") + '&startRecord=' + startR + '&maximumRecords=' + maxR;
                        $('#institutions-selectAnother-type').show();
                    } else {
                        url = url + 'Institution/Types?startsWith=&startRecord=' + startR + '&maximumRecords=' + maxR;
                        $('#institutions-selectAnother-type').hide();
                    }
                    resultsPanel = 'institutions-types-results-panel';
                    $('#institutions-browseby li:not(#institutions-browseby-types)').show();
                    $('#institutions-browseby-types').hide();
                } else {
                    url = url + 'Collection/InstitutionNames?startsWith=' + browseLet + '&startRecord=' + startR + '&maximumRecords=' + maxR;
                    $('#institutions-browseby li:not(#institutions-browseby-names)').show();
                    $('#institutions-browseby-names').hide();
                }
            }
        }
        //url = url + browseCat + 's?startsWith=' + browseLet + '&startRecord=' + startR + '&maximumRecords=' + maxR;

        $.getJSON(url, function (data) {
            //drawContents(json, browseCat, browseLet);
            var divId = browseCat + '_' + browseLet + '_' + page;
            var liId = data.startRecord;
            var maxPages = Math.ceil(data.totalRecords / maxR);
            //Initialize the ol and add the pages div to it
            if ($('#' + browseCat + '_' + browseLet).length == 0) {
                $('#' + resultsPanel).append('<ol id="' + browseCat + '_' + browseLet + '" total="' + data.totalRecords + '"></ol>');
            }


            $('#' + browseCat + '_' + browseLet).append('<div id="' + divId + '"></div>');
            if (data.errors.length < 1) {

                drawLetterPager(Number(page), Number(data.totalRecords), Number(maxR), "#" + browseCat.toLowerCase() + "-results .pager", '/BrowseList/' + browseCat + '/' + browseLet + '/' + page + '/' + maxR);

                for (d in data.itemList) {
                    $('#' + browseCat.toLowerCase() + '-browse .spinner').hide();
                    data.itemList[d].uri = (data.itemList[d].uri).replace('/Item/Detail', '/Detail/Item').replace('/Collection/Detail', '/Detail/Collection').replace('Search/Items', 'ResultList/Items/1').replace('Search/Collection/', 'ResultList/Collections/1?').replace('Search/Institution', 'ResultList/Collections/1?');
                    if (browseLet.substr(0, 6) == "States" && browseLet.substr(0, 7) != "States-") {
                        var dHref = '<li id="' + divId + ':' + liId + '"><a href="/BrowseList/Institutions/States-' + data.itemList[d].text + '/1/30" onclick="browse.draw(this.href);return false;">' + data.itemList[d].text + '</a></li>';
                    } else if (browseLet.substr(0, 6) == "Types" && browseLet.substr(0, 7) != "Types-") {
                        var dHref = '<li id="' + divId + ':' + liId + '"><a href="/BrowseList/Institutions/Types-' + data.itemList[d].text + '/1/30" onclick="browse.draw(this.href);return false;">' + data.itemList[d].text + '</a></li>';
                    } else {
                        var dHref = '<li id="' + divId + ':' + liId + '"><a href="' + data.itemList[d].uri + '">' + data.itemList[d].text + '</a></li>';
                    }
                    $('#' + divId).append(dHref);
                    liId = liId + 1;
                }
            } else {
                $('#' + browseCat.toLowerCase() + '-browse .spinner').hide();
                for (e in data.errors) {
                    $('#' + divId).append('<div style="text-align: center">' + data.errors[e] + '</div>');
                }
            }
        }).complete(function () {
            browse.pushHist();
        });
    }

    //Public Methods
    return {
        draw: function (url, searched) {
            if (searched) {
                url = '/BrowseList/' + searched + '/' + $('#' + searched.toLowerCase() + '-search-text').val().replace(' ', '') + '/1/30';
            }
            var routes;
            if (url) {
                routes = getRoutes(url);
            } else {
                routes = getRoutes(document.location.href);
            }
            
            var pageId = '#' + routes.category + '_' + routes.letter + '_' + routes.page;
            $('#center-panel-cushion div:not(#' + routes.category.toLowerCase() + '-browse)').hide();
            $('#' + routes.category.toLowerCase() + '-browse').show();
            $('#' + routes.category.toLowerCase() + '-browse div').show();
            if (routes.category == 'Institutions') {
                $('#' + routes.category.toLowerCase() + '-results ol:not(' + '#' + routes.category + '_' + routes.letter + ')').hide();
                if (routes.letter.substr(0, 6) != 'States' && routes.letter.substr(0, 5) != 'Types') {
                    $('#institutions-search').show();
                    $('#institutions-pager').show();
                } else {
                    $('#institutions-search').hide();
                    $('#institutions-pager').hide();
                }
            } else {
                $('#' + routes.category.toLowerCase() + '-results-panel ol:not(' + '#' + routes.category + '_' + routes.letter + ')').hide();
            }
            $('#' + routes.category + '_' + routes.letter + ' div:not(' + pageId + ')').hide();
            $('#' + routes.category.toLowerCase() + '-results .pager').hide();

            if (routes.category != 'Date' && routes.letter.substr(0, 6) != 'States' && routes.letter != 'Types') {
                drawPager(routes.category, routes.letter);
            }

            if ($(pageId).length == 0) {
                $('#' + routes.category.toLowerCase() + '-browse .spinner').show();

                $('.selectOther').hide();
                getContents(routes.category, routes.letter, routes.page, routes.maximumRecords);
            } else {
                $('#' + routes.category + '_' + routes.letter).show();
                $('.selectOther').hide();
                drawLetterPager(Number(routes.page), Number($('#' + routes.category + '_' + routes.letter).attr('total')), Number(routes.maximumRecords), "#" + routes.category.toLowerCase() + "-results .pager", url);
                if (routes.category == 'Institutions') {
                    if (routes.letter.substr(0, 6) == 'States') {
                        $('#institutions-browseby li:not(#institutions-browseby-' + routes.letter.substr(0, 6).toLowerCase() + ')').show();
                        $('#institutions-browseby-' + routes.letter.substr(0, 6).toLowerCase()).hide();
                        $('#institutions-selectAnother-state').show();
                    } else if (routes.letter.substr(0, 5) == 'Types') {
                        $('#institutions-browseby li:not(#institutions-browseby-' + routes.letter.substr(0, 5).toLowerCase() + ')').show();
                        $('#institutions-browseby-' + routes.letter.substr(0, 5).toLowerCase()).hide();
                        $('#institutions-selectAnother-type').show();
                    } else {
                        $('#institutions-browseby li:not(#institutions-browseby-names)').show();
                        $('#institutions-browseby-names').hide();
                    }
                }
                $('#' + routes.category.toLowerCase() + '-browse .spinner').hide();
                $('#' + routes.category.toLowerCase() + '-results .pager').show();
                $(pageId).show();
            }

            browse.pushHist(url);
        },

        pushHist: function (url, from) {
            if (url == 'undefined' || url == null || url.length == 0) {
                url = document.location.href;
            }
            if (url == document.location.href) {
                history.replaceState({ content: $('#content').html() }, url, url);
            } else {
                history.pushState({ content: $('#content').html() }, url, url);
            }
        }
    };


} ();