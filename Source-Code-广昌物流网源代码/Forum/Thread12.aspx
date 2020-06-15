<%@ page language="C#" autoeventwireup="true" inherits="Forum_Thread, App_Web_sfydafba" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>逐浪互动交流平台 Power By ZoomLa!Forum2009</title>

    <script language="JavaScript" type="text/javascript">        var CookiePath = "/", CookieDomain = "";</script>

    <script language="JavaScript" type="text/javascript" src="Utility/global.js"></script>

    <script language="JavaScript" type="text/javascript" src="Utility/BBSXP_Modal.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="archives" title="ZoomLa! 逐浪论坛官方" href="http://www.ZoomLa.cn/archiver/" />
    <link rel="alternate" type="application/rss+xml" title="ZoomLa! 逐浪论坛官方" href="http://www.ZoomLa.cn/rss.aspx" />
    <link rel="stylesheet" type="text/css" href="Themes/default/scriptstyle_1_forumdisplay.css" />
</head>
<body id="viewthread" onkeydown="if(event.keyCode==27) return false;">
    <form id="form1" runat="server">
    <div id="append_parent">
    </div>
    <div id="ajaxwaitid">
    </div>
    <div id="header">
        <div class="wrap s_clear">
            <h2>
                <a href="index.php" title="Discuz! 论坛官方">
                    <img src="images/default/logo.gif" alt="Discuz! 论坛官方" border="0" /></a></h2>
            <div id="umenu">
                <cite><a href="space.php?uid=1328637" class="noborder">bairenju</a></cite> <span
                    class="pipe">|</span> <a href="http://u.discuz.net/home/space.php?uid=1328637" target="_blank">
                        空间</a> <a id="myprompt" href="notice.php" class="new" onmouseover="showMenu({'ctrlid':this.id})">
                            提醒</a> <span id="myprompt_check"></span><a href="pm.php" id="pm_ntc" target="_blank">
                                短消�?/a> <a id="task_ntc" href="task.php" target="_blank">论坛任务</a>
                <span class="pipe">|</span> <a href="memcp.php">个人中心</a> <a href="logging.php?action=logout&amp;formhash=f7c49ccd">
                    退�?/a>
            </div>
            <div id="ad_headerbanner">
            </div>
            <div id="menu">
                <ul>
                    <li class="menu_1"><a href="index.php" hidefocus="true" id="mn_index">论坛</a></li><li
                        class="menu_7" id="G44FuF" onmouseover="showMenu({'ctrlid':this.id})"><a href="#"
                            hidefocus="true" target="_blank" class="dropmenu">产品</a></li><li class="menu_27"><a
                                href="http://zz.comsenz.com/?from_discuznetheader" hidefocus="true" target="_blank"
                                id="mn_?from_discuznetheader_1" style="font-weight: bold; color: red">站长俱乐�?/a></li><li
                                    class="menu_28"><a href="http://sws.discuz.net/?from_discuzheader" hidefocus="true"
                                        target="_blank" id="mn_?from_discuzheader_2" style="font-weight: bold; color: red">
                                        手握手转�?/a></li><li class="menu_2"><a href="search.php" hidefocus="true" id="mn_search">
                                            搜索</a></li><li><a id="mn_plugin_yeswan_front" href="plugin.php?id=yeswan:front">游戏</a></li><li
                                                class="menu_5"><a href="misc.php?action=nav" hidefocus="true" onclick="showWindow('nav', this.href);return false;">
                                                    导航</a></li></ul>

                <script type="text/javascript">
                    var currentMenu = $('mn_') ? $('mn_') : $('mn_index');
                    currentMenu.parentNode.className = 'current';
                </script>

            </div>

            <script type="text/javascript">
                function setstyle(styleid) {
                    str = unescape('tid%3D1535304%26extra%3Dpage%253D1%26page%3D1');
                    str = str.replace(/(^|&)styleid=\d+/ig, '');
                    str = (str != '' ? str + '&' : '') + 'styleid=' + styleid;
                    location.href = 'viewthread.php?' + str;
                }
            </script>

            <ul id="style_switch">
                <li class="current"><a href="###" onclick="setstyle(1)" title="默认风格" style="background: #1E4B7E;">
                    默认风格</a></li><li><a href="###" onclick="setstyle(49)" title="uchome" style="background: #FF8E00;">
                        uchome</a></li><li><a href="###" onclick="setstyle(50)" title="jeans" style="background: #55616A;">
                            jeans</a></li><li><a href="###" onclick="setstyle(47)" title="fervor" style="background: #C36;">
                                fervor</a></li><li><a href="###" onclick="setstyle(53)" title="greenwall" style="background: #51A482;">
                                    greenwall</a></li><li><a href="###" onclick="setstyle(66)" title="greyish-green"
                                        style="background: #009B97;">greyish-green</a></li><li><a href="###" onclick="setstyle(69)"
                                            title="blue" style="background: #244D8F;">blue</a></li></ul>
        </div>
        <div id="myprompt_menu" style="display: none" class="promptmenu">
            <div class="promptcontent">
                <ul class="s_clear">
                    <li style="display: none"><a id="prompt_pm" href="pm.php?filter=newpm" target="_blank">
                        私人消息 (0)</a></li><li style="display: none"><a id="prompt_announcepm" href="pm.php?filter=announcepm"
                            target="_blank">公共消息 (0)</a></li><li><a id="prompt_task" href="task.php" target="_blank">
                                论坛任务 (1)</a></li><li style="display: none"><a id="prompt_systempm" href="notice.php?filter=systempm"
                                    target="_blank">系统消息 (0)</a></li><li style="display: none"><a id="prompt_friend"
                                        href="notice.php?filter=friend" target="_blank">好友消息 (0)</a></li><li><a id="prompt_threads"
                                            href="notice.php?filter=threads" target="_blank">帖子消息 (1)</a></li><li style="display: none">
                                                <a id="prompt_newbietask" href="notice.php?filter=newbietask" target="_blank">()</a></li></ul>
            </div>
        </div>
    </div>

    <script src="forumdata/cache/viewthread.js?Ap3" type="text/javascript"></script>

    <script type="text/javascript">        zoomstatus = parseInt(1); var imagemaxwidth = '600'; var aimgcount = new Array();</script>

    <div id="nav">
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        &raquo; <a href="forum-138-1.html">UCenter Home-安装使用</a> &raquo; 阿纳</div>
    <div id="wrap" class="wrap s_clear threadfix">
        <div class="forumcontrol">
            <table cellspacing="0" cellpadding="0">
                <tr>
                    <td class="modaction">
                    </td>
                    <td>
                        <span class="pageback" id="visitedforums" onmouseover="$('visitedforums').id = 'visitedforumstmp';this.id = 'visitedforums';showMenu({'ctrlid':this.id})">
                            <a href="forum-138-1.html">返回列表</a></span> <span class="replybtn" id="post_reply"
                                prompt="post_reply"><a href="post.php?action=reply&amp;fid=138&amp;tid=1535304" onclick="showWindow('reply', this.href);return false;">
                                    回复</a></span> <span class="postbtn" id="newspecial" prompt="post_newthread" onmouseover="$('newspecial').id = 'newspecialtmp';this.id = 'newspecial';showMenu({'ctrlid':this.id})">
                                        <a href="post.php?action=newthread&amp;fid=138" onclick="showWindow('newthread', this.href);return false;">
                                            发帖</a></span>
                    </td>
                </tr>
            </table>
        </div>
        <div id="postlist" class="mainbox viewthread">
            <div id="post_12919594">
                <table id="pid12919594" summary="pid12919594" cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="postauthor" rowspan="2">
                            <div class="popupmenu_popup userinfopanel" id="userinfo12919594" style="display: none;
                                position: absolute;">
                                <div class="popavatar">
                                    <div id="userinfo12919594_ma">
                                    </div>
                                    <ul class="profile_side">
                                        <li class="pm"><a href="" onclick="hideMenu('userinfo12919594');showWindow('sendpm', this.href);return false;"
                                            title="发短消息">发短消息</a></li>
                                        <li class="buddy"><a href="" target="_blank" id="ajax_buddy_0" title="加为好友" onclick="ajaxmenu(this, 3000);doane(event);">
                                            加为好友</a></li>
                                    </ul>
                                </div>
                                <div class="popuserinfo">
                                    <p>
                                        <a href="" target="_blank">bairenju</a> <em>当前在线 </em>
                                    </p>
                                    <dl class="s_clear">
                                        <dt>UID</dt><dd>1328637&nbsp;</dd><dt>帖子</dt><dd>1&nbsp;</dd><dt>精华</dt><dd>0&nbsp;</dd><dt>积分</dt><dd>1&nbsp;</dd><dt>威望</dt><dd>0
                                            &nbsp;</dd><dt>金币</dt><dd>0 �?nbsp;</dd><dt>体力</dt><dd>1 &nbsp;</dd><dt>激�?/dt><dd>0
                                                &nbsp;</dd><dt>阅读权限</dt><dd>10&nbsp;</dd><dt>在线时间</dt><dd>1 小时&nbsp;</dd><dt>注册时间</dt><dd>2009-12-24&nbsp;</dd><dt>最后登�?/dt><dd>2010-01-04&nbsp;</dd></dl>
                                    <div class="imicons">
                                        <a href="http://u.discuz.net/home/space.php?uid=1328637" target="_blank" title="个人空间">
                                            <img src="images/default/home.gif" alt="个人空间" /></a> <a href="space.php?uid=1328637"
                                                target="_blank" title="查看详细资料">
                                                <img src="images/default/userinfo.gif" alt="查看详细资料" /></a>
                                    </div>
                                    <div id="avatarfeed">
                                        <span id="threadsortswait"></span>
                                    </div>
                                </div>
                            </div>
                            <a name="newpost"></a>
                            <div>
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="PostID" Width="100%">
                                    <ItemTemplate>
                                        <div class="avatar" onmouseover="showauthor(this, 'userinfo12919594')">
                                            <a href="space.php?uid=1328637" target="_blank">
                                                <img src="http://uc.discuz.net/data/avatar/001/32/86/37_avatar_middle.jpg" onerror="this.onerror=null;this.src='http://uc.discuz.net/images/noavatar_middle.gif'" /></a></div>
                                        <p>
                                            <asp:Label ID="lblUserName" runat="server"><%#Eval("PostAuthor") %></asp:Label>
                                        </p>
                                        </div>
                                        <p>
                                            <img src="" alt="Rank: 1" /></p>
                                        <dl class="profile s_clear">
                                            <dt>帖子</dt><dd>1&nbsp;</dd>
                                            <dt>积分</dt><dd>1&nbsp;</dd><dt>威望</dt><dd>0 &nbsp;</dd>
                                            <dt>金币</dt><dd>0 �?nbsp;</dd><dt>体力</dt><dd>1 &nbsp;</dd>
                                            <dt>注册时间</dt><dd>2009-12-24&nbsp;</dd></dl>
                                        </td>
                                        <td class="postcontent">
                                            <div id="threadstamp">
                                            </div>
                                            <div class="postinfo">
                                                <strong><a title="复制本帖链接" id="postnum12919594" href="javascript:;" onclick="setCopy('http://www.discuz.net/viewthread.php?tid=1535304', '帖子地址已经复制到剪贴板')">
                                                    <font color="red"><b>楼主</b></font></a> <em class="rpostno" title="跳转到指定楼�?>跳转�?
                                                        <input id="rpostnovalue" size="3" type="text" class="txtarea" onkeydown="if(event.keyCode==13) {$('rpostnobtn').click();return false;}" /><span
                                                            id="rpostnobtn" onclick="window.location='redirect.php?ptid=1535304&ordertype=0&postno='+$('rpostnovalue').value">&raquo;</span></em>
                                                    <a href="" class="left">倒序看帖</a> </strong>
                                                <div class="posterinfo">
                                                    <div class="pagecontrol">
                                                        &nbsp;<div class="msgfsize right">
                                                        </div>
                                                    </div>
                                                    <div class="authorinfo">
                                                        <img class="authicon" id="authicon12919594" src="images/common/online_member.gif"
                                                            onclick="showauthor(this, 'userinfo12919594');" />
                                                        <em id="authorposton12919594">
                                                            <asp:Label ID="lblUserName1" runat="server"></asp:Label>
                                                            发表�?<span title="2010-01-04 13:54">20&nbsp;分钟�?/span></em> | <a href="" rel="nofollow">
                                                                只看该作�?/a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="defaultpost">
                                                <div class="ad_textlink2" id="ad_thread2_0">
                                                </div>
                                                <div class="ad_pip" id="ad_thread3_0">
                                                </div>
                                                <div id="ad_thread4_0">
                                                </div>
                                                <div class="postmessage firstpost">
                                                    <div id="threadtitle">
                                                        <h1>
                                                            &nbsp;<asp:Label ID="lblStyle" runat="server"></asp:Label>
                                                            <asp:Label ID="lblTitle" runat="server"></asp:Label>
                                                        </h1>
                                                    </div>
                                                    <div class="t_msgfontfix">
                                                        <table cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td class="t_msgfont" id="postmessage_12919594">
                                                                    <asp:Label ID="lblContent" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                    </ItemTemplate>
                                </asp:DataList>
                                <div id="post_rate_div_12919594">
                                    </asp:Label></div>
                                <div class="useraction nrate">
                                    <a href="javascript:;" onclick="showDialog($('favoritewin').innerHTML, 'info', '收藏/关注')">
                                        收藏</a> <a href="javascript:;" id="share" onclick="showDialog($('sharewin').innerHTML, 'info', '分享')">
                                            分享</a>
                                    <div id="ajax_recommendlink">
                                        <div id="recommendv" onclick="switchrecommendv()" title="主题评价指数" style="display: none">
                                            0</div>
                                        <ul id="recommendav" onclick="switchrecommendv()" title="主题评价指数" class="recommend_act s_clear">
                                            <li id="recommendv_add" title="顶的人数">0</li>
                                            <li id="recommendv_subtract" title="踩的人数">0</li>
                                        </ul>
                                        <ul class="recommend_act s_clear">
                                            <li><a id="recommend_add" href="misc.php?action=recommend&amp;do=add&amp;tid=1535304"
                                                onclick="ajaxmenu(this, 3000, 1, 0, '43', 'recommendupdate(1)');;doane(event);">
                                                �?/a></li>
                                            <li><a id="recommend_subtract" href="misc.php?action=recommend&amp;do=subtract&amp;tid=1535304"
                                                onclick="ajaxmenu(this, 3000, 1, 0, '43', 'recommendupdate(-1)');;doane(event);">
                                                �?/a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
            </div>
            </td></tr>
            <tr>
                <td class="postcontent postbottom">
                    <div class="ad_textlink1" id="ad_thread1_0">
                    </div>
                </td>
            </tr>
            <tr>
                <td class="postauthor">
                </td>
                <td class="postcontent">
                    <div class="postactions">
                        <div class="postact s_clear">
                            <em><a class="fastreply" href="post.php?action=reply&amp;fid=138&amp;tid=1535304&amp;reppost=12919594&amp;extra=page%3D1&amp;page=1"
                                onclick="showWindow('reply', this.href);return false;">回复</a> <a class="repquote"
                                    href="post.php?action=reply&amp;fid=138&amp;tid=1535304&amp;repquote=12919594&amp;extra=page%3D1&amp;page=1"
                                    onclick="showWindow('reply', this.href);return false;">引用</a> <a class="editpost"
                                        href="post.php?action=edit&amp;fid=138&amp;tid=1535304&amp;pid=12919594&amp;page=1">
                                        编辑</a></em>
                            <p>
                                &nbsp;</p>
                        </div>
                    </div>
                </td>
            </tr>
            <tr class="threadad">
                <td class="postauthor">
                </td>
                <td class="adcontent">
                    <div class="ad_column" id="ad_interthread">
                    </div>
                </td>
            </tr>
            </table>
        </div>
        <div id="post_12919599">
        </div>
    </div>
    <div id="postlistreply" class="mainbox viewthread">
        <div id="post_new" class="viewthread_table" style="display: none">
        </div>
    </div>
    <input type="hidden" name="formhash" value="f7c49ccd" />
    <input type="hidden" name="optgroup" />
    <input type="hidden" name="operation" />
    <input type="hidden" name="listextra" value="page%3D1" />
    <div class="forumcontrol s_clear">
        <table cellspacing="0" cellpadding="0" class="narrow">
            <tr>
                <td class="modaction">
                </td>
                <td>
                    <span class="pageback" id="visitedforums" onmouseover="$('visitedforums').id = 'visitedforumstmp';this.id = 'visitedforums';showMenu({'ctrlid':this.id})">
                        <a href="forum-138-1.html">返回列表</a></span>
                </td>
            </tr>
        </table>
    </div>

    <script type="text/javascript">
        var postminchars = parseInt('10');
        var postmaxchars = parseInt('50000');
        var disablepostctrl = parseInt('0');
    </script>

    <div id="f_post" class="mainbox viewthread">
        <table cellspacing="0" cellpadding="0">
            <tr>
                <td class="postauthor">
                    <div class="avatar">
                        <img src="http://uc.discuz.net/data/avatar/001/32/86/37_avatar_middle.jpg" onerror="this.onerror=null;this.src='http://uc.discuz.net/images/noavatar_middle.gif'" /></div>
                </td>
                <td class="postcontent">
                    <input type="hidden" name="formhash" value="f7c49ccd" />
                    <input type="hidden" name="subject" value="" />
                    <input type="hidden" name="usesig" value="0" />
                    <span id="fastpostreturn"></span>
                    <div class="editor_tb">
                        <span class="right"><a href="post.php?action=reply&amp;fid=138&amp;tid=1535304" onclick="return switchAdvanceMode(this.href)">
                            高级模式</a> <span class="pipe">|</span> <span id="newspecialtmp" onmouseover="$('newspecial').id = 'newspecialtmp';this.id = 'newspecial';showMenu({'ctrlid':this.id})">
                                <a href="post.php?action=newthread&amp;fid=138" onclick="showWindow('newthread', this.href);return false;">
                                    发新话题</a></span> </span>
                        <link rel="stylesheet" type="text/css" href="forumdata/cache/style_1_seditor.css?Ap3" />
                        <div>
                            <a href="javascript:;" title="粗体" class="tb_bold" onclick="seditor_insertunit('fastpost', '[b]', '[/b]')">
                                B</a> <a href="javascript:;" title="颜色" class="tb_color" id="fastpostforecolor" onclick="showColorBox(this.id, 2, 'fastpost')">
                                    Color</a> <a href="javascript:;" title="图片" class="tb_img" onclick="seditor_insertunit('fastpost', '[img]', '[/img]')">
                                        Image</a> <a href="javascript:;" title="插入链接" class="tb_link" onclick="seditor_insertunit('fastpost', '[url]', '[/url]')">
                                            Link</a> <a href="javascript:;" title="引用" class="tb_quote" onclick="seditor_insertunit('fastpost', '[quote]', '[/quote]')">
                                                Quote</a> <a href="javascript:;" title="代码" class="tb_code" onclick="seditor_insertunit('fastpost', '[code]', '[/code]')">
                                                    Code</a> <a href="javascript:;" class="tb_smilies" id="fastpostsmilies" onclick="showMenu({'ctrlid':this.id,'evt':'click','layer':2});return false">
                                                        Smilies</a>

                            <script src="forumdata/cache/smilies_var.js?Ap3" type="text/javascript" reload="1"></script>

                            <script type="text/javascript" reload="1">                                smilies_show('fastpostsmiliesdiv', 8, 'fastpost');</script>

                        </div>
                    </div>
                    <textarea rows="5" cols="80" name="message" id="fastpostmessage" onkeydown="seditor_ctlent(event, 'fastpostvalidate($(\'fastpostform\'))');"
                        tabindex="4" class="txtarea"></textarea>
                    <p>
                        <button type="submit" name="replysubmit" id="fastpostsubmit" value="replysubmit"
                            tabindex="5">
                            发表回复</button>
                        <input id="fastpostrefresh" type="checkbox" />
                        <label for="fastpostrefresh">
                            回帖后跳转到最后一�?/label></p>

                    <script type="text/javascript">                        if (getcookie('discuz_fastpostrefresh') == 1) { $('fastpostrefresh').checked = true; }</script>

                    </p>
                </td>
            </tr>
        </table>
    </div>
    <div id="authornewfeed_menu" style="display: none">
    </div>

    <script type="text/javascript" src="http://u.discuz.net/home/api/discuz.php?pagetype=viewthread&amp;status=0&amp;uid=1328637&amp;infosidestatus=0&amp;feedpostnum=1&amp;updateuid=1328637&amp;pid=12919594&amp;plugin=1"></script>

    <ul class="popupmenu_popup" id="visitedforums_menu" style="display: none">
        <li><a href="forumdisplay.php?fid=10&amp;sid=ckOE2e">程序发布</a></li></ul>
    <div id="favoritewin" style="display: none">
        <h5>
            <a href="javascript:;" onclick="ajaxget('my.php?item=favorites&tid=1535304', 'favorite_msg');return false;"
                class="lightlink">[收藏此主题]</a>&nbsp; <a href="javascript:;" onclick="ajaxget('my.php?item=attention&action=add&tid=1535304', 'favorite_msg');return false;"
                    class="lightlink">[关注此主题的新回复]</a>
        </h5>
        <span id="favorite_msg"></span>
    </div>
    <div id="sharewin" style="display: none">
        <h5>
            <a href="javascript:;" onclick="setCopy('阿纳\nhttp://www.discuz.net/viewthread.php?tid=1535304', '帖子地址已经复制到剪贴板<br />您可以用快捷�?Ctrl + V 粘贴�?QQ、MSN 里�?)"
                class="lightlink" />[通过 QQ、MSN 分享给朋友]</a><br />
            <br />
            <a href="javascript:;" class="lightlink" onclick="hideWindow('confirm');showWindow('sendpm', 'pm.php?action=new&operation=share&tid=1535304');">
                [通过站内短消息分享给朋友]</a>
        </h5>
    </div>
    </div><ul class="popupmenu_popup headermenu_popup" id="G44FuF_menu" style="display: none">
        <li><a href="http://www.comsenz.com/downloads/install" hidefocus="true" target="_blank">
            程序下载</a></li><li><a href="http://www.comsenz.com/downloads/styles" hidefocus="true"
                target="_blank">风格下载</a></li><li><a href="http://www.comsenz.com/downloads/plugins"
                    hidefocus="true" target="_blank">插件下载</a></li><li><a href="http://www.comsenz.com/purchase"
                        hidefocus="true" target="_blank">服务购买</a></li></ul>
    <link rel="stylesheet" type="text/css" href="forumdata/cache/style_1_task_newbie.css?Ap3" />
    <div id="task_mini" class="task_mini" onclick="this.style.display='none';showWindow('task', 'task.php?action=newbie');">
        <div>
        </div>
    </div>

    <script src="forumdata/cache/prompt.lang.js?Ap3" type="text/javascript"></script>

    <script type="text/javascript" reload="1">
        var allobjs = document.body.getElementsByTagName('*');
        var promptobjs = [];
        var currentPromptKey = 'post_reply';
        var promptkey = '';

        for (var i = 0; i < allobjs.length; i++) {
            if (allobjs[i].attributes && allobjs[i].attributes['prompt']) {
                promptkey = allobjs[i].attributes['prompt'].nodeValue;
                if (promptkey.indexOf('_') !== -1) {
                    promptkey = promptkey.substr(0, promptkey.indexOf('_'));
                }
                if (promptkey == currentPromptKey || (currentPromptKey.indexOf('_') !== -1 && promptkey == currentPromptKey.substr(0, currentPromptKey.indexOf('_')))) {
                    promptobjs.push(allobjs[i]);
                    allobjs[i].onblur = function(e) { promptnextobj(this) };
                }
            }
        }

        if (promptobjs[0]) {
            _attachEvent(window, 'load', function() { showPrompt(promptobjs[0].id, 'mouseover', promptmsg[promptobjs[0].attributes['prompt'].nodeValue], '5000'); });
        }

        function promptnextobj(obj) {
            for (var i = 0; i < promptobjs.length - 1; i++) {
                if (promptobjs[i] == obj) {
                    break;
                }
            }
            if (promptobjs[i + 1]) {
                showPrompt(promptobjs[i + 1].id, 'mouseover', promptmsg[promptobjs[i + 1].attributes['prompt'].nodeValue], '5000');
            }
        }
    </script>

    <div class="ad_footerbanner" id="ad_footerbanner1">
    </div>


    </form>
</body>
</html>
</html> 