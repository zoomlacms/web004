<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_GuildMember, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="center1">
        <h5>
            <div id="no">
                ��Ա�б�</div>
        </h5>
        <ul>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="left">
                        <a href='GuildMember.aspx?ID=<%=Request.QueryString["ID"] %>'>���л�Ա</a> | <a href="">
                            ��Ƶ��֤��Ա</a> | <a href='GuildMemberCard.aspx?ID=<%=Request.QueryString["ID"] %>'>��Ծ��Ա����(ǩ��)</a>
                        | <a href='GuildMemberBBS.aspx?ID=<%=Request.QueryString["ID"] %>'>��Ծ��Ա����(��̳)</a>
                    </td>
                </tr>
                <tr>
                    <td height="30" align="left">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="16%" align="center">
                                    ��Ա����
                                </td>
                                <td width="15%" align="left">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td width="74%" align="left">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" ���� " />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <asp:Panel ID="Panel1" runat="server">
                <table width="100%" border="0">
                    <caption>
                        ��ʱ��û�м�¼!
                    </caption>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <asp:DataList ID="DataList1" Width="100%" runat="server" DataKeyField="ID" RepeatColumns="3">
                    <ItemTemplate>
                        <table cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td rowspan="5">
                                    <img src="<%#GetUserFace(Eval("UID","{0}"))%>" Height="120px" Width="120px" />
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton2" runat="server"><%#GetName(Eval("UID"))%></asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong><font color="red">
                                        <%#Check(Eval("Authority"), Eval("Job"))%></font></strong>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <%#GetImage(Eval("UID"))%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton3" Visible='<%#vis(Eval("UID").ToString())%>' runat="server"
                                        OnClick="LinkButton3_Click"><%#Eval("Authority")+""=="2"?"ȡ������Ա":"���ù���Ա" %></asp:LinkButton>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" Visible='<%#vis(Eval("UID").ToString())%>' runat="server"
                                        OnClientClick="return confirm('��ȷ��Ҫ���û�Ա�߳�������')" OnClick="LinkButton1_Click">�߳�����</asp:LinkButton>
                                &nbsp;</td>
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
        </ul>
    </div>
</asp:Content>
