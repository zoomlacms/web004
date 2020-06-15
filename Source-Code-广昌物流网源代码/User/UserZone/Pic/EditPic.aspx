﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.UserZone.Pic.EditPic, App_Web_4zharhdm" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>会员中心 >> 我的相册</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

    <link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
    <link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="s_bright">
            <!-- str -->
            <div class="us_topinfo">
                <div class="cleardiv">
                </div>
                <div class="us_showinfo">
                    <h1>
                        您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                            ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                            </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_blank">会员中心</a></span><span>
                                &gt;&gt; </span><span><a title="我的相册" href='<%=ResolveUrl("~/User/UserZone/Pic/CategList.aspx")%>'>我的相册</a></span></span>&gt;&gt;修改相片信息
                    </h1>
                </div></div>
                <uc1:WebUserControlTop id="WebUserControlTop1" runat="server">
                </uc1:WebUserControlTop>
                <br />
            
            <table width="760px" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2">
                        <h2>
                            <%=CategName %>
                            相册</h2>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Image ID="Image1" runat="server" /></td>
                </tr>
                <tr>
                    <td align="right" style="width: 30%">
                        相片名称：</td>
                    <td align="left">
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="right" valign="top" style="width: 30%">
                        相片注释：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" Height="150px" Width="300px" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" style="height: 24px">
                        <asp:Button ID="Button1" runat="server" Text="提  交" OnClick="Button1_Click" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="删  除" OnClick="Button2_Click" /></td>
                </tr>
            </table>
        </div>
</form>
</body>
</html>
