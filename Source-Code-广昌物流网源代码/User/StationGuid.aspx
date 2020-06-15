<%@ page language="C#" autoeventwireup="true" inherits="User_StationGuid, App_Web_5jpyuwhl" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>站群功能导航</title>
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
                            <img src="../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand" onclick="show('td1')">
                        </td>
                        <td valign="top">
                            <div class="left_font" style="cursor: hand" onclick="show('td1')">企业黄页</div>
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
                            &nbsp;&nbsp;<a href="Pages/Default.aspx" target="main_right">企业黄页</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                            &nbsp;&nbsp;<a href="Pages/Modifyinfo.aspx" target="main_right">配置黄页</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                            &nbsp;&nbsp;<a href="Pages/ClassManage.aspx" target="main_right">栏目管理</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                            &nbsp;&nbsp;<a href="Pages/ChangeSkins.aspx"target="main_right">设置黄页风格</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="Info/CompanyInfo.aspx" target="main_right">公司信息</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="Info/Certificate.aspx" target="main_right">公司证书</a>
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
                            <div class="left_font" style="cursor: hand" onclick="show('td4')">站群管理</div>
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
                            <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="javascript:void(0)" target="main_right">我的子站</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                            &nbsp;&nbsp;<a href="javascript:void(0)"target="main_right">信息审核</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>            
</form>
</body>
</html>
