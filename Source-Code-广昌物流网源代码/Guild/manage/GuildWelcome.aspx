<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildWelcome, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
    <link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
    <h5>
        <div id="no">
            Ê×Ò³»¶Ó­´ÊÐÞ¸Ä</div>
    </h5>
    <ul>
        <table width="70%" border="0" align="center" cellpadding="0" cellspacing="1">
        <tr>
        <td height="25"  bgcolor="#F5F5F5">
                    »¶Ó­´ÊÄÚÈÝ
                </td>
        </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:TextBox ID="txt_content" runat="server" Height="212px" Width="574px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="50"  align="center">
                    <asp:Button ID="Button1" runat="server" Text="Ìá ½»" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </ul>
</asp:Content>
