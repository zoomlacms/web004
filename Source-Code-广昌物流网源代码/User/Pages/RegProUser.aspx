﻿<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_RegProUser, App_Web_orbb5nmy" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>注册企业黄页</title>
    <link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
    <link rel="stylesheet" type="text/css" href="../skin/user_user.css" />

    <script src="../../Common/Common.js" type="text/javascript"></script>

    <script src="../../Common/RiQi.js" type="text/javascript"></script>

    <style type="text/css">
        body
        {
            overflow-x: hidden;
        }
    </style>

    <script>
        function SelectValues(id) {
            window.open('/Common/OptionManage.aspx?id=' + id, '', 'width=600,height=450,resizable=0,scrollbars=yes');
        }
    </script>

    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>

    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>

    <link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="/Plugins/kindeditor/kindeditor.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body style="overflow-x: hidden">
    <form id="form1" runat="server">
    <div class="us_topinfo">
        <div class="us_showinfo">
            <h1>
                <span class="us_showinfo1">您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span>
                您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                    ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                    </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                        &gt;&gt; </span><span><a title="注册企业黄页" href="/User/Pages/RegProUser.aspx">注册企业黄页</a></span></span>
            </h1>
        </div>
        <div class="cleardiv">
        </div>
    </div>
    <div class="us_seta" style="margin-top: 10px;">
        <asp:Label ID="Label1" runat="server" Text="● 由于您未申请和提交黄页信息,下面我们来花三分钟来注册企业黄页"></asp:Label>
    </div>
    <div class="us_seta" style="margin-top: 10px; float: left;" id="regpage" runat="server">
        <h1 style="text-align: center">
            <asp:Label ID="Label2" runat="server" Text="注册企业黄页"></asp:Label></h1>
            <table>
    <tr>
        <td style="width: 30%;line-height: 30px; height: 30px; text-align: center;"> 会员账号:</td>
        <td style="width: 70%;line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
        <asp:Label ID="Username" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr>
        <td style="width: 30%; float: left; line-height: 30px; height: 30px; text-align: center;"> 黄页类型:</td>
        <td style="width: 70%;line-height: 30px; height: 30px; padding-left: 5px; text-align: left;"> 
        <asp:RadioButtonList ID="Styleids" runat="server" AutoPostBack="True" RepeatDirection="Horizontal"
        Height="24px" RepeatColumns="4" Style="margin-top: 0px; padding-top: 0px; line-height: 30px">
        </asp:RadioButtonList></td>
    </tr>
     <tr>
        <td style="width: 30%; float: left; line-height: 30px; height: 30px; text-align: center;"> 企业名称:</td>
        <td style="width: 70%;line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
        <asp:TextBox ID="Proname" runat="server" Width="313px"></asp:TextBox></td>
    </tr>
    <tr>
        <td style="width: 35%; float: left; line-height: 30px; height: 30px; text-align: center;"> 二级域名:</td>
        <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
         <asp:TextBox ID="SeDomain" runat="server" Width="60px"></asp:TextBox>.<%=ZoomLa.Components.SiteConfig.SiteOption.freedomain%></td>
    </tr>
    <tr>
        <td style="width: 35%; float: left; line-height: 30px; height: 30px; text-align: center;"> 企业LOGO:</td>
        <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
        <table border='0' cellpadding='0' cellspacing='1' width='100%'>
        <tr class='tdbg'>
            <td>
                <asp:TextBox ID="txt_logos" runat="server" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr class='tdbg'>
            <td>
                <iframe id="Iframe1" src="/Common/UserUpload.aspx?FieldName=txt_logos" marginheight="0"
                    marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
            </td>
        </tr>
        </table></td>
    </tr>
    <tr>
        <td style="width: 35%; float: left; line-height: 30px; height: 30px; text-align: center;"> 企业说明:</td>
        <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
        <asp:TextBox ID="PageInfo" runat="server" Height="176px" TextMode="MultiLine" Width="463px"></asp:TextBox></td>
    </tr>
    </table>
       <ul> <li style="width: 100%; text-align;">&nbsp;<asp:Literal ID="ModelHtml" runat="server"></asp:Literal></li>
        <li style="width: 100%; text-align: right; float: right; line-height: 30px"></li>
        <li style="width: 100%; float: right; line-height: 30px; text-align: center"></ul>
<table>
    <tr>
        <td colspan="2"> <asp:HiddenField ID="HdnNode" runat="server" />
        <asp:HiddenField ID="HdnID" runat="server" />
        <asp:HiddenField ID="HdnModel" runat="server" />
        <asp:Button ID="BtnSubmit" runat="server" Text="提交我的黄页信息" OnClick="BtnSubmit_Click" />
        &nbsp;&nbsp;
        <input id="Button1" type="button" value="取消" onclick="location.href='../MyInfo.aspx';" /></td>
    </tr>
</table>
    </div>
    <div class="us_seta" style="margin-top: 10px; line-height: 28px; padding-left: 20px;"
        id="Auditing" runat="server">
        正在审核中......! 请等待管理员开通您的黄页功能! <a href=""></a>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">修改我提交的企业信息!</asp:LinkButton><br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
