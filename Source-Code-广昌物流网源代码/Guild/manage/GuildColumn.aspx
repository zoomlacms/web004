<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildColumn, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            ��Ŀ����</div>
    </h5>
    <ul>
        <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0"> 

            <tr>
                <td height="25" align="left">
                    <strong>��ҳ��Ŀ�б�</strong>
                </td>
                <td align="right">
            ��<a href='../MoveDefault.aspx?ID=<%=ID %>' style="color:Red">���ù���ռ�</a>��
            </td>
            </tr>
           
            <tr>
                <td height="25" align="left" class="hui" colspan="2">
                    ˵�������¿ɹ�����Ŀ����ҳ��Ŀ��ֻ����ѡ����ʾ���
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="XmlName"
                        Width="100%" >
                        <Columns>
                            <asp:BoundField HeaderText="���" DataField="ID" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="��Ŀ����" DataField="Name" ItemStyle-HorizontalAlign="Center">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="״̬" DataField="Type" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="15%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="����" ItemStyle-HorizontalAlign="Center">
                             <HeaderStyle Width="15%" />
                            <ItemTemplate>
                            <%#(Eval("State") + "").Equals("����ʾ") ? "<font color=\"red\">����ʾ</font>" : Eval("State")%>
                            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="����" ItemStyle-HorizontalAlign="Center">
                             <HeaderStyle Width="15%" />
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><%#(Eval("State") + "").Equals("����ʾ") ? "��ʾ" : "�ر�"%></asp:LinkButton>
                            
                            </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            ��ǰû����ؼ�¼��</EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td height="25" align="left">
                    <strong>������Ŀ�б�</strong>
                </td>
            </tr>
            <tr>
                <td height="25" align="left" class="hui">
                    ˵����������Ŀ�ǡ��������¡���Ŀ�е�����Ŀ���������Լ��޸���Ŀ���ƣ��Զ�����Ŀ�ܹ�3����<br />
                    <font color="#FF0000">��ʾ:��Ŀ���ƿ��Ե��&quot;�༭&quot;�޸ĳ�����Ҫ�����ơ�</font>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                        Width="100%" >
                        <Columns>
                            <asp:BoundField HeaderText="���" DataField="ID" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="9%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="��Ŀ����" DataField="Name" ItemStyle-HorizontalAlign="Center">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="״̬" DataField="Type" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="����" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                            <%#Eval("State").Equals("����ʾ") ? "<font color=\"red\">�ر�</font>" : Eval("State")%>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="����" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                <a href='UpdateColumn.aspx?ID=<%=ID %>&CID=<%#Eval("ID") %>'>�� ��</a>
                                    <asp:LinkButton ID="LnkModify" CommandName="edit" CommandArgument='<%#Eval("ID") %>'
                                        runat="server"></asp:LinkButton> 
                                    | <asp:LinkButton ID="LnkDelete" runat="server" CommandName="manage" CommandArgument='<%#Eval("ID") %>'>���¹���</asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="20%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>

                        </Columns>
                        <EmptyDataTemplate>
                            ��ǰû����ؼ�¼��</EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <div class="clearfix">
        </div>
    </ul>
</asp:Content>
