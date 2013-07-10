var dateBrowse = [
    {
        range: "Pre- 1800",
        count: 26852,
        facets: [21]
    },
    {
        range: "1800- 1849",
        count: 25330,
        facets: [22, 23, 24, 25, 26, 43]
    },
    {
        range: "1850- 1899",
        count: 147593,
        facets: [27, 28, 29, 30, 31, 44]
    },
    {
        range: "1900- 1929",
        count: 363990,
        facets: [32, 33, 34, 46]
    },
    {
        range: "1930- 1949",
        count: 204891,
        facets: [35, 36]
    },
    {
        range: "1950- 1969",
        count: 115367,
        facets: [37, 38]
    },
    {
        range: "1970- 1999",
        count: 58519,
        facets: [39, 40, 41, 47]
    },
    {
        range: "2000- Present",
        count: 1881,
        facets: [42]
    }
];

function loadDateBrowse(divId) {
    //Get the maximum value of the key counts
    maxDateValue = d3.max(dateBrowse, function (x) { return x.count; });

    cellColor = d3.scale.linear()
        .domain([0, maxDateValue])
        .interpolate(d3.interpolateRgb)
        .range(["#13CAF2", "#074B5A"]);

    //Update
    var yearTable = d3.select(divId)
        .append("table").style("border-collapse", "collapse")
        .append("tr")
        .selectAll(".yearRange")
	    .data(dateBrowse);


    //Enter
    yearTable.enter().append("td").attr("class", "year-cell")
        .style("background-color", function (d) { return cellColor(d.count); })
	    //.style("border-color", function (d) { return d3.rgb(cellColor(d.count)).darker(); })
	    .style("border", "none")
        .append("a")
        .attr("href", function (d) { return "" + location.protocol + "//" + location.host + "/ResultList/Items/1?date=" + d.facets.join(',') }) //+ d.facets.join(",") }) // + "&bph=" + d.range; })
        .style("color", "white")
	    .text(function (d) { return d.range; });

    //Exit
    yearTable.exit().remove();
}

function removeDateBrowse(divId) {
    $("" + divId + " table").remove();
}

$(document).ready(function () {
    loadDateBrowse("#browse-by-date"); 
});



