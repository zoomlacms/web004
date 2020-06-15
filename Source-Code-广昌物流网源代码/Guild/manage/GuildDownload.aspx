<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildDownload, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            公会下载管理</div>
    </h5>
    <ul>
        <table width="100%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
            <tr>
                <td>
                    <table width="100%">
                        <tr>
                            <td>
                                【<a href="AddGuildDownload.aspx?type=add&ID=<%=ID %>" style="color: Red">添加下载</a>】
                            </td>
                            <td>
                                下载搜索：
                                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                    <hr />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvDownload" runat="server" AutoGenerateColumns="False" Width="100%">
                        <Columns>
                            <asp:BoundField HeaderText="下载标题" DataField="DownloadTitle" />
                            <asp:BoundField HeaderText="发布时间" DataField="DownloadTime" HeaderStyle-Width="35%" />
                            <asp:TemplateField HeaderText="操作" HeaderStyle-Width="25%">
                                <ItemTemplate>
                                <a href='<%#Eval("DownloadURL") %>'>测试地址</a> |
                                    <a href='AddGuildDownload.aspx?type=edit&ID=<%=ID %>&did=<%#Eval("DID") %>'>修改</a>
                                    |
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return confirm('你确定要删除这首音乐吗？')">删除</asp:LinkButton>
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
