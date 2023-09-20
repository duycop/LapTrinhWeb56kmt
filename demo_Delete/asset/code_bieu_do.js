google.charts.load('current', { packages: ['corechart', 'timeline'] });
$(document).ready(function () {
  function drawChart(dataValue) {

    var data = new google.visualization.DataTable();
    data.addColumn('date', 'Thời gian');
    data.addColumn('number', 'Nhiệt độ');

    data.addRows(dataValue);

    var options = {
      title: 'Biểu đồ dữ liệu cảm biến nhiệt độ',
      legend: 'top',
      subtitle: 'Công ty ABC cung cấp dữ liệu',
      curveType: 'function',
      width: 1500,
      height: 500,
      //vAxis: { viewWindow: { min: 0 } } 
    };

    var div_chart = document.getElementById('noi-show-bieu-do');
    var chart = new google.visualization.LineChart(div_chart)

    chart.draw(data, options);
  }

  $('#nut-show-bieu-do').click(function () {
    $.post("api.aspx", {
      action: "data_chart",
      sid: 4
    }, function (data) {
      var json = JSON.parse(data);
      var arr = [];
      for (var item of json) {
        var time = new Date(item.t)
        var value = item.v;
        arr.push([time, value])
      }
      console.log(arr)
      drawChart(arr);
    })
  });
});