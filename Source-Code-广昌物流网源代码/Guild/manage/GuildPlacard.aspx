<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildPlacard, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            公会公告管理</div>
    </h5>
    <ul>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td width="118" height="25">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" 添加新公告 " />
                </td>
                <td width="350">
                    公告搜索：
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="Button2" runat="server" Text=" 搜索 " OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td height="25">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="2" cellspacing="0">
        <tr>
        <td>
            <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid"
                Width="100%" OnRowCommand="Egv_RowCommand">
                <Columns>
                    <asp:BoundField HeaderText="通告标题" DataField="PostTitle" ItemStyle-HorizontalAlign="Center">
                        <HeaderStyle Width="12%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="类型" DataField="PostType" ItemStyle-HorizontalAlign="Center">
                        <HeaderStyle Width="8%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="发布时间" DataField="CreateTime" ItemStyle-HorizontalAlign="Center">
                        <HeaderStyle Width="8%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="LnkModify" CommandName="edit" CommandArgument='<%#Eval("Pid") %>'
                                runat="server">编辑</asp:LinkButton>
                            |<asp:LinkButton ID="LnkDelete" runat="server" CommandName="del" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');"
                                CommandArgument='<%#Eval("Pid") %>'>删除</asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="8%" />
                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    当前没有相关记录！</EmptyDataTemplate>
            </asp:GridView>
            </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Panel ID="panelpage" runat="server">
                        总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                            runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
                        <asp:Label ID="FirstPage" runat="server"></asp:Label>
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
