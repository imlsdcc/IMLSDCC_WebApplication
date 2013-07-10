//Number of collections per state "State Name": State Collection Count
var data = {};  
//= {
//"Alabama": 3,   "Arizona": 84,  "Arkansas": 1, "California": 131, "Colorado": 7, "Connecticut": 5, "Delaware": 1, "Florida": 20, "Georgia": 37, "Hawaii": 6, "Idaho": 17, "Illinois": 256, "Indiana": 4, "Iowa": 46, "Kansas": 4, "Kentucky": 4, "Louisiana": 92, "Maine": 4, "Maryland": 50, "Massachusetts": 21, "Michigan": 29, "Minnesota": 13, "Mississippi": 1, "Missouri": 12, "Montana": 2, "Nebraska": 31, "Nevada": 17, "New Jersey": 3, "New Mexico": 28, "New York": 64, "North Carolina": 17, "Ohio": 51, "Oklahoma": 17, "Oregon": 4, "Pennsylvania": 7, "Puerto Rico": 1, "Rhode Island": 1, "South Carolina": 182, "Tennessee": 8, "Texas": 7, "Utah": 70, "Virgin Islands": 5, "Virginia": 5, "Washington": 7, "West Virginia": 2, "Wisconsin": 10, "Wyoming": 2, "Washington, DC": 196, "Alaska": 3
//}

//Facet number reference "State Name": State ID
var stateReference = {};   
//= {
//    "[Outside USA]": 50, "Alabama": 51, "Arizona": 53, "Arkansas": 54, "California": 55, "Colorado": 56, "Connecticut": 57, "Delaware": 58, "Florida": 59, "Georgia": 60, "Hawaii": 61, "Idaho": 62, "Illinois": 63, "Indiana": 64, "Iowa": 65, "Kansas": 66, "Kentucky": 67, "Louisiana": 68, "Maine": 69, "Maryland": 70, "Massachusetts": 71, "Michigan": 72, "Minnesota": 73, "Mississippi": 74, "Missouri": 75,  "Montana": 76,  "Nebraska": 77,  "Nevada": 78,  "New Jersey": 79,  "New Mexico": 80,  "New York": 81,  "North Carolina": 82,     "Ohio": 83,     "Oklahoma": 84, "Oregon": 85, "Pennsylvania": 86, "Puerto Rico": 87, "Rhode Island": 88, "South Carolina": 89, "Tennessee": 91, "Texas": 92, "Utah": 93, "Virgin Islands": 94, "Virginia": 95, "Washington": 96, "Washington, DC": 97, "West Virginia": 98, "Wisconsin": 99, "Wyoming": 100
//};


//Service call is 'http://imlsdccweb.grainger.illinois.edu/Service/Browse/mapCollections'
//For testing the url should be the file: 'Scripts/Code/TempJSON/subjectBrowse.js'
$.getJSON('/Service/Browse/mapCollections', function (json) {
    //var sn = json.stateName, sc = json.stateCount, si = json.stateID;
    //var data = { sn: sc };
    //var stateReference = { sn: si };
    for (var i = 0; i < json.statesCount.length; i++) {
        //var sn = json.statesCount[i].stateName, sc = json.statesCount[i].stateCount, si = json.statesCount[i].stateID;
        data[json.statesCount[i].stateName] = json.statesCount[i].stateCount;
        stateReference[json.statesCount[i].stateName] = si = json.statesCount[i].stateID;
    }

}).complete(function (){ 

var svg = d3.select("#visualization").append("svg")
    .attr("width", 470)
    .attr("height", 280)
    .append("g")
      .attr("class", "grey")
      .attr("transform", "scale(0.55)");

d3.json("Scripts/D3/examples/data/us-states.json", function (json) {
    var path = d3.geo.path();

    var sorted = d3.map(data).values().sort(),
        min = sorted[1],
        max = sorted[sorted.length - 1];

    var cellColor = d3.scale.linear()
        .domain([min, max])
        .interpolate(d3.interpolateRgb)
        .range(["#13CAF2", "#074B5A", "#FFFFFF"]);

    svg
    .selectAll("path")
    .data(json.features)
    .enter().append("a")
    .attr("xlink:href", function (d) { if (data[d.properties.name]) { return "http://" + location.host + "/ResultList/Collections/1?state=" + stateReference[d.properties.name] } })

    .append("path")
      .attr("d", path)
      .attr("class", "state")
       .attr("transform", function (d) {
           var centroid = path.centroid(d),
            x = centroid[0],
            y = centroid[1];
           return "translate(" + x + "," + y + ")"
                + "scale(" + Math.sqrt(0.85) + ")"
           //+ "scale(" + Math.sqrt((data[d.properties.name] > max ? max : max - (max - data[d.properties.name]) / 2) / max || 0.1) + ")"
                 + "translate(" + -x + "," + -y + ")";
       })
      .style("fill", function (d) { return cellColor(data[d.properties.name]); })
      .on("mouseover", function (d) {
          $("#state-name").text(d.properties.name);
          $("#state-count").text(function (e) { if (data[d.properties.name]) { return " (" + data[d.properties.name] + " collections)" } });
      })
      .on("mouseout", function (d) {
          $("#state-name").delay(1500).text("your state");
          $("#state-count").delay(1500).text("");
      })
      ;
});
});
