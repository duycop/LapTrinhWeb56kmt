<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abc.aspx.cs" Inherits="web_iot_gui.abc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="asset/jquery.min.js"></script>
    <meta hello="tacke" />
    <style>
        .phan_tu{
            color:green;
        }
        .phan_tu:hover{
            color:red;
        }
    </style>
</head>
<body>
    xin chào các bạn
    <ol runat="server" id="tacke">hello all</ol>

    <script>
        $(document).ready(function () {
            $('.phan_tu').click(function () {

                var txt = $(this).text();
                alert(txt);
            });
        });
    </script>
</body>
</html>
