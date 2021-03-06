﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.PayOnline.Orderpay, App_Web_kbssuhoh" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择支付平台</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<table class="border" align="center" cellspacing="1">
<tr class="title">
<td>
    在线支付操作(选择支付平台)</td>
</tr>
<tr class="tdbg">
<td style=" text-align:center;">
    <br />
    <table width="500px" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
        <tr class="title">
            <td colspan="2">
                <b>平台选择</b></td>
        </tr>
        <tr class="tdbg">
            <td style="width: 30%; text-align: right;">
                支付平台：</td>
            <td style="text-align: left;">
                <asp:DropDownList ID="DDLPayPlat" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
         <tr class="tdbg">
            <td style="width: 30%; text-align: right;">
                订单号码：</td>
            <td style="text-align: left;">
                <asp:Label ID="OrderCode" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr class="tdbg">
            <td style="text-align: right;">
                支付金额：</td>
            <td style="text-align: left;">
                <asp:Label ID="TxtvMoney" runat="server" Text="0"></asp:Label>
                <asp:HiddenField ID="nfdmy" runat="server" />
            </td>
        </tr>
        <tr class="tdbg">
            <td colspan="2">
                <asp:Button ID="BtnSubmit" runat="server" Text=" 下一步 " OnClick="BtnSubmit_Click" />
            </td>
        </tr>
    </table>
    <br />
</td>
</tr>
</table>
</form>
</body>
</html>
