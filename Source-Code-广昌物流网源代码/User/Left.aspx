<%@ page language="C#" autoeventwireup="true" inherits="User_Left, App_Web_5jpyuwhl" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>功能导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../js/UserDefault.js"></script>
</head>
<body style="background-color:#E6F2F8">
<form id="form1" runat="server">
        <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
            <tr>
                <td height="22" valign="top">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="25">
                                <img src="../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand"  onclick="show('td1')">
                            </td>
                            <td valign="top">
                                <div class="left_font" style="cursor: hand" onclick="show('td1')">我的信息</div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr id="td1">
                <td>
                    <table width="100%" border="0" cellpadding="6" cellspacing="1" bgcolor="D6E7EF" class="leftmenu">
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="Info/UserInfo.aspx" target="main_right">账号信息</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="ChangPSW.aspx"target="main_right">修改密码</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/user/iServer/FiServer.aspx" target="main_right">我的提问</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/user/iServer/AddQuestion.aspx" target="main_right">我要提问</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/user/PromotUnion/userunioninviteview.aspx" target="main_right">推广收入</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>    
         <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
            <tr>
                <td height="22" valign="top" class="left_font">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="25">
                                <img src="../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand" onclick="show('td4')">
                            </td>
                            <td valign="top">
                                <div class="left_font" style="cursor: hand" onclick="show('td4')">发布信息</div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="td4">
                    <table width="100%" border="0" cellpadding="6" cellspacing="1" bgcolor="D6E7EF" class="leftmenu"> 
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="/User/Content/AddContent.aspx?ModelID=46&NodeID=17"target="main_right">发布投标</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="/User/Content/AddContent.aspx?ModelID=43&NodeID=14" target="main_right">发布车源</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="/User/Content/AddContent.aspx?ModelID=43&NodeID=15"target="main_right">发布货源</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="/User/Content/AddContent.aspx?ModelID=44&NodeID=16"target="main_right">发布专线</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="/User/Content/AddContent.aspx?ModelID=55&NodeID=156"target="main_right" >发布保险</a>
                            </td>
                        </tr>
                         <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="/User/Content/AddContent.aspx?ModelID=47&NodeID=36"target="main_right" >发布配货站</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/user/Message/Message.aspx"target="main_right">我的短消息</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="<%=ResolveUrl("~/User/logout.aspx") %>">退出</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>      
    </form>
</body>
</html>