﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Commons.UserUpload, App_Web_i0bwp2eb" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>上传文件</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/MasterPage.css" type="text/css" rel="stylesheet" />
    <script src="Common.js" type="text/javascript"></script>

    <style type="text/css">
        .style1
        {
            width: 314px;
        }
    </style>
   
</head>
<body class="tdbg">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <table style="height: 100%; border: 0; width: 100%">
        <tr class="tdbg">
            <td valign="top" class="style1">
                <asp:FileUpload ID="FupFile" runat="server" />
                <asp:Button ID="BtnUpload" runat="server"
                    Text="上传" OnClick="BtnUpload_Click" Height="21px" Width="47px"/>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="ValFile" runat="server" ErrorMessage="请选择上传路径" ControlToValidate="FupFile"></asp:RequiredFieldValidator><asp:Label
                    ID="LblMessage" runat="server" ForeColor="red" Text=""></asp:Label>
            </td>
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </tr>
    </table>
    </form>
</body>
</html>
