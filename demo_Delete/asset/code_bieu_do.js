//load thư viện lõi dùng cho vẽ biểu đồ, cần thư viện đc add ở head của html
google.charts.load('current', { packages: ['corechart', 'timeline'] });
$(document).ready(function () { //mẫu này của jquery
  function drawChart(dataValue) {//hàm của google demo, sửa: nhận mảng đầu vào
    var data = new google.visualization.DataTable(); //tạo đối tượng chứa dữ liệu
    data.addColumn('date', 'Thời gian');             //dữ liệu có 2 cột
    data.addColumn('number', 'Nhiệt độ');            //cột trên và cột này
    data.addRows(dataValue);  //add chi tiết dữ liệu đã chuẩn bị trước vào biến data

    var options = {  //options chứa các tham số để google chart biết mà vẽ 
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
    chart.draw(data, options); //vẽ nó vào div#noi-show-bieu-do
  }
  $('#nut-show-bieu-do').click(function () {
    $.post("api.aspx",        //gửi post tới api.aspx
      {
        action: "data_chart", //dữ liệu gửi tới api là action
        sid: 4                //và id của sensor 
      },
      function (data) {       //đợi api xử lý và nhận về json string
        var json = JSON.parse(data);//chuyển string này về obj json
        var arr = [];               //tạo mảng rỗng
        for (var item of json) {    //duyệt từng item trong mảng
          var time = new Date(item.t) //chuyển time string -> time obj
          var value = item.v;         //đây là value của cảm biến
          arr.push([time, value])     //thêm vào phần tử là mảng 2 giá trị
        } //duyệt xong mọi phần tử trong mảng
        drawChart(arr); //chuyển cho hàm như ví dụ của google demo để vẽ
      })
  });
});