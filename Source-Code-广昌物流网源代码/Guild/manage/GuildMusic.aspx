<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildMusic, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <h5>
                <div id="no">
                    公会音乐管理</div>
            </h5>
            <ul>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="left">
                            【<a href="AddGuildMusic.aspx?type=add&ID=<%=ID %>" style="color: Red">添加音乐</a>】
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:GridView ID="gvMusic" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="ID">
                                <Columns>
                                    <asp:BoundField HeaderText="编号" DataField="ID" HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                                        <HeaderStyle Width="50px"></HeaderStyle>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="歌曲名称" DataField="MusicName" ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="歌手名称" DataField="Singer" HeaderStyle-Width="150px" ItemStyle-HorizontalAlign="Center">
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="操作" HeaderStyle-Width="80px" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <a href='AddGuildMusic.aspx?type=edit&ID=<%=ID %>&mid=<%#Eval("ID") %>'>修改</a> |
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return confirm('你确定要删除这首音乐吗？')">删除</asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
                <div class="clearfix">
                </div>
            </ul>
</asp:Content>
