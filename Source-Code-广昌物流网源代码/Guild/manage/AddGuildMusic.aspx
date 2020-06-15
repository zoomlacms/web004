<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_AddGuildMusic, App_Web_upddlidg" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <h5>
                <div id="no">
                    <%=type %>公会音乐</div>
            </h5>
            <ul>
            <table>
            <tr>
            <td style="width:20%" align="right">音乐名称：</td>
            <td align="left">
                <asp:TextBox ID="txtmusicname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtmusicname" ErrorMessage="请输入音乐名称">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td style="width:20%" align="right">演唱歌手：</td>
            <td align="left"><asp:TextBox ID="txtsinger" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
            <td style="width:20%" align="right">音乐地址：</td>
            <td align="left"><asp:TextBox ID="txtmusicurl" runat="server" Width="300px" Text="http://"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtmusicurl" ErrorMessage="请输入音乐地址">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td style="width:20%" align="right">歌&nbsp;&nbsp;词：</td>
            <td align="left"><asp:TextBox ID="txtlyrics" runat="server" TextMode="MultiLine" Width="300px" Height="100px"></asp:TextBox></td>
            </tr>
            <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="添  加" onclick="Button1_Click" /></td>
            </tr>
            </table>
                <div class="clearfix">
                </div>
            </ul>
        </asp:Content>