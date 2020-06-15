<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_ExamGuide, App_Web_02adz3d5" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>教育模块</title>
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../../JS/UserDefault.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
    <tr>
        <td height="22" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="25">
                        <img src="../../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand"  onclick="show('td1')">
                    </td>
                    <td valign="top">
                        <div class="left_font" style="cursor: hand" onclick="show('td1')">考试管理</div>
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
                        <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                        <a href="../../User/Questions/Default.aspx" target="main_right" runat="server" id="a8">我的课程</a>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#FFFFFF">
                        <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                        <a href="../../User/Questions/ApplicationCourese.aspx" target="main_right" runat="server" id="a10">申请新课</a>
                    </td>
                </tr>
                  <tr>
                    <td bgcolor="#FFFFFF">
                        <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                        <a href="../../User/Questions/MyMarks.aspx" target="main_right" runat="server" id="a9">我的考试</a>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#FFFFFF">
                        <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                        <a href="../../User/Questions/SelectAllStudent.aspx" target="main_right" runat="server" id="a1">我的成绩</a>
                    </td>
                </tr>               
            </table>
</table>
</form>
</body>
</html>
