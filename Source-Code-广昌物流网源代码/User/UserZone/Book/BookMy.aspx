<%@ page language="C#" autoeventwireup="true" inherits="BookMy, App_Web_vetlvxch" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlMy.ascx" TagName="WebUserControlMy" TagPrefix="uc1" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>读书</title>

<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
        <div style="margin:auto; width:748px">
            <div class="us_topinfo">
                <div class="cleardiv">
                </div>
                <div class="us_showinfo">
                    <h1>
                        您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                            ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                            </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_blank">
                                会员中心</a></span><span> &gt;&gt; </span><span>我的书籍</span>
                    </h1>
                </div>
            </div>
            <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc3:WebUserControlTop>
            &nbsp;&nbsp;
            <uc1:WebUserControlMy id="WebUserControlMy1" runat="server">
            </uc1:WebUserControlMy><br />
        </div>
</form>
</body>
</html>