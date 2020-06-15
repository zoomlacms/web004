<%@ page language="C#" autoeventwireup="true" inherits="chat_UserList, App_Web_lxhu43nl" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <center>
                公共聊天室<br />
                <asp:LinkButton ID="lbRefeash" runat="server" OnClick="lbRefeash_Click">刷新</asp:LinkButton>
                <br />
                <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>
                <hr />
                <asp:GridView ID="gvUserList" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvUserList_RowDataBound"
                    OnRowCommand="gvUserList_RowCommand">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div style="text-align: left">
                                    <asp:LinkButton ID="lbUserId" runat="server" CommandArgument="obj" CommandName='<%# Eval("UserName") %>'> <%# Eval("ChatName")%></asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField Visible="False">
                            <ItemTemplate>
                                <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <div id="UserInfo" name="UserInfo">
                </div>
                <hr />
                <asp:LinkButton ID="lbUpdate" runat="server" OnClick="lbUpdate_Click">修改个人资料</asp:LinkButton>
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
                </asp:Timer>
            </center>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
