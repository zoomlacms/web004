<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_GuildMouse, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            页面个性设置</div>
    </h5>
    <ul>
    <table width="100%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
    <tr>
    <td align="left"><a href='GuildSkins.aspx?ID=<%=ID %>'>选择背景图片</a> | <%--<a href='Skins.aspx?ID=<%=ID %>'>自定义上传背景</a> | --%><a href='GuildMouse.aspx?ID=<%=ID %>'>设置鼠标样式</a></td>
    </tr>
        <tr>
            <td>
                <asp:DataList ID="dlSkins" runat="server" RepeatColumns="4" Width="100%">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td style="width:100px; height:100px">
                                <img src='<%#Eval("Thumbnail") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                 <input type="radio" name="tn" value='<%#Eval("Sid") %>' /><%#Eval("SName")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
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
        <tr>
        <td align="center">
            <asp:Button ID="Button1" runat="server" Text="选择背景并提交保存" 
                onclick="Button1_Click" /></td>
        </tr>
    </table>
            <div class="clearfix">
        </div>
    </ul>
</asp:Content>

