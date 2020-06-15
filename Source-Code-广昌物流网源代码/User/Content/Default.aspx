<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Content.Default, App_Web_y3ifdjqg" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>会员中心>> 内容管理</title>
    <link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
    <link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
    <script language="javascript" type="text/javascript">
        function SetWinHeight(obj) {
            var win = obj;
            if (document.getElementById) {
                if (win && !window.opera) {
                    if (win.contentDocument && win.contentDocument.body.offsetHeight) {
                        win.height = win.contentDocument.body.offsetHeight;
                        win.width = win.contentDocument.body.offsetWidth;
                    }
                    else if (win.Document && win.Document.body.scrollHeight) {
                        win.height = win.Document.body.scrollHeight;
                        win.width = win.Document.body.scrollWidth;
                    }
                }
            }
        }
        function JumpToMain(val) {
            var objLeft = window.frames['main_left'];
            var objContent = window.frames['main_right'];
            switch (val) {
                default:
                case 1:
                    try {
                        objLeft.location.href = "NodeTree.aspx?t=1";
                        objContent.location.href = "MyContent.aspx";
                    } catch (Error)
            { }
                    break;
                case 2:
                    try {
                        objLeft.location.href = "NodeTree.aspx?t=2";
                        objContent.location.href = "MyContent.aspx?type=UnAudit";
                    } catch (Error)
            { }
                    break;
                case 3:
                    try {
                        objLeft.location.href = "NodeTree.aspx?t=3";
                        objContent.location.href = "MyContent.aspx?type=Audit";
                    } catch (Error)
            { }
                    break;
                case 4:
                    try {
                        objLeft.location.href = "NodeTree.aspx?t=4";
                        objContent.location.href = "MyFavori.aspx";
                    } catch (Error)
            { }
                    break;
                case 5:
                    try {
                        objLeft.location.href = "NodeTree.aspx?t=5";
                        objContent.location.href = "MyComment.aspx"
                    } catch (Error)
             { }
                    break;
                case 6:
                    try {
                        objLeft.location.href = "NodeTree.aspx?t=6";
                        objContent.location.href = "Pub.aspx";
                    } catch (Error)
             { }
                    break;
            }
        }
    </script>
    <%--<style type="text/css">
        #I1
        {
            height: 632px;
        }
    </style>--%>
</head>
<body style="width:100%">
    <%--<!-- 顶部代码布局 -->
<div id="m_top">
	<h1 class="m_logo"></h1>
	<h1 style="float:right;">
		<ul>
			<li><a href="/" target="_blank">首页</a></li>
			<li><a href="###">新闻</a></li>
			<li><a href="###">图库</a></li>
			<li><a href="###">下载</a></li>
			<li><a href="###">商城</a></li>
			<li><a href="###">论坛</a></li>
			<li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li>		</ul>
	</h1>
</div>
<div class="s_body">
    <form id="form1" runat="server">
    <div style="margin-top:10px;border:1px solid #b7b7b7;padding:10px;width:98%">
        <a href="###" onclick="JumpToMain(1);">所有信息</a>
        <a href="###" onclick="JumpToMain(2);">待审核的信息</a>                       
        <a href="###" onclick="JumpToMain(3);">已审核的信息</a>
        <a href="###" onclick="JumpToMain(4);">我收藏的信息</a>                       
        <a href="###" onclick="JumpToMain(5);">我发表的评论</a>
        <a href="###" onclick="JumpToMain(6);">我的互动</a>
        <a href="/User/Default.aspx">会员中心</a>
        
    </div>--%>
    <%--<!-- 底部 -->
<div class="cleardiv"></div>
<div class="m_copyright">
	<div><a href=#>关于我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></div>
	<h1>&copy;2009 官方网站 版权所有。</h1>
</div>
<!-- 底部 -->--%>
    <%--<script type="text/javascript">
    <!--
    JumpToMain(<%= Tnum %>);
    //-->
 </script>--%>
    <div class="s_body" style=" width:100%">
        <div class="s_bleft" style=" width:20%; float: left;">
            <iframe frameborder="0" width="100%" height="800px" src="NodeTree.aspx" scrolling="auto"
                id="I1" name="I1"></iframe>
            <%--<iframe frameborder="0" width="200px" src="NodeTree.aspx" scrolling="no" id="I1" height="600px"
            name="I1""></iframe>--%>
        </div>
        <div style="width: 80%; float: left">
            <iframe id="I2" style="border-style: none; border-color: inherit; border-width: 0px;
                width: 100%;" height="800px" src="MyContent.aspx" frameborder="0" scrolling="no"
                name="I2"></iframe>
            <%--  <iframe id="I2" src="MyContent.aspx" scrolling="no" frameborder="0" name="I2" width="700px" height="600px" onload="Javascript:SetWinHeight(this)" ></iframe>--%>
        </div>
    </div>
</body>
</html>
