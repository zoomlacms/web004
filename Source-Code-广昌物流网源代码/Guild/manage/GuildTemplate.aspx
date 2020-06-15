<%@ page language="C#" autoeventwireup="true" inherits="Guild_manage_GuildTemplate, App_Web_vtxpkfrk" masterpagefile="~/Guild/manage/GuildManagePage.master" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            模版修改</div>
    </h5>
    <ul>
        <table width="90%">
            <tr>
                <td align="left">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="dlTemplate" runat="server" DataKeyField="ID" RepeatColumns="6" Width="100%">
                        <ItemTemplate>
                            <img src='<%#Eval("Thumbnail") %>' width="80px" height="80px" /><br />
                            <%#getcheck(Eval("ID")+"") %><%#Eval("Title")%>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="选择提交" onclick="Button1_Click" />
            </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="panelpage" runat="server">
                        总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                            runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
                            runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <div class="clearfix">
        </div>
    </ul>
</asp:Content>
