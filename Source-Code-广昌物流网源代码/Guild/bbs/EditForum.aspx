<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_Default, App_Web_gp5c4bcc" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-left:200px;margin-top:100px;">
        <table>
            <tr>
                <td>
                    版块名称:
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    排序方式:
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
