<%@ page language="C#" autoeventwireup="true" inherits="OnlineService_ModifyName, App_Web_31ra2cfh" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改呢称</title>
<style type="text/css">
body { margin-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; font-size: 9pt; }
#cont { height: 134px; }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-top:50px; padding:5px;" align="center">
    呢称:<asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
    <asp:Button ID="btn" runat="server" Text="修改" onclick="btn_Click" />
    <br />(留空则不修改)
    </div>
    </form>
</body>
</html>
