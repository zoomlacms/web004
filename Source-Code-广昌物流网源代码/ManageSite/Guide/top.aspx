<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Guide_top, App_Web_iie0lq0o" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>Zoomla!����CMS��̨������ҳ</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body  style="margin-top:0px;">
<table cellspacing="0" cellpadding="0" width="100%" border="0">
    <tbody>
        <tr>
            <td rowspan="2" align="center" style="height: 57px; width: 180px;">
                <img src="<%=GetLogoImage() %>" alt="<%=SiteName %>" />
            </td>
            <td style="padding-right: 10px; margin-top: 0px; line-height: 28px; height: 28px;text-align: right;">
                &nbsp;���ã�<span><%=GetUserName()%>����ӭʹ�� Zoomla! ����CMSϵͳ��</span>&nbsp;&nbsp;&nbsp;&nbsp;<%=SiteCon%><a href="" target="right">ϵͳ���</a>&nbsp;|&nbsp;<a href="" target="right">ѡ��</a>&nbsp;|&nbsp;<a
                        href="" target="right">�޸�����</a>&nbsp;|&nbsp;<a href="/" target="_blank" title="��վ��ҳ">��վ��ҳ</a>
                | <a href="http://bbs.zoomla.cn/" target="_blank" title="���˹ٷ�����">��������</a> | <a href="http://www.zoomla.cn/"
                    target="_blank" title="�������˹ٷ���վ">�ٷ���վ</a> | <a href="../SignOut.aspx" target="_top">�˳�</a><!--&nbsp;|&nbsp;վ�ڼ���:&nbsp;
    <INPUT id="wd" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" name="wd" style="width:220px;" maxLength=255>&nbsp;<INPUT class=button style="margin-bottom:0px;" type=submit value="�� ��">-->
            </td>
        </tr>
        <tr>
            <td align="left">
                <div class="toptitle">
                    <asp:Literal ID="Navigation" runat="server"></asp:Literal>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="topline">
            </td>
        </tr>
    </tbody>
</table>
</body>
</html>

