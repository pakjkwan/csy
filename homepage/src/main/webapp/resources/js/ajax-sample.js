/**
 * 
 */
// Load the Visualization API and the piechart package.
google.load('visualization', '1', {'packages':['corechart']});
  
// Set a callback to run when the Google Visualization API is loaded.
google.setOnLoadCallback(drawChart);
 
function drawChart() {
	alert("띠로리~");
	
	var jsondata ={
		    "cols": [
		             {"id":"","label":"Topping","pattern":"","type":"string"},
		             {"id":"","label":"Slices","pattern":"","type":"number"}
		         ],   
		          
		         "rows": [
		             {"c":[{"v":"Mushrooms","f":null},{"v":3,"f":null}]},
		             {"c":[{"v":"Onions","f":null},{"v":1,"f":null}]},
		             {"c":[{"v":"Olives","f":null},{"v":1,"f":null}]},
		             {"c":[{"v":"Zucchini","f":null},{"v":1,"f":null}]},
		             {"c":[{"v":"Pepperoni","f":null},{"v":2,"f":null}]}
		         ] 
		     }
	
    var jsonData = $.ajax({
        url: JSON.stringify(jsondata),
        dataType:"json",
        async: false
    }).responseText;
     
    // Create our data table out of JSON data loaded from server.
    var data = new google.visualization.DataTable(jsonData);
 
    // Instantiate and draw our chart, passing in some options.
    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, {width: 400, height: 240});
}