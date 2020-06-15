<%@ page language="C#" autoeventwireup="true" inherits="User_Sera_shopLeft, App_Web_1f4rxn1h" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>商城功能导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../js/UserDefault.js"></script>
</head>
<body style="background-color:#E6F2F8">
<form id="form1" runat="server">
         <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
            <tr>
                <td height="22" valign="top" class="left_font">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="25">
                                <img src="../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand" onclick="show('td1')">
                            </td>
                            <td valign="top">
                              <div class="left_font" style="cursor: hand" onclick="show('td1')">商城管理</div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="td1">
                    <table width="100%" border="0" cellpadding="6" cellspacing="1" bgcolor="D6E7EF" class="leftmenu"> 
                          <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="PreViewOrder.aspx?menu=Cartinfo"target="main_right" >购物订单</a>
                            </td>
                        </tr>  
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="PromotUnion/userunioninviteview.aspx" target="main_right">推广记录</a>
                            </td>
                        </tr>  
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="Profile/PointRecord.aspx"target="main_right" >我的积分</a>
                            </td>
                        </tr>
                         <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="Profile/ExChangeRecord.aspx"target="main_right" >兑换记录</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="Info/DredgeVip.aspx" target="main_right">VIP卡管理</a>
                            </td>
                        </tr>           
                    </table>
                </td>
            </tr>
        </table> 
    </form>
</body>
</html>