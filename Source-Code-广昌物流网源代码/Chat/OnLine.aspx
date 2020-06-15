<%@ page language="C#" autoeventwireup="true" inherits="chat_OnLine, App_Web_lxhu43nl" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html runat="server">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />

    <script language="javascript" type="text/javascript">
        function saveObj(obj) {
            window.location.href("OnLine.aspx?value=" + obj);
        }
        setInterval(setscroll, 300);
        var mousemove = 0;

        document.onmousemove = function() {
            if (event.x > document.body.clientWidth || event.y > document.body.clientHeight) {
                mousemove = 1;
            }
            else {
                mousemove = 0;
            }
        }

        function setscroll() {
            document.onmousemove = function() {
                if (event.x > document.body.clientWidth || event.y > document.body.clientHeight) {
                    mousemove = 1;
                }
                else {
                    mousemove = 0;
                }
            }

            if (mousemove == 0) {
                document.body.scrollTop = document.body.scrollHeight;
            }
        }
    </script>

    <style type="text/css">
        body
        {
            height: 580px;
            overflow-y: scroll;
            overflow-x: hidden;
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DataList ID="dtShowMessage" runat="server" OnItemDataBound="dtShowMessage_ItemDataBound">
                <ItemTemplate>
                    <asp:Label ID="lblDateTime" runat="server" Text='<%# Eval("dateTime")%> '></asp:Label>
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="hlUser" runat="server" Text='<%# Eval("ZL_CUser.userId")%>'></asp:HyperLink>
                    <asp:Label ID="lblExpress" runat="server" Text="Label"></asp:Label>
                    <asp:HyperLink ID="hyTargeter" runat="server" Text='<%# Eval("targeterId.userId")%>'></asp:HyperLink>
                    <asp:Label ID="lblFace" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMessage" runat="server" Text='<%# Eval("content")%> '></asp:Label>
                </ItemTemplate>
            </asp:DataList>
            <hr />
            <div id="wisper" runat="server">
                <asp:Label ID="lblMess" runat="server" Text=""></asp:Label>
                <asp:DataList ID="dtMessage" runat="server" OnItemDataBound="dtMessage_ItemDataBound">
                    <ItemTemplate>
                        <asp:Label ID="lblDateTime1" runat="server" Text='<%# Eval("dateTime")%> '></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlUser1" runat="server" Text='<%# Eval("ZL_CUser.userId")%>'></asp:HyperLink>
                        <asp:Label ID="lblExpress1" runat="server" Text="Label"></asp:Label>
                        <asp:HyperLink ID="hyTargeter1" runat="server" Text='<%# Eval("targeterId.userId")%>'></asp:HyperLink>
                        <asp:Label ID="lblFace1" runat="server" Text="Label"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMessage1" runat="server" Text='<%# Eval("content")%> '></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
                <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="2000">
                </asp:Timer>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
