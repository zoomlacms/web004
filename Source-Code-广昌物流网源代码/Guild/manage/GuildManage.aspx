<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="User_Guild_manage_GuildManage, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            基本信息
        </div>
    </h5>
    <ul>
        <table border="0" cellpadding="0" cellspacing="3" class="font_14_b" style="width: 83%">
            <tr>
                <td width="37%" rowspan="7" align="center">
                    <a href="EditGuildLogo.aspx?ID=<%=Request.QueryString["ID"] %>">
                        <img alt="更换会标" width="120" height="120" border="0" id="GLogo" runat="server" /></a>
                </td>
                <td align="left" style="width: 37%">
                    公会名称:
                </td>
                <td align="left" style="width:43%" colspan="2">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 37%">
                    公会域名:
                </td>
                <td align="left" style="width:43%" colspan="2">
                    <a href="" target="_blank"></a><a href="" target="_blank">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </a>
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 37%">
                    公会人数:
                </td>
                <td align="left" style="width:43%" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    人
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 37%">
                    创建时间:
                </td>
                <td align="left" style="width:43%" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 37%">
                    公会会长:
                </td>
                <td align="left" style="width: 15%">
                    <a href="" title="昵称:" target="_blank">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </a>
                </td>
                <td style="width:100%; text-align:right">
                    <a href="EditGuildLogo.aspx?ID=<%=Request.QueryString["ID"] %>">更改图标</a></td>
            </tr>
            <tr>
                <td style="width: 37%">
                    现有&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    位成员等待审核。
                </td>
                <td width="30%" colspan="2" style="text-align:right">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" 
                        EnableTheming="False">审核成员</asp:LinkButton>
                </td>
            </tr>
        </table>
        <div class="clearfix">
        </div>
    </ul>
    <h5>
        <div id="no" style="margin-left: 55px;">
            <div>
                系统管理公告 公会系统帮助 公会系统客服</div>
        </div>
    </h5>
    <ul>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="33%" valign="top">
                </td>
                <td width="33%" valign="top">
                </td>
                <td valign="top">
                </td>
            </tr>
        </table>
    </ul>
    <h5>
        <div id="no" style="margin-left: 55px;">
            <div align="justify">
                公会积分获得</div>
        </div>
    </h5>
    <ul>
    </ul>
    <div class="clearfix">
    </div>
</asp:Content>
