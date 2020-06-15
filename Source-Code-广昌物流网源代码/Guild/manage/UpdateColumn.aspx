<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_UpdateColumn, App_Web_upddlidg" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            栏目设置</div>
    </h5>
    <ul>
        <table width="90%">
            <tr>
                <td align="right">
                    栏目名称：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtName" runat="server" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    栏目状态：
                </td>
                <td align="left">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="不显示">关闭</asp:ListItem>
                        <asp:ListItem Value="显示">显示</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="确  定" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </ul>
</asp:Content>
