<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_GuildLink, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            友情链接管理</div>
    </h5>
    <ul>
        <table width="100%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
            <tr>
                <td align="left">
                    【<a href="AddGuildLink.aspx?type=add&ID=<%=ID %>" style="color: Red">添加链接</a>】
                </td>
            </tr>
            <tr>
                <td align="left">
                    文字链接
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvTextLink" runat="server" Width="100%" AutoGenerateColumns="False"
                        DataKeyNames="LID">
                        <Columns>
                            <asp:BoundField HeaderText="标题" DataField="Linkname" />
                            <asp:TemplateField HeaderText="显示效果">
                                <ItemTemplate>
                                    <a href='<%#Eval("LinkUrl") %>' target="_blank">
                                        <%#Eval("Linkname")%></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="显示位置" HeaderStyle-Width="15%">
                                <ItemTemplate>
                                    <%#Eval("ShowLocation") + "" == "1" ? "首页显示" : "论坛显示"%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="操作" HeaderStyle-Width="15%">
                                <ItemTemplate>
                                    <a href='AddGuildLink.aspx?type=edit&ID=<%=ID %>&lid=<%#Eval("LID") %>'>修改</a> |
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return confirm('你确定要删除文字链接吗？')">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <hr />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left">
                    图片链接
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvImgLink" runat="server" Width="100%" AutoGenerateColumns="False"
                        DataKeyNames="LID">
                        <Columns>
                            <asp:BoundField HeaderText="标题" DataField="Linkname" />
                            <asp:TemplateField HeaderText="显示效果" HeaderStyle-Width="50%">
                                <ItemTemplate>
                                    <a href='<%#Eval("LinkUrl") %>' target="_blank" title='<%#Eval("Linkname")%>'>
                                        <img width="160px" height="60px" src='<%#Eval("LinkLogo") %>' /></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="显示位置" HeaderStyle-Width="15%">
                                <ItemTemplate>
                                    <%#Eval("ShowLocation") + "" == "1" ? "首页显示" : "论坛显示"%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="操作" HeaderStyle-Width="15%">
                                <ItemTemplate>
                                    <a href='AddGuildLink.aspx?type=edit&ID=<%=ID %>&lid=<%#Eval("LID") %>'>修改</a> |
                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" OnClientClick="return confirm('你确定要删除图片链接？')">删除</asp:LinkButton>
                                </ItemTemplate>
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
