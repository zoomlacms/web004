<%@ page language="C#" autoeventwireup="true" inherits="User_PrintServer_ShowPrint, App_Web_bp2nz3fb" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="hfImg" runat="server" />
    <div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    <div style="height:50px; top:20px">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="保  存" onclick="Button1_Click" />
    </div>
    </form>
    <script type="text/javascript" language="javascript">
        if (document.getElementById("hfImg").value == "") {
            document.getElementById("hfImg").value = opener.document.getElementById("HiddenField1").value;
            window.form1.submit();
        }
    </script>
</body>
</html>
