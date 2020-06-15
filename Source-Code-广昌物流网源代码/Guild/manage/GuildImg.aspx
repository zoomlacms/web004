<%@ page language="C#" autoeventwireup="true" inherits="Guild_manage_GuildImg, App_Web_vtxpkfrk" masterpagefile="~/Guild/manage/GuildManagePage.master" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            公会会标</div>
    </h5>
    <ul>
        <table width="100%">
            <tr>
                <td align="left" id="logo" runat="server">
                </td>
            </tr>
            <tr>
                <td align="left">
                    此标志将显示在公会首页，尺寸规定120x120，文件大小1MB以内。
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:HiddenField ID="txtUpload" runat="server" />
                    上传新标志<iframe id="Iframe1" src="/Common/UserUpload.aspx?CID=Upload&ftype=1" marginheight="0"
                        marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                </td>
            </tr>
        </table>
        <div class="clearfix">
        </div>
    </ul>
    <h5>
        <div id="no">
            <div align="justify">
                通栏标题设置</div>
        </div>
    </h5>
    <ul>
        <table cellpadding="0" width="660px" cellspacing="0" border="0">
            <tr>
                <td align="left">
                    说明:如果留空,顶部通栏标题将不显示.
                </td>
            </tr>
            <tr>
                <td align="left" style="height: 50px">
                    通&nbsp;栏&nbsp;高&nbsp;度
                    <asp:TextBox ID="txtH" Width="40px" runat="server"></asp:TextBox>
                    像素 最高为400像素.
                </td>
            </tr>
            <tr>
                <td align="left">
                    顶部通栏标题&nbsp;<asp:TextBox ID="txtTile" Width="200px" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" style="height: 50px">
                    公会个性宣言&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="修 改" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </ul>
</asp:Content>
