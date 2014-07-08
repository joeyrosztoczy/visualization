$(document).ready(function(){
	var map = L.map('map').setView([33.45, -112.066], 10);
	console.log(map);

	L.tileLayer('http://{s}.tiles.mapbox.com/v3/thebrofessor.inbhh16g/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
    maxZoom: 18
}).addTo(map);
});