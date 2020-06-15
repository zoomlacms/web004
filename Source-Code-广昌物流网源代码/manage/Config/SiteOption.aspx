﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.SiteConfig.SiteOption, App_Web_fi1obr2j" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>网站参数</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script src="/JS/Common.js" type="text/javascript"></script>

<script type="text/javascript"> 
var aid = 0;
    var showID = 0;
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3");
    function ShowTabs(SID) {
        if (SID != tID) {
            if (document.getElementById(arrTabTitle[tID].toString()) != null)
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            if (document.getElementById(arrTabTitle[SID].toString()) != null)
                document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
            if (document.getElementById(arrTabs[tID].toString()) != null)
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
            if (document.getElementById(arrTabs[SID].toString()) != null)
                document.getElementById(arrTabs[SID].toString()).style.display = "";
            tID = SID;
            aid = SID;
        }
    }
    function ShowTable() {
        if (aid < 3) {
            aid = aid + 1;
        }
        if (aid < 4) {
            ShowTabs(aid);
        }
    }
</script>

<style type="text/css">
.style1{background: #e0f7e5;padding: 2px;width: 200px; height: 25px;}
.style2{ height: 25px;}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt;<span>系统配置</span> &gt;&gt;<span>网站参数配置 </span>
    </div>
    <div class="clearbox">
    </div>
    <table border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                全局设置
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                安全设置
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                风格参数
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                上传控制
            </td>
        </tr>
    </table>
    <table width="99%" cellspacing="1" cellpadding="0" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" runat="server" id="Tr4">
                <td class="tdbgleft" style="width: 200px">
                    <strong>全局（站）语言：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="TraditionalChinese" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="false" Selected="True">简体中文</asp:ListItem>
                        <asp:ListItem Value="true">繁体中文</asp:ListItem>
                    </asp:RadioButtonList>
                    <%--<asp:DropDownList ID="TraditionalChinese" runat="server">
            <asp:ListItem Value="false" Selected="True">简体中文</asp:ListItem>
            <asp:ListItem Value="true">繁体中文</asp:ListItem>
            </asp:DropDownList>--%>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>Site Server：(子站系统)</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="SiteServer" runat="server" RepeatDirection="Horizontal"
                        AutoPostBack="True" OnSelectedIndexChanged="SiteServer_SelectedIndexChanged">
                        <asp:ListItem Value="1">开启</asp:ListItem>
                        <asp:ListItem Value="0" Selected="True">关闭</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>


            <tr class="tdbg" runat="server" id="SiteServerOption">
                <td class="tdbgleft" style="width: 200px">
                    <strong>站点类型：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="ServerType" runat="server" RepeatDirection="Horizontal"
                        AutoPostBack="True">
                        <asp:ListItem Value="Server" Selected="True">主站-主控服务器端

                        </asp:ListItem>
                        <asp:ListItem Value="Client">子站-客户端</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            

            <tr class="tdbg" runat="server" id="Tr1" onmouseover="this.className='tdbgmouseover'"
                onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>视频服务器地址：</strong>
                </td>
                <td>
                    <asp:TextBox ID="Videourl" Width="360px" runat="server" class="l_input"></asp:TextBox>
                    &nbsp;<br />
                    例如：rtmp://192.168.1.1
                </td>
            </tr>
            <tbody id="ClientApiOpton" runat="server">
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" style="width: 200px">
                        <strong>主站(API)接口：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="ServerApiUrl" runat="server" Width="360px" AutoPostBack="True" OnTextChanged="ServerApiUrl_TextChanged"></asp:TextBox><span
                            id="sitestart" runat="server"></span><br />
                        <font color="red">输入主站接口地址,例子： http://xxx.xxx.xxx/API/SitePortApi.aspx</font>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" style="width: 200px">
                        <strong>主站许可证：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSiteLicense" runat="server" TextMode="MultiLine" Width="360px"
                            Height="60px"></asp:TextBox>
                    </td>
                </tr>
            </tbody>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>开启日志：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="OpenLog" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">开启</asp:ListItem>
                        <asp:ListItem Value="0">关闭</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>保留指定数量的日志：(0-不限制)</strong>
                </td>
                <td>
                    <asp:TextBox ID="Savanumlog" runat="server" class="l_input"></asp:TextBox>&nbsp;条
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>保留指定天数的日志：(0-不限制)</strong>
                </td>
                <td>
                    <asp:TextBox ID="Savadaylog" runat="server" class="l_input"></asp:TextBox>&nbsp;天
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>生成PDF目录：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtPdf" runat="server" class="l_input"></asp:TextBox>
                    &nbsp;目录名前后不要加斜杠"/"
                </td>
            </tr>
            
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>广告存储目录：</strong><br />
                </td>
                <td>
                    <asp:TextBox ID="txtAdvertisementDir" runat="server" class="l_input"></asp:TextBox>
                    <span style="color: #1e860b;">&nbsp;为防止广告拦截软件影响广告展示，您可以 修改广告JS存放目录(默认为AD)。</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>站长拥有资金：</strong>
                </td>
                <td>
                    <asp:TextBox ID="MastMoney" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" runat="server" id="Tr3" onmouseover="this.className='tdbgmouseover'"
                onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>黄页注册免费二级域名：</strong>
                </td>
                <td>
                    <asp:TextBox ID="freedomain" Width="360px" runat="server" class="l_input"></asp:TextBox>
                    <span style="color: #1e860b;">&nbsp请不要输入 http:// 和 www</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px;">
                    <strong>链接地址方式：</strong>
                </td>
                <td>
                    <asp:RadioButton ID="rdoIapTrue" runat="server" GroupName="IsAbsoluatePath" TabIndex="1"
                        Text="相对路径" />
                    <asp:RadioButton ID="rdoIapFalse" runat="server" GroupName="IsAbsoluatePath" TabIndex="2"
                        Text="绝对路径" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px;">
                    <strong>子站转换功能：</strong>
                </td>
                <td>
                    <asp:RadioButton ID="rdoUwTrue" runat="server" GroupName="UrlWrite" TabIndex="1"
                        Text="开启" />
                    <asp:RadioButton ID="rdoUwFalse" runat="server" GroupName="UrlWrite" TabIndex="2"
                        Text="关闭" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft">
                    <strong>生成首页扩展名：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="IndexEx" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
                        <asp:ListItem Value="1">.htm</asp:ListItem>
                        <asp:ListItem Value="2">.shtml</asp:ListItem>
                        <asp:ListItem Value="3">.aspx(不生成静态)</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>生成静态目录：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtCatalog" runat="server" class="l_input"></asp:TextBox>
                    &nbsp;目录名前后不要加斜杠"/"
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs1" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>后台管理目录：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtManageDir" runat="server" class="l_input"></asp:TextBox><span
                        style="color: #1e860b;">&nbsp;默认目录为manage，改 名后将屏蔽原路径访问，并启用新路径进入后台管理。</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px;">
                    <strong>后台管理认证码：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtSiteManageCode" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>是否启用后台管理认证码：</strong>
                </td>
                <td class="style2">
                    <asp:RadioButton ID="rdoEmcTrue" runat="server" GroupName="EnableSiteManageCod" TabIndex="1"
                        Text="是" />
                    <asp:RadioButton ID="rdordoEmcFalse" runat="server" GroupName="EnableSiteManageCod"
                        TabIndex="2" Text="否" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>是否使用软键盘输入密码：</strong>
                </td>
                <td>
                    <asp:RadioButton ID="rdoEskTrue" runat="server" GroupName="EnableSoftKey" TabIndex="1"
                        Text="是" />
                    <asp:RadioButton ID="rdoEskFalse" runat="server" GroupName="EnableSoftKey" TabIndex="2"
                        Text="否" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>黄页是否需要审核：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="rdoBtnLSh" runat="server" RepeatDirection="Horizontal" CellPadding="0"
                        CellSpacing="0">
                        <asp:ListItem Value="1" Text="需要" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="2" Text="不需要"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" runat="server" id="Tr2" onmouseover="this.className='tdbgmouseover'"
                onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>Flex Api(试戴密匙)：</strong>
                </td>
                <td>
                    <asp:TextBox ID="FlexKey" Width="360px" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>留言本是否需要登陆：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="OpenMessage" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                        <asp:ListItem Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                style="display: none">
                <td class="tdbgleft" style="width: 300px">
                    <strong>过滤敏感词汇：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtSensitivity" runat="server" Rows="6" TextMode="MultiLine" Width="300px"
                        class="x_input"></asp:TextBox>
                    &nbsp;提示：敏感词汇请用","分隔
                </td>
            </tr>
            <asp:HiddenField ID="HiddenUrlWrite" runat="server" />
        </tbody>
        <tbody id="Tabs2" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>网站首页模板：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtIndexTemplate" runat="server" class="l_input"></asp:TextBox><input
                        type="button" value="选择模板" onclick="WinOpenDialog

('../Template/TemplateList.aspx?OpenerText='+escape('TxtIndexTemplate')+'&FilesDir=',650,480)" class="C_input" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>商铺首页模板：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtShopTemplate" runat="server" class="l_input"></asp:TextBox><input
                        type="button" value="选择模板" onclick="WinOpenDialog

('../Template/TemplateList.aspx?OpenerText='+escape('txtShopTemplate')+'&FilesDir=',650,480)" class="C_input" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>默认编辑器：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="EditVer" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">Ckeditor</asp:ListItem>
                        <asp:ListItem Value="2">KindEditor(支持完美word生成)</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>默认风格：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtStylePath" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>风格路径：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtCssDir" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>模板方案：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtTemplateDir" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>是否开启个人空间：</strong>
                </td>
                <td>
                    <asp:RadioButton ID="rdoIzTrue" runat="server" GroupName="IsZone" TabIndex="1" Text="是" />
                    <asp:RadioButton ID="rdoIzFalse" runat="server" GroupName="IsZone" TabIndex="2" Text="否" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>是否开启多用户网店功能：</strong>
                </td>
                <td>
                    <asp:RadioButton ID="rdoImTrue" runat="server" GroupName="IsMall" TabIndex="1" Text="是" />
                    <asp:RadioButton ID="rdoImFalse" runat="server" GroupName="IsMall" TabIndex="2" Text="否" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>后台初始模式界面：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="rblManage" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1">传统模式</asp:ListItem>
                        <asp:ListItem Value="2">站群模式</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs3" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>媒体文件最大值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUpMediaSize" runat="server" class="l_input"></asp:TextBox>&nbsp;KB
                    提示：1 KB = 1024 Byte，1 MB = 1024 KB
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>可上传Flash等媒体文件最大值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUpFlashSize" runat="server" class="l_input"></asp:TextBox>&nbsp;KB
                    提示：1 KB = 1024 Byte，1 MB = 1024 KB
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>网站上传目录：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtUploadDir" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px;">
                    <strong>附件类型限制：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtUploadFileExts" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>可上传附件最大值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtUploadFileMaxSize" runat="server" class="l_input"></asp:TextBox>&nbsp;KB
                    提示：1 KB = 1024 Byte，1 MB = 1024 KB
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px;">
                    <strong>编辑器上传图片类型限制：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUpPicExt" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px; height: 23px;">
                    <strong>可上传图片最大值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUpPicSize" runat="server" class="l_input"></asp:TextBox>&nbsp;KB
                    提示：1 KB = 1024 Byte，1 MB = 1024 KB
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px;">
                    <strong>媒体文件类型限制：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUpMediaExt" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 200px">
                    <strong>是否允许上传文件：</strong>
                </td>
                <td>
                    <asp:RadioButton ID="rdoEufTrue" runat="server" GroupName="EnableUploadFiles" TabIndex="1"
                        Text="是" />
                    <asp:RadioButton ID="rdoEufFalse" runat="server" GroupName="EnableUploadFiles" TabIndex="2"
                        Text="否" />
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="保存设置" OnClick="Button1_Click" class="C_input" />
    <asp:Button ID="btnReset" runat="server" class="C_input" Text="重置"  OnClientClick="return confirm('重置后所有信息都需重新设置,确定要重置吗?')"
        onclick="btnReset_Click" /><br />
    </form>
</body>
</html>
