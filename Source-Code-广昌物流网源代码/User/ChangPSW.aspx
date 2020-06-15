<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.ChangPSW, App_Web_aovcpxcb" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员中心 >> 修改注册信息</title>
<link rel="stylesheet" type="text/css" href="skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="skin/user_user.css" />
<link  rel="stylesheet" type="text/css" href="../App_Themes/UserThem/style.css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
    <div class="us_showinfo">
        <h1>
            您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                    &gt;&gt; </span><span><a title="修改注册信息" href="/User/ChangPSW.aspx">修改注册信息</a></span></span>
        </h1>
    </div>
    <div class="cleardiv">
    </div>
</div>
<div style="margin-top: 10px;">
    <div class="us_seta" style="margin-top: 5px;width:100%;">
    <h1 style="text-align: center">修改密码</h1>
        <table align="center" border="0">
            <tr>
                <td align="center" width="40%"><strong>用 户 名：</strong></td>
                <td><asp:TextBox ID="txtName" runat="server" CssClass="f_input" Height="18px"  />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName"
                    runat="server" ErrorMessage="用户名不能为空！"/></td>
            </tr>
            <tr>
                <td align="center" width="40%"><strong>原 密 码：</strong></td>
                <td><asp:TextBox ID="TxtOldPassword" runat="server" CssClass="f_input" Height="18px" TextMode="Password" />
                <font color="red">不修改请留空!</font></td>
            </tr>
            <tr>
                <td align="center" width="40%"> <strong>新 密 码：</strong></td>
                <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"  CssClass="f_input" Height="18px" />
                  <font color="red">不修改请留空!</font></td>
            </tr>
            <tr>
                <td align="center" width="40%"> <strong>确认密码：</strong></td>
                <td><asp:TextBox ID="TxtPassword2" runat="server" TextMode="Password" CssClass="f_input" Height="18px" />
                  <font color="red">不修改请留空!</font>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtPassword2" ControlToCompare="TxtPassword"
                    ErrorMessage="两次输入的密码不一致！" runat="server" /></td>
            </tr>
             <tr>
                <td align="center" width="40%"><strong>E-Mail ：</strong></td>
                <td><asp:TextBox ID="txtmail" runat="server" CssClass="f_input" Height="18px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtmail"
                    runat="server" ErrorMessage="E-Mail不能为空！"/>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="txtmail"
                    ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator></td>
            </tr>
             <tr align="center">
                <td align="center" colspan="2">
                <asp:Button ID="BtnSubmit" runat="server" Text="修改" OnClick="BtnSubmit_Click" class="i_bottom" />
                &nbsp;&nbsp;
                <asp:Button ID="BtnCancle" runat="server" Text="取消" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel"  class="i_bottom" />
                </td>
            </tr>
        </table>
        
        <div style="width:100%; text-align:center;margin-top:10px">
         <div style="width:100%; text-align:center"> </div>
        </div>
    </div>
</div>
</form>
</body>
</html>
