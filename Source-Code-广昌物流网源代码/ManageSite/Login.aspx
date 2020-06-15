<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Login, App_Web_jymt3qjm" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>SiteServer CMS 登录界面</title>

<script language="JavaScript">
    if (window.top != self) {
        window.top.location = self.location;
    }
</script>
<link rel="stylesheet" href="Style/style.css" type="text/css" />

</head>
<style type="text/css">
    body
    {
        margin: 20px auto auto 6px;
        text-align: center;
        padding: 0;
        line-height: 22px;
    }
    img
    {
        border: 0;
    }
    .tip
    {
        padding: 4px 0 6px 46px;
        color: #999;
    }
    #Logo
    {
        width: 760px;
        margin: auto;
        text-align: left;
    }
    #Logo .lg
    {
        position: absolute;
        top: 22px;
    }
    #Logo .nav
    {
        float: right;
        margin-right: 5px;
        color: #1A82D2;
    }
    #Main
    {
        width: 770px;
        margin: auto;
        text-align: center;
    }
    #Bot
    {
        width: 750px;
        clear: both;
        margin: auto;
        text-align: center;
        line-height: 18px;
        border-top: 1px solid #DADADA;
        padding-top: 13px;
        margin-top: 25px;
    }
    #Bot a
    {
        color: #494949;
    }
    #Banner
    {
        width: 503px;
        height: 170px;
        float: left;
        margin-top: 30px;
    }
    #Banner .conn_left
    {
        float: left;
        width: 3px;
        height: 170px;
        background: #208DE1;
    }
    #Banner .conn_img
    {
        margin-top: 164px;
    }
    #Banner .index_banner
    {
        float: left;
        background: #208DE1;
        width: 216px;
        height: 170px;
    }
    #Banner .index_bg
    {
        float: left;
        background: url(images/index_login_bg.gif) repeat-y;
        width: 280px;
        height: 145px !important;
        height: /**/ 170px;
        padding: 25px 0 0 4px;
        font: normal 12px tahoma;
        line-height: 24px;
        text-align: left;
        color: #fff;
    }
    #Banner .color
    {
        clear: both;
        width: 503px;
        height: 16px;
        background: #D4ECFF;
        border-top: 2px solid #fff;
    }
    #Banner ul
    {
        list-style: none;
        margin: 12px 0 0 6px;
    }
    #Banner ul li
    {
        text-align: left;
        height: 48px;
    }
    .txt
    {
        color: #1274BA;
    }
    .txt_
    {
        font-family: tahoma;
    }
    .txt1
    {
        color: #F86B2D;
    }
    .txt2
    {
        font-size: 11px !important;
        font-size: /**/ 8pt;
        font-family: tahoma;
    }
    .left
    {
        float: left;
    }
    .right
    {
        float: right;
    }
    #Login
    {
        width: 255px;
        float: left;
        font-family: tahoma;
        color: #494949;
    }
    #Login .top
    {
        height: 4px;
        background: url(images/login_top_bg.gif) repeat-x;
    }
    #Login .login_bg
    {
        height: 310px;
        background: #F9F9F9;
        border-right: 1px solid #8A8A8A;
        border-left: 1px solid #8A8A8A;
        
    }
    #Login .lg_title
    {
        text-align: left;
        height: 23px;
        margin: 0 11px 0px 11px;
        padding-top: 3px;
        padding-left: 4px;
        border-bottom: 1px solid #B5B5B5;
    }
    #Login .lg_title1
    {
        text-align: left;
        margin: 5px 11px;
        padding-top: 3px;
        padding-left: 4px;
        border-bottom: 1px solid #B5B5B5;
    }
    #Login .lg_title2
    {
        text-align: left;
        margin: 0 11px;
        padding-top: 3px;
        padding-left: 4px;
        color: #ff0000;
    }
    #Login .input_id
    {
        text-align: left;
        margin: 0px 0 0 26px;
    }
    #Login .input_pwd
    {
        text-align: left;
        margin: 6px 0 0 26px;
    }
    #Login .input_vc
    {
        text-align: left;
        margin: 6px 0 0 14px;
    }
    #Login .input_post
    {
        text-align: left;
        margin: 8px 0 0 35px;
    }
    #Login .input_fpwd
    {
        text-align: left;
        margin: 5px 0 0 32px;
    }
    #Login .bottom
    {
        height: 4px;
        background: url(images/login_bottom_bg.gif) repeat-x;
    }
    #Login .intro_txt
    {
        color: #959595;
        text-align: left;
        margin-left: 62px;
    }
    #Login .txt3
    {
        text-align: left;
        margin: 10px 0 0 22px;
        clear: both;
    }
    .input_n
    {
        width: 110px;
        height: 15px !important;
        height: /**/ 20px;
        border-style: inset;
        padding: 2px 0 0 2px;
        font: normal 12px tahoma;
    }
    .input_s
    {
        width: 62px;
        height: 27px;
        padding-top: 2px;
        font-weight: bold;
        border-style: outset;
    }
    #Right
    {
        margin-top: 30px;
        float: left;
        width: 12px;
        height: 170px;
        background: #A5D3F7;
    }
    #Right .color
    {
        margin-top: 170px;
        width: 12px;
        height: 16px;
        background: #D4ECFF;
        border-top: 2px solid #fff;
    }
    .colorfocus {
	border: 1px #86a1ba double;
	background-color: #fff8e6;
}
.colorblur {
	border: 1px #86a1ba double;
	background-color: #ffffff;
}
</style>
<body onload="document.getElementById('<%=TxtUserName.ClientID%>').focus()">
<div id="Logo">
	<div style="float:left"><div class="lg"><img src="<%=GetLogo() %>" border="0" /></div></div>
	<div class="nav"></div>
</div>
<div id="Main">
	<div id="Banner">
		<div class="conn_left"></div>
		<div class="index_banner"></div>
		<div class="index_bg">
	  </div>
		<div class="color"></div>
		<div style="margin-top:6px;text-align:left;"></div>
	</div>
	<div id="Login">
		<div class="top">
			<div class="left"><img src="images/login_conn_left.gif" width="4" height="4" /></div>
			<div class="right"><img src="images/login_conn_right.gif" width="4" height="4" /></div>
		</div>
		<div class="login_bg">
			<form id="form1" runat="server">
			<div class="lg_title"><b class="txt">管理员登录</b></div>
			<div class="lg_title2"><asp:Label style="font-size:12px" width="100%" id=MessageLabel runat="server"/><br /></div>
			<div class="input_id">帐　号：
			<asp:TextBox ID="TxtUserName" runat="server" CssClass="colorblur" Style="width: 129px;"  TabIndex="1" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"></asp:TextBox>
			   <asp:RequiredFieldValidator id="RequiredFieldValidator" 
				ControlToValidate="TxtUserName"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
				runat="server"
				ControlToValidate="TxtUserName"
				ValidationExpression="[^']+"
				ErrorMessage="*"
				Display="Dynamic" />&nbsp;<b class="txt1"></b></div>
			<div class="input_pwd">密　码：
			<asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" MaxLength="18"  CssClass="colorblur" Style="width: 129px;"  onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TabIndex="2"></asp:TextBox>
			<asp:RequiredFieldValidator
				ControlToValidate="TxtPassword" id="RequiredFieldValidator1"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator2"
				runat="server"
				ControlToValidate="TxtPassword"
				ValidationExpression="[^']+"
				ErrorMessage="*"
				Display="Dynamic" /></div>
            <asp:PlaceHolder ID="phValidateCode" runat="server">
			<div class="input_pwd">验证码：
			<asp:TextBox ID="TxtValidateCode" runat="server" CssClass="colorblur"  onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Style="width: 52px;" TabIndex="4"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2"
				ControlToValidate="TxtValidateCode"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
			<asp:Image ID="VcodeLogin" runat="server" ImageUrl="../Common/ValidateCode.aspx" Width="150px"
                        Height="30px" ToolTip ="点击刷新验证码" style="cursor:pointer;border:0;vertical-align:middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
			
			</div>
            </asp:PlaceHolder>
			<div class="input_post">
			<asp:ImageButton ID="IbtnEnter" ImageUrl="../App_Themes/AdminDefaultTheme/images/signin.jpg"
                        runat="server" Style="cursor: hand;" OnClick="IbtnEnter_Click" TabIndex="5" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label>
                        <input type="image" name="ImageButton2" id="ImageButton2" src="../App_Themes/AdminDefaultTheme/images/reset.jpg"
                            onclick="javascript:window.close();" tabindex="6" causesvalidation="false" /></label>
			</div>
			<div class="input_fpwd"></div>
            
			<div class="input_fpwd"></div>
            
            <div class="lg_title1"></div>
		  <div class="txt3">
			</div>
            
            </form>
			
		</div>
		<div class="bottom">
			<div class="left"><img src="images/login_conn_left_b.gif" width="4" height="4"  /></div>
			<div class="right"><img src="images/login_conn_right_b.gif" width="4" height="4" /></div>
		</div>
	</div>
	<div id="Right">
		<div class="right"><img src="images/index_conn_right.gif" width="3" height="3" /></div>
		<div class="color"></div>
  </div>
  <div style="clear:both"></div>
</div>
<br />
<div id="Bot">
</div>
</body>
</html>
