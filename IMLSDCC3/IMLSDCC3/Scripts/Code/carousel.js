//Scolling Featured Div for the DPLA front page.
//Contact: Peter Organisciak - organis2@illinois.edu

var randomSort = true; //change to false to keep items from shuffling

//The below variable is an array of objects that become the carousel items.
// Note that description can include full HTML, qhile Title is text-only.
var featured = [
        {
            "title":
                "Abraham Lincoln, Slavery, and the Civil War: A Collection of Digitized Books",
            "description":
                "Biographies of and writings by Abraham Lincoln and his contemporaries; works pertaining to slavery in the United States and to the American Civil War. The collection is a subset of the University of Illinois Digitized Books Collection.",
            "url":
                "Detail/Collection/70928",
            "imageURL":
                "http://gita.grainger.uiuc.edu/thumbnails/thumbnail.aspx?identifier=oai:oca.ratri.grainger.uiuc.edu:abrahamlincoln00shar_marc&format=thumbnail"
        },
        {
            "title": "Nickell Collection of Dr. R.V. Pierce Medical Artifacts",
            "description": "Snake-oil items, quack medical devices, and patent-medicine artifacts by Dr. R.V. Pierce (1840-1914).",
            "url": "Detail/Collection/81277",
            "imageURL": "http://gita.grainger.uiuc.edu/thumbnails/thumbnail.aspx?identifier=oai:www.wnylegacy.org:ZCQ001/6"
        },
        {
            "title": "Ridgway Brothers: Explorers, Scientists, and Illustrators",
            "description": "The artwork, correspondence, and research of the Ridgway brothers, John and Robert, late nineteenth century naturalists and illustrators of the American West.",
            "url": "Detail/Collection/81174",
            "imageURL": "http://gita.grainger.uiuc.edu/thumbnails/thumbnail.aspx?identifier=oai:digital.lib.usu.edu:Ridgeway/1241"
        },
        {
            "title": "Summons to Comradeship: World War I and II Posters",
            "description": "Posters from government, commercial, and charitable organizations covering topics such as veterans' benefits, war bonds and loans, military recruitment and morale, civil defense, industrial production, freedom and loyalty campaigns, international welfare organizations, and prices and rationing.",
            "url": "Detail/Collection/2395",
            "imageURL": "http://gita.grainger.uiuc.edu/thumbnails/thumbnail.aspx?identifier=oai:digital.lib.umn.edu:msp03956&format=thumbnail"
        },
        {
            "title": "King County Snapshots",
            "description": "King County Snapshots presents King County, Washington, through 12,000 historical images carefully chosen from twelve organizations' collections. These catalogued 19th and 20th century images portray people, places, and events in the county's urban, suburban, and rural communities.",
            "url": "Detail/Collection/2384",
            "imageURL": "http://gita.grainger.uiuc.edu/thumbnails/thumbnail.aspx?identifier=oai:content.lib.washington.edu:imlswrvm/106&format=thumbnail"
        }
    ];

if (randomSort === true) {featured.sort(function () { return 0.5 - Math.random(); }); }

$(document).ready(function () {
    /*
    
    POPULATE #FEATURED DIV WITH CONTENT
    
    */
    featuredList = $("<ul>").width(featured.length * 800).appendTo("#featured");
    $.each(featured, function (index, value) {

        featuredItem = $("<li class='featured-item'>").appendTo(featuredList);
        $("<a>")
            .css("color", "white")
            .attr("href", value.url)
            .append(
                $("<img class='frame rotate featured-image'>").attr("src", value.imageURL)
            )
            .appendTo(featuredItem);

        featuredItemDetails = $("<div class='details'>").appendTo(featuredItem);

        $("<h1>")
            .append(
                $("<a>")
                    .css("color", "white")
                    .attr("href", value.url)
                    .text(value.title)
            )
            .appendTo(featuredItemDetails);

        $('<p class="description">')
            .html(value.description)
            .appendTo(featuredItemDetails);
    });

    //A bit of kung-fu required because images size isn't available on $(document).ready(), b/c they're not yet loaded at this point
    //
    $('img.featured-image')
        .load(function () {
            w = $(this).width();
            if (w > 163) {
                $(this).width(164);
                w = 163;
            }
            $(this).css("left", 180 - w - 10);
            return false; // cancel event bubble
        })
        .each(function () {
            // trigger events for images that have loaded,
            // other images will trigger the event once they load
            if (this.complete && this.naturalWidth !== 0) {
                $(this).trigger('load');
            }
        });


    /*
    
    ADD VERTICAL SCROLLING
    
    */
    var scrollPage = 1,
        maxPage = featured.length;

    /*Hide scrollbar (done with javascript so that without it's still usable)*/
    $("#featured").css("overflow", "hidden");

    /*Scroll Featured Carousel*/
    $("#featured").bind("nextPage", function () {
        scrollPage = scrollPage + 1 <= maxPage ? scrollPage + 1 : 1;
        $(this).trigger("goToPage", [scrollPage]);
    });
    $("#featured").bind("prevPage", function () {
        scrollPage = scrollPage - 1 >= 1 ? scrollPage - 1 : maxPage;
        $(this).trigger("goToPage", [scrollPage]);
    });
    $("#featured").bind("goToPage", function (event, param1) {
        $("#featured").animate({ scrollLeft: (param1 - 1) * 800 }, 500);
    });

    $(".left-arrow").click(function () {
        $("#featured").trigger("prevPage");
    });

    $(".right-arrow").click(function () {
        $("#featured").trigger("nextPage");
    });
});
