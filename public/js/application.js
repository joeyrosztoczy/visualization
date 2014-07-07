$(document).ready(function() {
    var svg = d3.select("svg");
    var circle = svg.selectAll("circle").data([32, 57, 112, 293])
    var circleEnter = circle.enter().append("circle");
    circleEnter.attr("cy", 60);
    circleEnter.attr("cx", function(d, i) {
        return i * 100 + 30;
    });
    circleEnter.attr("r", function(d) {
        return Math.sqrt(d);
    });
    circle.style("fill", "steelblue");
    circle.attr("r", 30);
    circle.data([32, 57, 112]);
    circle.attr("r", function(d) {
        return Math.sqrt(d);
    });
    circle.attr("cx", function(d, i) {
        return i * 100 + 30;
    });
    // send an HTTP DELETE request for the sign-out link
    $('a#sign-out').on("click", function(e) {
        e.preventDefault();
        var request = $.ajax({
            url: $(this).attr('href'),
            type: 'delete'
        });
        request.done(function() {
            window.location = "/";
        });
    });

});
