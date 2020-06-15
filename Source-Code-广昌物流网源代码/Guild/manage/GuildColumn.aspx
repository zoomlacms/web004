<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildColumn, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            栏目设置</div>
    </h5>
    <ul>
        <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0"> 

            <tr>
                <td height="25" align="left">
                    <strong>首页栏目列表</strong>
                </td>
                <td align="right">
            【<a href='../MoveDefault.aspx?ID=<%=ID %>' style="color:Red">设置公会空间</a>】
            </td>
            </tr>
           
            <tr>
                <td height="25" align="left" class="hui" colspan="2">
                    说明：以下可管理栏目是首页栏目，只可以选择显示与否。
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="XmlName"
                        Width="100%" >
                        <Columns>
                            <asp:BoundField HeaderText="序号" DataField="ID" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="栏目名称" DataField="Name" ItemStyle-HorizontalAlign="Center">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="状态" DataField="Type" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="15%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="属性" ItemStyle-HorizontalAlign="Center">
                             <HeaderStyle Width="15%" />
                            <ItemTemplate>
                            <%#(Eval("State") + "").Equals("不显示") ? "<font color=\"red\">不显示</font>" : Eval("State")%>
                            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                             <HeaderStyle Width="15%" />
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><%#(Eval("State") + "").Equals("不显示") ? "显示" : "关闭"%></asp:LinkButton>
                            
                            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            当前没有相关记录！</EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="left">
                    <strong>文章栏目列表</strong>
                </td>
            </tr>
            <tr>
                <td height="25" align="left" class="hui">
                    说明：以下栏目是“公会文章”栏目中的子栏目，允许你自己修改栏目名称，自定义栏目总共3个。<br />
                    <font color="#FF0000">提示:栏目名称可以点击&quot;编辑&quot;修改成您想要的名称。</font>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                        Width="100%" >
                        <Columns>
                            <asp:BoundField HeaderText="序号" DataField="ID" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="9%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="栏目名称" DataField="Name" ItemStyle-HorizontalAlign="Center">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="状态" DataField="Type" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="属性" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                            <%#Eval("State").Equals("不显示") ? "<font color=\"red\">关闭</font>" : Eval("State")%>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                <a href='UpdateColumn.aspx?ID=<%=ID %>&CID=<%#Eval("ID") %>'>编 辑</a>
                                    <asp:LinkButton ID="LnkModify" CommandName="edit" CommandArgument='<%#Eval("ID") %>'
                                        runat="server"></asp:LinkButton> 
                                    | <asp:LinkButton ID="LnkDelete" runat="server" CommandName="manage" CommandArgument='<%#Eval("ID") %>'>文章管理</asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="20%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>

                        </Columns>
                        <EmptyDataTemplate>
                            当前没有相关记录！</EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <div class="clearfix">
        </div>
    </ul>
</asp:Content>
