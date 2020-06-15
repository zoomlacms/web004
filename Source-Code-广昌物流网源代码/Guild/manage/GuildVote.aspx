<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_GuildVote, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            投票列表</div>
    </h5>
    <ul>
        <table width="100%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
            <tr>
                <td align="left">
                    【<a href='AddGuildVote.aspx?type=add&ID=<%=ID %>' style="color:Red">增加新投票</a>】
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvVote" runat="server" Width="100%" AutoGenerateColumns="False"
                        DataKeyNames="Vid">
                        <Columns>
                            <asp:TemplateField HeaderText="类型" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="10%">
                                <ItemTemplate>
                                
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="主题" DataField="Vtitle" ItemStyle-HorizontalAlign="Center"
                                HeaderStyle-Width="" />
                            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="20%">
                                <ItemTemplate>
                                    <a href='AddGuildVote.aspx?type=edit&ID=<%=ID %>&did=<%#Eval("Vid") %>'>修改</a> |
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return confirm('你确定要删除这个投票吗？')">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
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
