<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite._Login, App_Web_lhavxf0l" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员登录</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<script>
    var frmin = "";
    function loginSec(obj) {
        //obj ==0 为登录成功,-1你的帐户未通过验证或被锁定，请与网站管理员联系
        //alert(obj);
        window.onload = function () { sybot(); }
    }

    
    function sybot(url) {
        setTimeout(changeurl, 1000);
    }

    function changeurl() {
        document.getElementById("pasd").src = document.getElementById("script").value;
    }
</script>
<style>
	.C_inputs{ cursor:pointer; background:url(Skin/gcwuliu/images/button.gif) no-repeat; border:0px; width:44px; height:24px;}
	td a{ display:block; background:url(Skin/gcwuliu/images/button.gif) no-repeat; width:44px; height:24px; line-height:24px; float:right; padding-right:33px;}
	td a:hover{ text-decoration:none;}
	.u_logins{ padding-top:5px;}
	.u_logins li{ height:20px; line-height:20px; padding-left:20px;}
</style>
</head>
<body>
<form id="form1" runat="server">
<asp:Panel ID="PnlLogin" runat="server">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr style=" height:30px;"><td width="35%" align="right">用户名：</td><td width="65%"><asp:TextBox ID="TxtUserName" class="l_input" Width="95" runat="server"></asp:TextBox></td></tr>
   <tr style=" height:30px;"><td width="35%" align="right">密　码：</td><td width="65%"><asp:TextBox ID="TxtPassword" class="l_input" runat="server" Width="95" TextMode="Password"></asp:TextBox></td></tr>
   <tr style=" height:40px; text-align:center;"><td colspan="2" ><a href="User/Register.aspx" target="_top">注册</a><asp:Button ID="BtnLogin" runat="server" class="C_inputs" Text="登录" OnClick="BtnLogin_Click" />
    </td></tr>
</table>
    </div>
    <asp:RequiredFieldValidator ID="ValrUserName" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="TxtUserName" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="ValrPassword" runat="server" ErrorMessage="请输入密码！" ControlToValidate="TxtPassword" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="ValrValidateCode" runat="server" ErrorMessage="请输入验证码！"  ControlToValidate="TxtValidateCode" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
</asp:Panel>
<asp:Panel ID="PnlLoginStatus" runat="server">
    <div class="u_logins">
    <ul>
        <li><asp:Literal ID="LitUserName" runat="server"></asp:Literal>，您好！</li>              
        <li><asp:Literal ID="LitMessage" runat="server">0</asp:Literal></li>
        
        <li><asp:Literal ID="LitLoginDate" runat="server">0</asp:Literal></li>          
        <li><a href="User/Default.aspx" target="_top">会员中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="User/Logout.aspx" target="_top">退出登录</a></li>
    </ul>
    </div>
    <iframe name="pasd" id="pasd" width="0px" height="0px"></iframe>
</asp:Panel>
<asp:Panel ID="PnlLoginMessage" runat="server" Visible="false">
<asp:Literal ID="LitErrorMessage" runat="server"></asp:Literal>
<asp:Button ID="BtnReturn" runat="server" class="C_input" Text="返回" OnClick="BtnReturn_Click" />
</asp:Panel>
<div style=" display:none;">
<asp:PlaceHolder ID="PhValCode" runat="server">验证码：<asp:TextBox ID="TxtValidateCode" MaxLength="6" Width="60" class="l_input" runat="server" onfocus="this.select();"></asp:TextBox>     <asp:Image ID="VcodeLogin" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" /></asp:PlaceHolder> 
<li><asp:Literal ID="LitLoginTime" runat="server">0</asp:Literal></li>
</div>
</form>
</body>
</html>