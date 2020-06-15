<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildLeve, App_Web_upddlidg" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            会内职务管理</div>
    </h5>
    <ul>
        <table width="100%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
            <tr>
                <td>
                    你可以根据自己公会的管理需要增加职务名称。【<a href='AddGuildLeve.aspx?type=add&ID=<%=ID %>' style="color: Red">添加职务</a>】
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvLeve" runat="server" Width="100%" AutoGenerateColumns="False"
                        DataKeyNames="ID">
                        <Columns>
                            <asp:BoundField HeaderText="职务名称" DataField="CName" ItemStyle-HorizontalAlign="Center"
                                HeaderStyle-Width="" />
                            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="20%">
                                <ItemTemplate>
                                    <asp:Panel ID="Panel1" runat="server" Visible='<%#Eval("ID")+""=="0"?false:true %>'>
                                       <a href='AddGuildLeve.aspx?type=edit&ID=<%=ID %>&lid=<%#Eval("ID") %>'>修改</a> |
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return confirm('你确定要删除这个职务吗？')">删除</asp:LinkButton>
                               
                                    </asp:Panel>
                                 
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </ul>
    <h5>
        <div id="no">
            设置会内职务</div>
    </h5>
    <ul>
        <table>
            <tr>
                <td align="right">
                会员名称：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                设置职务：
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="CName" DataValueField="ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="设 置" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </ul>
</asp:Content>
