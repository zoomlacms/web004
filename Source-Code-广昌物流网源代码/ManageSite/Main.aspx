<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Main, App_Web_jymt3qjm" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<title>վȺ��̨��ʼҳ</title>
<link rel="stylesheet" href="Style/style.css" type="text/css" />
<link rel="stylesheet" href="Style/Blue_style.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style type="text/css">
td, input, button, select, body  {font-family: "lucida Grande" ,Verdana;font-size: 12px;}
.welcomeinfo{font: bold 16px "lucida Grande" ,Verdana;height: 39px;margin: 0 0 0 118px;}
.t_left1{margin-left: 17px;}
.nowrap{white-space: nowrap;}
.f_size, .f_sizetd{font-size: 12px;}
.normal{font-weight: normal;}
img{border: none;}
a{text-decoration: underline;cursor: pointer;}
.level{margin-bottom: 6px;margin-left: 1px;font: normal 12px "lucida Grande" ,Verdana; clear: both;}
.level_no {margin-top: 8px; margin-bottom: 17px; }
.leftpanel{ margin: 0 0 14px 0;padding: 0;list-style: none; }
.left{float: left;}
.right{float: right;}
.todaybody{overflow: auto;overflow-x: hidden;}
ul.tipbook{border-top: 1px solid #d8dee5;margin: 0 13px; padding: 18px 0 0 2px;list-style: none;}
ul.tipbook li{height: 28px;}
.tipstitle_title{font: normal 14px Verdana;margin-bottom: 5px;padding-left: 13px; padding-top: 8px;}
.ico_input{border: none; padding: 0;margin: 0; width: 16pxheight: 16px; }
.ico_helpmin{ background: url(../pic/icon/help.gif) no-repeat;margin: 0 6px 1px 0;}
</style>
</head>
<body class="todaybody">
<ul class="leftpanel" style="margin-bottom: 0; border: none; text-align: left">
<li style="padding-right: 200px; height: auto" id="TodayWelcome" class="welcomeinfo t_left1">
<script>
    var hour = (new Date()).getHours();
    if (hour < 4) {
        hello = "ҹ���ˣ�";
    }
    else if (hour < 7) {
        hello = "�簲��";
    }
    else if (hour < 9) {
        hello = "���Ϻã�";
    }
    else if (hour < 12) {
        hello = "����ã�";
    }
    else if (hour < 14) {
        hello = "����ã�";
    }
    else if (hour < 17) {
        hello = "����ã�";
    }
    else if (hour < 19) {
        hello = "���ã�";
    }
    else if (hour < 22) {
        hello = "���Ϻã�";
    }
    else {
        hello = "ҹ���ˣ�";
    }
    document.write(hello);
</script>
<asp:Literal ID="ltlUserName" runat="server"></asp:Literal><span class="f_size normal addrtitle"
    id="spanGreeting"></span><span id="accountType"></span>
<div class="level level_no">
    ��ӭʹ��Zoomla!CMS��վ���ݹ���ϵͳ <asp:Label ID="Version" runat="server" Text=""></asp:Label>
</div>
</li>
</ul>
<div style="width: 99%; margin: 5px;" id="Div1" class="bd column">
<div class="tipstitle_title bd settingtable bold columntitle" style="border-width: 0 0 1px 0; padding-top: 4px; *padding-top: 4px; height: 20px; *height: 25px">
<span class="nounderline cur_default">ϵͳ������Ϣ</span>
</div>
<div id="Div2">
<table id="ShortCutTable" cellspacing="1" width="90%" cellpadding="2" align="center" border="0">
<tbody>
<tr>
<td style="height: 22px" align="left">������ǵ�һ��ʹ�ñ�ϵͳ���밴���²������ã�</td>
</tr>
<tr>
<td style="height: 22px">
<table width="450" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center"><a href="Config/SiteInfo.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/config.png" border="0" alt="��վ����" /></a></td>
        <td align="center"><a href="Content/ModelManage.aspx"><img src="/App_Themes/AdminDefaultTheme/images/generic.png" border="0" alt="����ģ�͹���" /></a></td>
        <td align="center"><a href="Content/NodeManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/cpanel.png" border="0" alt="�ڵ�����" /></a></td>
        <td align="center"><a href="Template/LabelManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/mediamanager.png" border="0" alt="��ǩ����" /></a></td>
        <td align="center"><a href="Template/TemplateManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/templatemanager.png" border="0" alt="ģ������" /></a></td>
        <td align="center"><a href="User/AdminManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/support.png" border="0" alt="����Ա����" /></a></td>
    </tr>
    <tr>
        <td height="24" align="center"><a href="Config/SiteInfo.aspx">��վ����</a></td>
        <td align="center"><a href="Content/ModelManage.aspx">����ģ�͹���</a></td>
        <td align="center"><a href="Content/NodeManage.aspx">�ڵ�����</a></td>
        <td align="center"><a href="Template/LabelManage.aspx">��ǩ����</a></td>
        <td align="center"><a href="Template/TemplateManage.aspx">ģ������</a></td>
        <td align="center"><a href="User/AdminManage.aspx">����Ա����</a></td>
    </tr>
</table>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<div style="width: 99%; margin: 5px;" id="TodayPartNotice" class="bd column">
<div class="tipstitle_title bd settingtable bold columntitle" style="border-width: 0 0 1px 0;
    padding-top: 4px; *padding-top: 4px; height: 20px; *height: 25px">
    <span class="nounderline cur_default">��ϵ����</span></div>
<div id="contentBulletin_">
    <table cellspacing="1" cellpadding="2" width="90%" align="center" border="0" id="TABLE1">
        <tbody>
            <tr class="sysinfo">
                <td height="20"><div align="center">��Ȩ����</div></td>
                <td height="20">�Ϻ���һ����Ƽ����޹�˾</td>
                <td><div align="center">��������</div></td>
                <td>021-54173031 &nbsp;&nbsp;54173032</td>
            </tr>
            <tr class="sysinfo">
                <td height="20"><div align="center">��Ʒ����</div></td>
                <td height="20">���Ļ���(<a href="http://www.hx008.cn/corp/">�����ۺ�ʵҵ���޹�˾</a>)</td>
                <td><div align="center">���ƿ���</div></td>
                <td>QQ:544472213&nbsp; &nbsp;69250566&nbsp; &nbsp;779630567</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" style="height: 24px"><div align="center">�ܻ��绰</div></td>
                <td width="30%" style="height: 24px">0791-8303707(24Сʱ����Ϸ�������)</td>
                <td width="12%" style="height: 24px"><div align="center">��Ʒ��ѯ</div></td>
                <td width="45%" style="height: 24px">TEL��(0)13177777714</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" style="height: 24px"><div align="center">�� ��</div></td>
                <td width="30%" style="height: 24px">0791-7183714-806</td>
                <td width="12%" style="height: 24px"><div align="center">�ͷ��绰</div></td>
                <td width="45%" style="height: 24px">0791-7532723-802</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" height="20"><div align="center">�ٷ���վ</div></td>
                <td width="30%" height="20"><a href="http://www.zoomla.cn/">www.zoomla.cn</a></td>
                <td width="12%"><div align="center">��������</div></td>
                <td width="45%"><a href="http://bbs.zoomla.cn/" target="_blank">bbs.zoomla.cn</a></td>
            </tr>
            <tr class="sysinfo">
                <td colspan="4" height="20">
                    <div align="center">&copy; 2008-2010 <a href="http://www.zoomla.cn">�������</a> Inc. All Rights Reserved</div>
                </td>
            </tr>
        </tbody>
    </table>
        </div>
    </div>
    <div class="clr" style="height: 23px; margin: 15px 0 0 10px">
    <div class="left" style="margin: 2px 0 0 0">
        <asp:Literal ID="ltlLastLoginDate" runat="server"></asp:Literal></div>
    </div>
</body>
</html>