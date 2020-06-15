<%@ page language="C#" autoeventwireup="true" inherits="Chat_ModifyUserInfo, App_Web_lxhu43nl" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<link href="../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.style2{background: #e0f7e5;padding: 2px;width: 30%; height: 3px;}
.style3{height: 3px;}
</style>
<head runat="server">
<title></title>
<meta http-equiv="content-Type" content="text/html; charset="utf-8" >
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tbody id="Tabs0">
         <tr>
                <td colspan="2" class="spacingtitle" align="center">
                    修改用户信息
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style2">
                    用户Id</td>
                <td class="style3">
                    <asp:TextBox ID="TxtUserID" runat="server" Width="300px" class="l_input"></asp:TextBox>
                    <font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RV" runat="server" ControlToValidate="TxtUserID"
                        Display="Dynamic" ErrorMessage="*" ToolTip="项目名称必须填">用户Id不可为空</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 15%; height: 22px;">
                    新密码：
                </td>
                <td style="width: 85%; height: 22px;" align="left">
                    <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" class="l_input"></asp:TextBox><span style="color: red">不修改可以为空！</span>
                </td>
            </tr>
           
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 282px;">
                    用户性别</td>
                <td>
                    <asp:RadioButtonList ID="tbUserSex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">男</asp:ListItem>
                        <asp:ListItem Value="0">女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg">
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="btnSave" runat="server" class="C_input" Text="保存会员信息" Width="100px" OnClick="btnSave_Click" TabIndex="12" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" class="C_input" runat="server" Text="取　消" 
                        Width="70px" TabIndex="13" onclick="btnCancel_Click" 
                        CausesValidation="False" />
                    <asp:HiddenField ID="hfLoginTime" runat="server" />
                    <asp:HiddenField ID="hfIsOnLine" runat="server" />
                    <asp:HiddenField ID="hfId" runat="server" />
                    <asp:HiddenField ID="hfPwd" runat="server" />
                </td>
            </tr>
        </tbody>
    </table>
    </div>
    </form>
</body>
</html>
