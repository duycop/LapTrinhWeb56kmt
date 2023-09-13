<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="default.aspx.cs" 
    Inherits="web_cong._default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cộng 2 số</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            A: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            B: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="A + B" OnClick="Button1_Click" />
            <br />
            <div id="ketqua" runat="server"></div>
        </div>
    </form>
</body>
</html>
