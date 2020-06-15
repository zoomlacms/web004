<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_AddGuildLeve, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            <%=MyType%>会内职务</div>
    </h5>
    <ul>
        <table width="100%">
            <tr>
                <td align="center">
                    <table width="70%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
                        <tr>
                            <td align="right">
                                职务名称：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" style="height:30px">
                                <asp:Button ID="Button1" runat="server" Text="添  加" OnClick="Button1_Click" 
                                    style="height: 26px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ul>
</asp:Content>
