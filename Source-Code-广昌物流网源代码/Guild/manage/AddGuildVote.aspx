<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_AddGuildVote, App_Web_upddlidg" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h5>
        <div id="no">
            <%=MyType%>投票</div>
    </h5>
    <ul>
        <table width="100%" border="0" cellpadding="0" cellspacing="3" >
            <tr>
                <td align="right" style="width:20%">主 题：</td>
                <td align=left>
                    
                    <asp:TextBox ID="txttitle" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">选项1：</td>
                <td align=left>
                    <asp:TextBox ID="txtitem1" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">选项2：</td>
                <td align=left>
                    <asp:TextBox ID="txtitem2" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="height: 25px">选项3：</td>
                <td align=left style="height: 25px">
                    <asp:TextBox ID="txtitem3" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">选项4：</td>
                <td align=left>
                    <asp:TextBox ID="txtitem4" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
                        <tr>
                <td align="right">选项5：</td>
                <td align=left>
                    <asp:TextBox ID="txtitem5" runat="server"  Width="260px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td align="right">选项6：</td>
                <td align=left>
                    <asp:TextBox ID="txtitem6" runat="server"  Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">选项7：</td>
                <td align=left>
                    <asp:TextBox ID="txtitem7" runat="server" Width="260px" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">选项8：</td>
                <td align=left>
                    <asp:TextBox ID="txtitem8" runat="server"  Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">调查类型：</td>
                <td align=left>
                    <asp:DropDownList ID="DDL" runat="server">
                        <asp:ListItem Value="1">单选</asp:ListItem>
                        <asp:ListItem Value="2">多选</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td align=left>
                    <asp:CheckBox ID="chkbx" runat="server" Text="设为最新调查" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btncommit" runat="server" Text="添 加" 
                        onclick="btncommit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" Text="清 除" />
                </td>
            </tr>
        </table>
    </ul>
</asp:Content>

