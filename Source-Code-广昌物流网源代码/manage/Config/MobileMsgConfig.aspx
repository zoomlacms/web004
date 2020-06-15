<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Config.MobileMsgConfig, App_Web_fi1obr2j" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>短信通配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt;<span>系统配置</span> &gt;&gt; <span>短信通配置</span>
	</div>
	<div class="clearbox"></div>
	<table width="100%" cellspacing="1" cellpadding="0" class="border">
	    <tr class="tdbg">
            <td class="tdbgleft" style="width: 200px; ">
                <strong>短信通用户：</strong></td>
            <td>
                <asp:TextBox ID="TxtMssUser" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 200px; ">
                <strong>短信通密码：</strong></td>
            <td>
                <asp:TextBox ID="TxtMssPsw" runat="server" TextMode="Password" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" colspan="2">
                <strong><a href="http://www.zoomla.cn/Content.aspx?ItemID=83" target="view_window">还没有帐号?点击这里开通短信通>></a></strong></td>            
        </tr>
	</table>
	<asp:Button ID="Button1" class="C_input" runat="server" Text="保存设置" OnClick="Button1_Click" />
    </form>
</body>
</html>