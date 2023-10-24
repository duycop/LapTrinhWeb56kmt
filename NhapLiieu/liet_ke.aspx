<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liet_ke.aspx.cs" Inherits="NhapLiieu.liet_ke" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="asset/bootstrap.bundle.min.js"></script>
    <link href="asset/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="container-fluid">
        <a class="btn btn-primary" href="add.html">Thêm dữ liệu</a>
        <div class="row">
            <div class="col-md-12" id="ketqua">
            </div>
        </div>
    </div>
    <script>
        //trong thân trang: có lấy các biến mà code xử lý đc: json
        var json = <%=  this.json  %>;
        var s = "danh sach sv<table class='table table-hover'>";
        s += "<thead>";
        s += "<th>STT</th>";
        s += "<th>Masv</th>";
        s += "<th>Họ tên</th>";
        s += "<th>Giới thiệu</th>";
        s += "<th>Ảnh thẻ</th>";
        s += "</thead>";
        s += "<body>";
        var STT = 0;
        for (var r of json) {
            s += "<tr>";
            s += "<td>" + (++STT) + "</td>";
            s += "<td>" + (r.masv) + "</td>";
            s += "<td>" + (r.hoten) + "</td>";
            s += '<td style="vertical-align:top">' + (r.gioithieu) + "</td>";
            s += "<td>" + (r.anh_the ? ('<img src="' + r.anh_the + '"/>') : "") + "</td>";
            s += "</tr>";
        }
        s += "</body></table>";
        document.getElementById('ketqua').innerHTML = s;
    </script>
</body>
</html>
