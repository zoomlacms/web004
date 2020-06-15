<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_AddGuildDownload, App_Web_upddlidg" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            <%=MyType %>下载</div>
    </h5>
    <ul>
        <table width="100%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
            <tr>
                <td align="right">
                下载标题：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtTitle" runat="server" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td align="right">下载地址：
                </td>
                <td align="left">
                <asp:TextBox ID="txtUrl" runat="server" Width="320px" Text="http://"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td  align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="添 加"  OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <div class="clearfix">
        </div>
    </ul>
</asp:Content>
