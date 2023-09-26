$(document).ready(function(){
	$("#nut-xem").click(function(){
		$.post("api.php",
		{
			action: "xem_diem",
			masv: $("#masv").val()
		},
		function(data,status){
			//console.log([data,status]) //test done đúng ý
			$("#kq").html(data)
		});
	});
});