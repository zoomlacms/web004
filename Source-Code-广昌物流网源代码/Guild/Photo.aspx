<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_Photo, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="left">
        <h5>
            <div id="no">
            </div>
        </h5>
        <ul>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="left">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">���ͼƬ</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ul>
    </div>
    <div id="center1">
        <h5>
            <div id="no">
                ͼƬ�б�</div>
        </h5>
        <ul>
            <li style="width: 100%; float: left; line-height: 30px">
                <asp:Panel ID="Panel1" runat="server">
                    <table width="100%" border="0">
                        <caption>
                            ��ʱ��û�м�¼!
                        </caption>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                    <div class="page">
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="PID" RepeatColumns="3"
                            Width="100%">
                            <ItemTemplate>
                                <table width="100%">
                                    <tr align="center">
                                        <td colspan="2">
                                            <asp:Image ID="Image1" runat="server" Height="120px" Width="120px" ImageUrl='<%#Eval("PhotoURL")%>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <a href="PhotoShow.aspx?ID=<%=Request.QueryString["ID"] %>&pid=<%#Eval("PID") %>">
                                                <%#Eval("PhotoTitle")%></a>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td align="right" runat="server">
                                            <asp:ImageButton ID="ImageButton1" visible='<%#vis(Eval("GCheck").ToString())%>' runat="server" ToolTip="��˴�ͼƬ" OnClientClick=""
                                                ImageUrl="~/Guild/images/tg.gif" OnClick="ImageButton1_Click" />&nbsp;
                                        </td>
                                        <td align="left" runat="server">&nbsp;
                                            <asp:ImageButton ID="ImageButton2" visible='<%#del(Eval("PID").ToString())%>' runat="server" ToolTip="ɾ��" OnClientClick="return confirm('��ȷ��Ҫɾ����ѡͼƬ��')"
                                                ImageUrl="~/Guild/images/del.gif" OnClick="ImageButton2_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            ���ԣ�<asp:LinkButton ID="LinkButton1" runat="server"><%#GetName(Eval("UID"))%></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                </asp:Panel>
                <div style="text-align: center; width: 100%">
                    <asp:Panel ID="panelpage" runat="server">
                        �ܹ�<asp:Label ID="Count" runat="server"></asp:Label>��¼ &nbsp; ��ǰҳ:<asp:Label ID="CurrentPage"
                            runat="server"></asp:Label>&nbsp; ��<asp:Label ID="PageCount" runat="server"></asp:Label>ҳ
                        <asp:Label ID="PageSize" runat="server"></asp:Label>����¼/ҳ &nbsp;
                        <asp:Label ID="FirstPage" runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
            </li>
        </ul>
    </div>
</asp:Content>
