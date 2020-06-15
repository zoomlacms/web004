<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_UserDevote, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="center1">
        <h5>
            <div id="no">
                会员贡献度排名</div>
        </h5>
        <ul>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="left">
                        <p>
                            公会会员贡献度获得说明:</p>
                        <p>
                            系统加分：<br />
                            1、会员每日签到,会员增加1点贡献度,同时公会的积分+1<br />
                            2、会员每日在公会论坛发帖加1点贡献,同时公会也会增加相应的积分<br />
                            3、会员在公会自定义栏目中推荐文章等获得审核通过后加2点贡献</p>
                        <p>
                            公会加分：<br />
                            会长根据会员在公会及游戏中的贡献表现对会员进行贡献奖励，每次最大奖励上限为10分．<br />
                            <br />
                            会员贡献度用途：会员可以使用贡献度在公会自己商城中购买相关的物品，如游戏内测号，点卡，装备等。 物品由公会管理员在后台自行增加管理．
                        </p>
                    </td>
                </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="50" align="center">
                        <h3>
                            本会会员贡献度排名</h3>
                    </td>
                </tr>
                <tr>
                    <td height="50" align="center">
                        <form name="form1" method="post" action="">
                        <div align="left">
                            会员名:&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <input name="action" type="hidden" id="action" value="find">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" 查找 " />
                        </div>
                        </form>
                    </td>
                </tr>
            </table>
            <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
            <td>
                <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                    Width="100%" OnRowDataBound="Egv_RowDataBound">
                    <Columns>
                        <asp:BoundField HeaderText="名次" DataField="ID" ItemStyle-HorizontalAlign="Center">
                            <HeaderStyle Width="12%" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="会员" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%#GetName(Eval("UID")) %>
                            </ItemTemplate>
                            <HeaderStyle Width="8%" />
                            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="贡献度" DataField="Dedicative" ItemStyle-HorizontalAlign="Center">
                            <HeaderStyle Width="8%" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="最后登录" DataField="ExitTime" ItemStyle-HorizontalAlign="Center">
                            <HeaderStyle Width="8%" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="查看明细" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <a href="javascript:void{0};" onclick='javascript:window.open("DetailsView.aspx?GID=<%#Eval("GID") %>&UID=<%#Eval("UID") %>", "ShowDilog","scrollbars=yes,menubar=no,height=600,width=900,resizable=no,toolbar=no,location=no,status=n");'>
                                    查看明细</a> |<asp:LinkButton ID="LnkDelete" runat="server" CommandName="del" CommandArgument='<%#Eval("ID") %>'>设置</asp:LinkButton>
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
                    <td>
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
        </ul>
        </div>
</asp:Content>
