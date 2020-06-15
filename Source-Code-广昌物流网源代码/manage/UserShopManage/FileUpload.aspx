<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.FileUpload, App_Web_tkmlrnn4" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>图片上传</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 305px;
        }
        .style2
        {
            width: 86px;
        }
    </style>
</head>
<body class="tdbg">
    <form id="form1" runat="server">
    <div class="tdbg">
       <table style="height: 100%; border: 0; width: 100%" runat="server" id="uppp">
            <tr class="tdbg">
                <td valign="top" class="style1" >
                  <asp:FileUpload ID="fileupload" runat="server" Width="220px" /><asp:Button ID="uploadok" runat="server"
        Text="上传" OnClick="uploadok_Click" /> 
                </td>
                 <td valign="top" class="style2" >
                 是否上传水印：
                  </td>
                 <td valign="top" >
                  <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" 
                         Height="16px">
                         
                        <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                        </asp:RadioButtonList>
                </td>
                </tr>
       </table>
  
                       
    </div>
    </form>
</body>
</html>
