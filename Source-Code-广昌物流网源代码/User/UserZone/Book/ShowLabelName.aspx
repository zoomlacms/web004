﻿<%@ page language="C#" autoeventwireup="true" inherits="ShowLabelName, App_Web_iwtzx0fx" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlLabel.ascx" TagName="WebUserControlLabel" TagPrefix="uc1" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员中心 >> 我的空间</title>

<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
    <div class="us_topinfo">
                <div class="s_bright">
                <div class="us_showinfo">
                    <h1>
                        您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                            ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                            </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_blank">
                                会员中心</a></span><span> &gt;&gt; </span><span>标签</span>
                    </h1>
                </div>
                    
            </div>
            <div class="cleardiv">
                </div>
                <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server" />
        <div>
            <table  width="976px" align="center" height="41" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="68%">
                        <strong><font color="#663300">标签:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></font></strong></td>
                    <td width="32%" rowspan="3" valign="top">
                        &nbsp;<uc1:WebUserControlLabel ID="WebUserControlLabel1" runat="server" OnLoad="WebUserControlLabel1_Load"></uc1:WebUserControlLabel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" Height="50px" Width="100%" RepeatColumns="1">
                            <ItemTemplate>
                                <table width="100%" height="138" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="20%" rowspan="2">
                                            &nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="120px" Width="100px"
                                                ImageUrl='<%# Geturl(((Guid)Container.DataItem))%>' /></td>
                                        <td width="80%" height="25">
                                            &nbsp;<%# Gettitle(((Guid)Container.DataItem))%></td>
                                    </tr>
                                    <tr>
                                        <td valign="top">
                                            &nbsp;<%# Getcontent(((Guid)Container.DataItem))%></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td align="center">
                         共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
            <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
            页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
                runat="server" Text=""></asp:Label>页
            <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页</td>
                </tr>
            </table>
        </div>
        </div>
</form>
</body>
</html>
