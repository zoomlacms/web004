<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_GuildMemberCard, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="center1">
        <h5>
            <div id="no">
                公会活跃会员排行榜(签到)</div>
        </h5>
        <ul>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="left">
                        <a href='GuildMember.aspx?ID=<%=Request.QueryString["ID"] %>'>所有会员</a> | <a href="sp_member.asp?q_id=39609">
                            视频认证会员</a> | <a href='GuildMemberCard.aspx?ID=<%=Request.QueryString["ID"] %>'>活跃会员排行(签到)</a>
                        | <a href='GuildMemberBBS.aspx?ID=<%=Request.QueryString["ID"] %>'>活跃会员排行(论坛)</a>
                    </td>
                </tr>
            </table>
            <li style="width: 100%; float: left; line-height: 30px">
                <asp:Panel ID="Panel1" runat="server">
                    <table width="100%" border="0">
                        <caption>
                            暂时还没有记录!
                        </caption>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                    <div class="page">
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" RepeatColumns="3">
                            <ItemTemplate>
                                <table width="100%">
                                    <tr>
                                        <td rowspan="4">
                                            <asp:Image ID="Image1" runat="server" Height="120px" Width="120px" ImageUrl="" />
                                        </td>
                                        <td colspan="3">
                                            <%#GetName(Eval("UID"))%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong><font color="red">
                                                <%#Check(Eval("Authority"))%></font></strong>
                                        </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <%#GetIndex()%>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            签到次数：<%#GetCards(Eval("UID"))%>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                </asp:Panel>
                <div style="text-align: center; width: 100%">
                    <asp:Panel ID="panelpage" runat="server">
                        总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                            runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
                        <asp:Label ID="FirstPage" runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
            </li>
        </ul>
    </div>
</asp:Content>
