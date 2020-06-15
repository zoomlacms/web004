<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_AddGuildLink, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5>
        <div id="no">
            <%=MyType%>友情链接</div>
    </h5>
    <ul>
    <table width="100%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
    <tr>
    <td align="center">
        <table width="80%" border="0" cellpadding="0" cellspacing="3" class="font_14_b">
            <tr>
                <td align="right">
                    链接类别：
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">文字链接</asp:ListItem>
                        <asp:ListItem Value="2">图片链接</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    显示位置：
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="1">首页显示</asp:ListItem>
                        <asp:ListItem Value="2">论坛显示</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    链接文字：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtText" runat="server"></asp:TextBox>&nbsp; <span><font color="red">*</font></span>&nbsp;
                    <asp:RequiredFieldValidator ID="ReqtxtText" runat="server" ControlToValidate="txtText"
                                        SetFocusOnError="false" ErrorMessage="链接文字必填"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    链接地址：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtLink" runat="server" Text="http://" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    图片地址：
                </td>
                <td align="left">
                    <asp:TextBox ID="txtimage" runat="server" Text="http://" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        </td>
    </tr>
    </table>
    </ul>
</asp:Content>
