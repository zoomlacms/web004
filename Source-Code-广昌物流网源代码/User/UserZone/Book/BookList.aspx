﻿<%@ page language="C#" autoeventwireup="true" inherits="BookList, App_Web_iwtzx0fx" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlLabel.ascx" TagName="WebUserControlLabel" TagPrefix="uc1" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>读书</title>

<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<style type="text/css">
.NOL {
	TEXT-DECORATION: none
}
.firstback {
	BACKGROUND: #000000
}
.secback {
	BACKGROUND: #6c6c6c
}
.catebar {
	BACKGROUND: #363636; BORDER-TOP: #6c6c6c 4px solid
}
.linkbar {
	BORDER-BOTTOM: #6c6c6c 2px solid
}
.textlink {
	COLOR: #ffffff
}
.ee8 {
	FONT-SIZE: 10px; TEXT-DECORATION: none
}
.e8 {
	COLOR: #f60; TEXT-DECORATION: none
}
.S {
	FONT-SIZE: 12px
}
.C {
	FONT-SIZE: 14px
}
.M {
	LINE-HEIGHT: normal; FONT-VARIANT: normal; FONT-STYLE: normal; FONT-SIZE: 14px; FONT-WEIGHT: bold
}
.T {
	LINE-HEIGHT: normal; FONT-VARIANT: normal; FONT-STYLE: normal; FONT-SIZE: 25px; FONT-WEIGHT: bold
}
.border {
	BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid
}
.border1 {
	BORDER-BOTTOM: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-RIGHT: #cccccc 1px solid
}
.lh13 {
	LINE-HEIGHT: 130%
}
.lh15 {
	LINE-HEIGHT: 150%
}
</style>
</head>
<body>
<form id="form1" runat="server">
    <div style="margin: auto; width: 100%">
        <div class="us_topinfo">
            <div class="us_showinfo">
                <h1>
                    您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                        ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                        </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_blank">
                            会员中心</a></span><span> &gt;&gt; </span><span>读书</span>
                </h1>
            </div>
            <div class="cleardiv">
            </div>
        </div>
        <div>
        <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc3:WebUserControlTop>
        </div>
        <br />
        <table border="0" width="100%" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td width="82%" height="26" valign="top">
                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                        <tr>
                            <td style="padding-left: 20px" class="catebar" height="26">
                                <span class="M"><font class="textlink">读书</font></span>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="18%" rowspan="2" align="center" valign="top">
                    <table class="border1" border="0" cellspacing="0" cellpadding="0" width="170">
                        <tr>
                            <td style="padding-bottom: 2px; padding-left: 2px; padding-right: 2px; padding-top: 2px"
                               class="lh15" valign="top"  align="center" >
                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                    <tr>
                                        <td class="secback textlink" height="22" align="center" >
                                            <strong>标签汇总</strong></td>
                                    </tr>
                                </table>
                                <table border="0" cellspacing="5" cellpadding="0" width="95%">
                                    <tr>
                                        <td valign="top">
                                            <uc1:WebUserControlLabel ID="WebUserControlLabel1" runat="server">
                                            </uc1:WebUserControlLabel>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%">
                        <tr>
                            <td align="center" valign="top" style="border-right: #9d9d9d 1px solid; border-left: #9d9d9d 1px solid;
                                background: #ffffff; border-bottom: #9d9d9d 1px solid; border-top: #9d9d9d 1px solid">
                                搜索你要找的书籍：
                                <asp:TextBox ID="Searchtxt" runat="server" Width="286px"></asp:TextBox>
                                <asp:Button ID="sBtn" runat="server" Text="搜索" Width="77px" OnClick="sBtn_Click" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空"
                                    ControlToValidate="Searchtxt"></asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                    <asp:DataList ID="DataList1" DataKeyField="ID" runat="server" RepeatColumns="1">
                        <ItemTemplate>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <table border="0" cellspacing="0" cellpadding="0" style="border-right: #9d9d9d 1px solid;
                                            border-left: #9d9d9d 1px solid; background: #ffffff; border-bottom: #9d9d9d 1px solid;
                                            border-top: #9d9d9d 1px solid">
                                            <tr>
                                                <td width="754" height="55" valign="top">
                                                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                        <tr>
                                                            <td height="25" valign="bottom">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#004d00">[<a href="BookShow.aspx?bID=<%#DataBinder.Eval(Container.DataItem,"ID") %>"><%# DataBinder.Eval(Container.DataItem,"BookTitle")%></a>]</font></strong></td><td align="right">
                                                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" Visible='<%#GetV(DataBinder.Eval(Container.DataItem,"Uid").ToString()) %>' OnClick="LinkButton1_Click" OnClientClick="return  confirm('你确定要删除这个信息吗？')">[删除]</asp:LinkButton></td>
                                                        </tr>
                                                        <tr>
                                                            <td width="23%" class="lh13" style="padding-bottom: 3px; padding-left: 0px; padding-right: 0px;
                                                                display: block; padding-top: 3px">
                                                                &nbsp; &nbsp;
                                                                    <a href="BookShow.aspx?bID=<%#DataBinder.Eval(Container.DataItem,"ID") %>"><asp:Image ID="Image2" runat="server" Height="120px" Width="100px" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"Bookurl")%>' /></td>
                                                            <td width="77%" valign="middle" class="lh13" style="padding-bottom: 3px; padding-left: 0px;
                                                                padding-right: 0px; display: block; padding-top: 3px">
                                                                <font color="#6c6c6c">
                                                                   <%# GetStr(DataBinder.Eval(Container.DataItem, "BookContent").ToString())%>
                                                                </font>
                                                            </td>
                                                            </td>
                                                <td width="200" valign="middle">
                                                    <%# DataBinder.Eval(Container.DataItem, "BookAddtime")%>
                                                </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                        <tr>
                            <td align="center" height="55"><asp:Label ID="AddBook" runat="server"></asp:Label>
                            </td>
                            </tr>
                            </table>
                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                        <tr>
                            <td align="center">
                                共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                                <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
                                页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize" runat="server" Text=""></asp:Label>页
                                <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>