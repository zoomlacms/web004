<%@ page language="C#" autoeventwireup="true" inherits="OA_manage_zo_Main, App_Web_txjcnk32" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   <title>����̨��ҳ</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>��̨����</span>&gt;&gt;<span>����̨</span> &gt;&gt;<span>����Ա��ҳ</span>
	</div>
    <div class="clearbox"></div>
    <table class="border" cellspacing="1" cellpadding="2" width="100%" align="center" border="0">
        <tbody>
            <tr class="title" height="25px">
                <td>
                    ��ӭʹ��Zoomla!����CMS��վ����ϵͳ<asp:Label ID="Version" runat="server" Text=""></asp:Label>
               </td>
            </tr>            
        </tbody>
    </table>
    <div class="clearbox"></div>
    <table class="border" cellspacing="0" cellpadding="2" width="100%" align="center" border="0">
        <tr class="title">
            <td height="25" align=left colspan="2">&nbsp;<b>��Ϣ��¼</b></td>
        </tr>
        <tr class="sysinfo"  height="0">
            <td  colspan="2">
                <strong><asp:Literal runat="server" ID="litUserName"></asp:Literal></strong>&nbsp;���ã�  �����ǣ�<asp:Literal runat="server" ID="litDate"></asp:Literal></td>
        </tr>            
    </table>
    <div class="clearbox"></div>
    <table id="ShortCutTable" class="border" cellspacing="1" width="100%" cellpadding="2" align="center" border="0">
        <tbody>
            <tr class="title">
                <td align="left"  style="height: 25px">&nbsp;<b>ϵͳ������Ϣ</b></td>
            </tr>
               <tr> <td style="height: 22px"> ������ǵ�һ��ʹ�ñ�ϵͳ���밴���²������ã�</td></tr>
               <tr>
                <td style="height: 22px"><table width="450" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td align="center"><a href="../Config/SiteInfo.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/config.png" border="0" alt="��վ����" /></a></td>
                    <td align="center"><a href="../Content/ModelManage.aspx"><img src="/App_Themes/AdminDefaultTheme/images/generic.png" border="0" alt="����ģ�͹���" /></a></td>
                    <td align="center"><a href="../Content/NodeManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/cpanel.png" border="0" alt="�ڵ�����" /></a></td>
                    <td align="center"><a href="../Template/LabelManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/mediamanager.png" border="0" alt="��ǩ����" /></a></td>
                    <td align="center"><a href="../Template/TemplateManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/templatemanager.png" border="0" alt="ģ������" /></a></td>
                    <td align="center"><a href="../User/AdminManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/support.png" border="0" alt="����Ա����" /></a></td>
                  </tr>
                  <tr>
                    <td height="24" align="center"><a href="../Config/SiteInfo.aspx">��վ����</a></td>
                    <td align="center"><a href="../Content/ModelManage.aspx">����ģ�͹���</a></td>
                    <td align="center"><a href="../Content/NodeManage.aspx">�ڵ�����</a></td>
                    <td align="center"><a href="../Template/LabelManage.aspx">��ǩ����</a></td>
                    <td align="center"><a href="../Template/TemplateManage.aspx">ģ������</a></td>
                    <td align="center"><a href="../User/AdminManage.aspx">����Ա����</a></td>
                  </tr>
                </table></td>                   
               </tr>               
               <tr><td style="height: 23px">
                   ������Դ��<span style="color: #ff0000">�ٷ���վ</span><span style="color: #000000"> | </span><a href="http://www.hx008.cn" target="_blank" title="��������������������"><font color=red>
      </font></a><span style="color: #ff0000">������̳</span><span style="color: #000000"> | </span> <a href="http://www.zoomla.cn" target=_blank>
          </a><a href="http://www.hx008.cn" target="_blank" title="��������������������"><font color=red></font>
          </a><a href="http://www.zoomla.cn/ColumnList.aspx?NodeID=13" target="_blank"><font color="red">�����ĵ�</font></a> |  <a href="http://bbs.zoomla.cn" target=_blank></a><a href="http://www.hx008.cn" target="_blank" title="��������������������">
              <font color=red>��������</font></a> |  <a href="http://bbs.zoomla.cn" target=_blank><font color=red></a><a href="http://www.zoomla.cn/Content.aspx?ItemID=151" target="_blank" title="��������������������">
              <font color=red>��ҵ��Ȩ</font></a></td></tr>
            
            
        </tbody>
    </table>    
    <div class="clearbox"></div>
    <table class="border" cellspacing="1" cellpadding="2" width="100%" align="center"
        border="0" id="TABLE1" onclick="return TABLE1_onclick()">
        <tbody>
            <tr class="title" height="25px">
                <td colspan="4" align=left>
                    <b>&nbsp;��ϵ����</b></td>
            </tr>
            <tr class="sysinfo">
                <td height="20">
                    <div align="center">
                        ��Ʒ����</div>
                </td>
                <td height="20">
                    �������(<a href="http://www.hx008.cn/corp/">�����ۺ�ʵҵ���޹�˾</a>)</td>
                <td>
                    <div align="center">
                        ���ƿ���</div>
                </td>
                <td>
                    QQ:544472213&nbsp; &nbsp;69250566&nbsp; &nbsp;779630567</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" style="height: 24px">
                    <div align="center">
                        �ܻ��绰</div>
                </td>
                <td width="30%" style="height: 24px">
                    0791-8303707(24Сʱ����Ϸ�������)</td>
                <td width="12%" style="height: 24px">
                    <div align="center">
                        ��Ʒ��ѯ</div>
                </td>
                <td width="45%" style="height: 24px">
                    TEL��(0)13177777714</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" style="height: 24px">
                    <div align="center">
                        �� ��</div>
                </td>
                <td width="30%" style="height: 24px">
                    0791-7183714-806</td>
                <td width="12%" style="height: 24px">
                    <div align="center">
                        �ͷ��绰</div>
                </td>
                <td width="45%" style="height: 24px">
                    0791-7532723-802</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" height="20">
                    <div align="center">
                        �ٷ���վ</div>
                </td>
                <td width="30%" height="20">
                    <a href="http://www.zoomla.cn/">www.zoomla.cn</a></td>
                <td width="12%">
                    <div align="center">
                        ��������</div>
                </td>
                <td width="45%">
                    <a href="http://bbs.zoomla.cn/" target="_blank">bbs.zoomla.cn</a></td>
            </tr>
            <tr class="sysinfo">
                <td colspan="4" height="20">
                    <div align="center">
                        &copy;  2008-2010 <a href="http://www.zoomla.cn">�������</a>  Inc. All Rights Reserved</div>
                </td>
            </tr>
        </tbody>
    </table>
    
    </form>
</body>
</html>
