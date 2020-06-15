<%@ page language="C#" autoeventwireup="true" inherits="User_Left, App_Web_y3ifdjqg" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>功能导航</title>
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../../js/UserDefault.js"></script>
</head>
<body style="background-color:#E6F2F8">
     <form id="form1" runat="server">   
       <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
            <tr>
                <td height="22" valign="top" class="left_font">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="25">
                                <img src="../../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand"
                                    onclick="show('td1')">
                            </td>
                            <td valign="top">
                                <div class="left_font" style="cursor: hand" onclick="show('td1')">常规管理</div>
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
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="/User/Content/MyContent.aspx?NodeID=15"target="main_right">货源管理</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/User/Content/MyContent.aspx?NodeID=14" target="main_right">车源管理</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/User/Content/MyContent.aspx?NodeID=16"target="main_right">专线管理</a>
                            </td>
                        </tr>                     
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/User/Content/MyContent.aspx?NodeID=36"target="main_right" >配货站管理</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/User/Content/MyContent.aspx?NodeID=17"target="main_right" >投标管理</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="/User/Content/MyContent.aspx?NodeID=156"target="main_right" >货运保险</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <div style=" display:none;"> <asp:Literal ID="lt_src" runat="server" Text="视频房间申请"></asp:Literal></div>
    </form>
    
    
</body>
</html>