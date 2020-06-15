<%@ page language="C#" autoeventwireup="true" inherits="Guild_manage_SetLeve, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<%=add %>
<script>
    var arrTabs = new Array("Tabs0", "Tabs1");
    var tID = 0;
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
        }
    }
</script>
</head>
<body>
    <%=skins %>
    <%=mouse %>
    <form id="form1" runat="server">
    <div id="left">
        <h5>
            <div id="no">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center"  onclick="ShowTabs(0)">
                            职务设置
                        </td>
                        <td align="center"  onclick="ShowTabs(1)">
                            | 勋章设置
                        </td>
                        <td align="center" onclick="ShowTabs(2)">
                            | 贡献设置
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
        </h5>
        <ul>
            <table border="0" cellspacing="0" cellpadding="0" style="width: 380px">
            <tr>
                    <td height="25" align="center">
                        会员名：
                    </td>
                    <td align="left">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            <tbody id="Tabs0" >
                <tr>
                    <td width="71" height="25" align="center">
                        设 置 职 务
                    </td>
                    <td width="189" align="left">
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataTextField="CName" DataValueField="ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td height="25">
                        &nbsp;
                    </td>
                    <td align="left">
                        <asp:Button ID="Button1" runat="server" Text="设置" onclick="Button1_Click" />
                    </td>
                </tr>
                </tbody>
            <tbody id="Tabs1" style="display: none">
            <tr>
            <td>设置勋章：</td>
            <td><asp:DropDownList ID="DropDownList2" runat="server" DataTextField="CName" DataValueField="ID">
                        </asp:DropDownList></td>
            </tr>
            <tr>
            <td></td>
            <td><asp:Button ID="Button2" runat="server" Text="设置"  /></td>
            </tr>
            </tbody>
            <tbody id="Tabs2" style="display: none">
            <tr>
            <td>设置操作：</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">加值</asp:ListItem>
                <asp:ListItem Value="2">减值</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            </tr>
             <tr>
            <td>设置值：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
            <td>操作理由：</td>
            <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
            <td></td>
            <td><asp:Button ID="Button3" runat="server" Text="设置"  /></td>
            </tr>
            </tbody>
            </table>
        </ul>
    </div>
    </form>
</body>
</html>
