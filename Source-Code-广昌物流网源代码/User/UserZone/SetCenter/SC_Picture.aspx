﻿<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_SetCenter_SC_Picture, App_Web_jor4nygm" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlSetCenterTop.ascx" TagName="WebUserControlSetCenterTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 设置中心</title>
<%--<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
--%>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<script src='<%=ResolveUrl("~/Common/RiQi.js")%>' type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
        <div class="s_bright" >
            <!-- str -->
            <div class="us_topinfo">
                
                <div class="us_showinfo">
                    <h1>
                        您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_top"><asp:Label
                            ID="LblSiteName" runat="server" Text=""></asp:Label></a></span> &gt;&gt;
                            </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_top">
                                会员中心</a></span>&gt;&gt;设置中心&gt;&gt;照片公开模式
                    </h1>
                </div>
                <div class="cleardiv">
                </div>
               </div>
            <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
            <uc1:WebUserControlSetCenterTop ID="WebUserControlSetCenterTop" runat="server" />
            <br />
            
            <div class="us_topinfo">
            <table  border="0"  class="us_showinfo" width="100%" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>照片公开模式</td>
                </tr>
            </table></div>
        </div>
</form>
</body>
</html>