<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_AddGuildVote, App_Web_upddlidg" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h5>
        <div id="no">
            <%=MyType%>ͶƱ</div>
    </h5>
    <ul>
        <table width="100%" border="0" cellpadding="0" cellspacing="3" >
            <tr>
                <td align="right" style="width:20%">�� �⣺</td>
                <td align=left>
                    
                    <asp:TextBox ID="txttitle" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">ѡ��1��</td>
                <td align=left>
                    <asp:TextBox ID="txtitem1" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">ѡ��2��</td>
                <td align=left>
                    <asp:TextBox ID="txtitem2" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="height: 25px">ѡ��3��</td>
                <td align=left style="height: 25px">
                    <asp:TextBox ID="txtitem3" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">ѡ��4��</td>
                <td align=left>
                    <asp:TextBox ID="txtitem4" runat="server" Width="260px"></asp:TextBox>
                </td>
            </tr>
                        <tr>
                <td align="right">ѡ��5��</td>
                <td align=left>
                    <asp:TextBox ID="txtitem5" runat="server"  Width="260px"></asp:TextBox>
                            </td>
            </tr>
            <tr>
                <td align="right">ѡ��6��</td>
                <td align=left>
                    <asp:TextBox ID="txtitem6" runat="server"  Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">ѡ��7��</td>
                <td align=left>
                    <asp:TextBox ID="txtitem7" runat="server" Width="260px" Height="22px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">ѡ��8��</td>
                <td align=left>
                    <asp:TextBox ID="txtitem8" runat="server"  Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">�������ͣ�</td>
                <td align=left>
                    <asp:DropDownList ID="DDL" runat="server">
                        <asp:ListItem Value="1">��ѡ</asp:ListItem>
                        <asp:ListItem Value="2">��ѡ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td align=left>
                    <asp:CheckBox ID="chkbx" runat="server" Text="��Ϊ���µ���" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btncommit" runat="server" Text="�� ��" 
                        onclick="btncommit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" Text="�� ��" />
                </td>
            </tr>
        </table>
    </ul>
</asp:Content>

