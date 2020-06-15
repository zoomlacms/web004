<%@ page language="C#" autoeventwireup="true" inherits="OA_manage_zo_Main, App_Web_txjcnk32" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   <title>工作台首页</title>

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
		
		<span>后台管理</span>&gt;&gt;<span>工作台</span> &gt;&gt;<span>管理员首页</span>
	</div>
    <div class="clearbox"></div>
    <table class="border" cellspacing="1" cellpadding="2" width="100%" align="center" border="0">
        <tbody>
            <tr class="title" height="25px">
                <td>
                    欢迎使用Zoomla!逐浪CMS网站管理系统<asp:Label ID="Version" runat="server" Text=""></asp:Label>
               </td>
            </tr>            
        </tbody>
    </table>
    <div class="clearbox"></div>
    <table class="border" cellspacing="0" cellpadding="2" width="100%" align="center" border="0">
        <tr class="title">
            <td height="25" align=left colspan="2">&nbsp;<b>信息记录</b></td>
        </tr>
        <tr class="sysinfo"  height="0">
            <td  colspan="2">
                <strong><asp:Literal runat="server" ID="litUserName"></asp:Literal></strong>&nbsp;您好！  今天是：<asp:Literal runat="server" ID="litDate"></asp:Literal></td>
        </tr>            
    </table>
    <div class="clearbox"></div>
    <table id="ShortCutTable" class="border" cellspacing="1" width="100%" cellpadding="2" align="center" border="0">
        <tbody>
            <tr class="title">
                <td align="left"  style="height: 25px">&nbsp;<b>系统帮助信息</b></td>
            </tr>
               <tr> <td style="height: 22px"> 如果您是第一次使用本系统，请按以下步骤配置：</td></tr>
               <tr>
                <td style="height: 22px"><table width="450" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td align="center"><a href="../Config/SiteInfo.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/config.png" border="0" alt="网站配置" /></a></td>
                    <td align="center"><a href="../Content/ModelManage.aspx"><img src="/App_Themes/AdminDefaultTheme/images/generic.png" border="0" alt="内容模型管理" /></a></td>
                    <td align="center"><a href="../Content/NodeManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/cpanel.png" border="0" alt="节点设置" /></a></td>
                    <td align="center"><a href="../Template/LabelManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/mediamanager.png" border="0" alt="标签设置" /></a></td>
                    <td align="center"><a href="../Template/TemplateManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/templatemanager.png" border="0" alt="模板设置" /></a></td>
                    <td align="center"><a href="../User/AdminManage.aspx"><img src="/App_Themes/AdminDefaultTheme/Images/support.png" border="0" alt="管理员管理" /></a></td>
                  </tr>
                  <tr>
                    <td height="24" align="center"><a href="../Config/SiteInfo.aspx">网站配置</a></td>
                    <td align="center"><a href="../Content/ModelManage.aspx">内容模型管理</a></td>
                    <td align="center"><a href="../Content/NodeManage.aspx">节点设置</a></td>
                    <td align="center"><a href="../Template/LabelManage.aspx">标签设置</a></td>
                    <td align="center"><a href="../Template/TemplateManage.aspx">模板设置</a></td>
                    <td align="center"><a href="../User/AdminManage.aspx">管理员管理</a></td>
                  </tr>
                </table></td>                   
               </tr>               
               <tr><td style="height: 23px">
                   帮助资源：<span style="color: #ff0000">官方网站</span><span style="color: #000000"> | </span><a href="http://www.hx008.cn" target="_blank" title="购买主机域名部署逐浪"><font color=red>
      </font></a><span style="color: #ff0000">技术论坛</span><span style="color: #000000"> | </span> <a href="http://www.zoomla.cn" target=_blank>
          </a><a href="http://www.hx008.cn" target="_blank" title="购买主机域名部署逐浪"><font color=red></font>
          </a><a href="http://www.zoomla.cn/ColumnList.aspx?NodeID=13" target="_blank"><font color="red">帮助文档</font></a> |  <a href="http://bbs.zoomla.cn" target=_blank></a><a href="http://www.hx008.cn" target="_blank" title="购买主机域名部署逐浪">
              <font color=red>主机域名</font></a> |  <a href="http://bbs.zoomla.cn" target=_blank><font color=red></a><a href="http://www.zoomla.cn/Content.aspx?ItemID=151" target="_blank" title="购买主机域名部署逐浪">
              <font color=red>商业授权</font></a></td></tr>
            
            
        </tbody>
    </table>    
    <div class="clearbox"></div>
    <table class="border" cellspacing="1" cellpadding="2" width="100%" align="center"
        border="0" id="TABLE1" onclick="return TABLE1_onclick()">
        <tbody>
            <tr class="title" height="25px">
                <td colspan="4" align=left>
                    <b>&nbsp;联系我们</b></td>
            </tr>
            <tr class="sysinfo">
                <td height="20">
                    <div align="center">
                        产品开发</div>
                </td>
                <td height="20">
                    逐浪软件(<a href="http://www.hx008.cn/corp/">江西聚合实业有限公司</a>)</td>
                <td>
                    <div align="center">
                        定制开发</div>
                </td>
                <td>
                    QQ:544472213&nbsp; &nbsp;69250566&nbsp; &nbsp;779630567</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" style="height: 24px">
                    <div align="center">
                        总机电话</div>
                </td>
                <td width="30%" style="height: 24px">
                    0791-8303707(24小时不间断服务热线)</td>
                <td width="12%" style="height: 24px">
                    <div align="center">
                        产品咨询</div>
                </td>
                <td width="45%" style="height: 24px">
                    TEL：(0)13177777714</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" style="height: 24px">
                    <div align="center">
                        传 真</div>
                </td>
                <td width="30%" style="height: 24px">
                    0791-7183714-806</td>
                <td width="12%" style="height: 24px">
                    <div align="center">
                        客服电话</div>
                </td>
                <td width="45%" style="height: 24px">
                    0791-7532723-802</td>
            </tr>
            <tr class="sysinfo">
                <td width="13%" height="20">
                    <div align="center">
                        官方网站</div>
                </td>
                <td width="30%" height="20">
                    <a href="http://www.zoomla.cn/">www.zoomla.cn</a></td>
                <td width="12%">
                    <div align="center">
                        帮助中心</div>
                </td>
                <td width="45%">
                    <a href="http://bbs.zoomla.cn/" target="_blank">bbs.zoomla.cn</a></td>
            </tr>
            <tr class="sysinfo">
                <td colspan="4" height="20">
                    <div align="center">
                        &copy;  2008-2010 <a href="http://www.zoomla.cn">逐浪软件</a>  Inc. All Rights Reserved</div>
                </td>
            </tr>
        </tbody>
    </table>
    
    </form>
</body>
</html>
