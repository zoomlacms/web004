﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Template.CssEdit, App_Web_kjsxri35" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>样式编辑</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" >
    function goBack() {
        window.history.back();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<a href="CssManage.aspx">风格管理</a>&gt;&gt;<span>样式编辑</span>
</div>
<div class="clearbox"></div>
<table width="100%" cellpadding="2" border="0" cellspacing="1" class="border" align="center">
    <tr class="title">
        <td align="left">
            文件名：<asp:TextBox ID="TxtFilename" class="l_input" runat="server"></asp:TextBox>
<asp:Label ID="lblFielName" runat="server" Text="Label"></asp:Label>
            路径:
            <%=ShowPath%>
            <asp:HiddenField ID="HdnShowPath" runat="server" />
            <asp:HiddenField ID="Hdnmethod" runat="server" />
            <asp:HiddenField ID="HdnFilePath" runat="server" />
        &nbsp;提示:风格文件命名必须是[文件名.css]格式！</td>
    </tr>
    <tr>
        <td align="center">
          <asp:TextBox ID="textContent" runat="server" Rows="45" TextMode="MultiLine" Width="99%"></asp:TextBox>
        </td>
    </tr>
</table>
<div class="clearbox"></div>
<div style="text-align:center; width:100%">
    <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" class="C_input"/>
    <asp:Button ID="Button3" runat="server" Text="重置" class="C_input"  onclick="Reset_Click"/>
    <asp:Button ID="Button2" runat="server" Text="取消" class="C_input" OnClick="Button2_Click"/>
  
</div>
</form>
</body>
</html>