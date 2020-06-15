﻿<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_DownloadFile, App_Web_wt5oinr2" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的班级 </title>

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
                                会员中心</a></span>&gt;&gt;<span><a href="mySchoolList.aspx"> 我的班级 </a></span>&gt;&gt;
                            <span>班级信息</span>
                    </h1>
                </div>
            </div>
            <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
            <br />
            <div class="us_showinfo">
                <div>
                    &nbsp;&nbsp;&nbsp;<a href="ShowRoom.aspx?Roomid=<%=RoomID%>"><%=RoomName %></a>
                     &gt;&gt; <a href="UpFile.aspx?Roomid=<%=RoomID%>"><%=Dow %>上传 </a> &gt;&gt; <%=FileType%>下载<hr />
                </div>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="2">
                            <strong>
                                <%=FileType%>
                                下载</strong></td>
                    </tr>
                    <tr>
                    <td><asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <table width="100%">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <a href='download.aspx?f=<%#DataBinder.Eval(Container.DataItem,"UpFileUrl")%>&fn=<%#Eval("ID","{0}")%>'>
                                                <%#DataBinder.Eval(Container.DataItem, "FileName")%>
                                            </a>
                                        </td>
                                        <td style="width: 30%">
                                            <%#DataBinder.Eval(Container.DataItem,"UpDateTime")%>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater></td>
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
                                <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
                                    ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>页
                            </td>

                    </tr>
                    </table>
                    </div>   
    </div>
</form>
</body>
</html>