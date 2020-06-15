<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_GuildMemberBBS, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script language="JavaScript" type="text/javascript">        var CookiePath = "/", CookieDomain = "";</script>

    <script language="JavaScript" type="text/javascript" src="../../Forum/Utility/global.js"></script>

    <script language="JavaScript" type="text/javascript" src="../../Forum/Utility/BBSXP_Modal.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="archives" title="ZoomLa! 逐浪论坛官方" href="http://www.ZoomLa.cn/archiver/" />
    <link rel="alternate" type="application/rss+xml" title="ZoomLa! 逐浪论坛官方" href="http://www.ZoomLa.cn/rss.aspx" />
    <link rel="stylesheet" type="text/css" href="../../Forum/Themes/default/scriptstyle_1_forumdisplay.css" />
    <script type="text/javascript">
        function aColor() {
            var a = document.getElementsByTagName("a");
            for (var i = 0; i < a.length; i++) {
                var aHref = a[i].href;
                var aBool = aHref.indexOf("ShowForum");
                if (a[i].innerHTML == document.getElementById("pap").innerHTML && aBool != -1) {
                    a[i].style.color = "#FFFFFF";
                    a[i].style.backgroundColor = "#00ACE6";
                }
            }
        }
    </script>
    <div id="wrap" class="wrap s_clear">
        <div class="main">
            <div class="content">
                <div id="forumheader" class="s_clear">
                    <h1 style="">
                        <asp:Literal ID="Forumtxt" runat="server"></asp:Literal></h1>
                    <p class="forumstats">
                        [ <strong>
                            <asp:Literal ID="TotalThreads" runat="server"></asp:Literal></strong> 主题 /
                        <asp:Literal ID="TotalPosts" runat="server"></asp:Literal>
                        回复 ]</p>
                    <div class="forumaction" style="float: right">
                    </div>
                    <p class="channelinfo">
                        <asp:Literal ID="ForumDescription" runat="server"></asp:Literal></p>
                    <p id="modedby">
                        <asp:Literal ID="Moderated" runat="server"></asp:Literal></p>
                </div>
                <div id="modarea" class="s_clear" runat="server">
                    <div class="list">
                        <h3>
                            <a href="javascript:;" id="tab_2" class="current">本版规则</a></h3>
                    </div>
                    <div id="modarea_c" style="">
                        <div id="tab_c_2" class="rule">
                            <asp:Literal ID="rule" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
                <asp:Literal ID="FourmList" runat="server"></asp:Literal>
                <div class="pages_btns s_clear">
                    <div class="pages" id="lian">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
                    <span id="visitedforums" class="pageback"><a href="Default.aspx">返回首页</a></span>
                    <span class="postbtn" id="newspecial"><a href="Topic.aspx?action=newthread&fid=<%=fid %>">
                        发帖</a></span><div style="display: none" id="pap">
                            <%=pageIndex%></div>
                </div>
                <div class="gnstyle">
                    <a href="ShowForum.aspx?fid=<%=fid%>&type="><strong class="colorlan">全部</strong></a>
                    &nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=安装">安装</a>&nbsp;|&nbsp;<a
                        href="ShowForum.aspx?fid=<%=fid%>&type=使用"> 使用</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=疑问">疑问</a>&nbsp;|&nbsp;
                    <a href="ShowForum.aspx?fid=<%=fid%>&type=不是BUG">不是BUG</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=已答复"><span
                        class="colorhong">已答复</span></a>&nbsp;| &nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=有待解决"><span
                            class="colorhuang">有待解决</span></a>&nbsp;| &nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=分享">分享</a>&nbsp;|&nbsp;<a
                                href="ShowForum.aspx?fid=<%=fid%>&type=经验">经验</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=已解决"><span
                                    class="colorlv">已解决</span></a>
                </div>
                <div id="threadlist" class="threadlist datalist" style="position: relative;">
                    <table summary="forum_29" cellspacing="0" cellpadding="0" class="datatable" width="100%">
                        <thead class="colplural">
                            <tr>
                                <td colspan="2">
                                    类型:<a href="ShowForum.aspx?fid=<%=fid%>&type=">全部</a> | <a href="ShowForum.aspx?fid=<%=fid%>&type=投票"> 投票</a>
                                </td>
                                <th>
                                    <ul class="itemfilter s_clear">
                                        <li>主题:</li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type="><span>全部</span></a></li>
                                        <li><a class="filter" href="ShowForum.aspx?fid=<%=fid%>&type=精华"><span>精华</span></a></li>
                                        <li class="pipe">|</li>
                                        <li>时间:</li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=一天"><span>一天</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=两天"><span>两天</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=周"><span>周</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=月"><span></span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=季"><span>季</span></a></li>
                                        <li class="pipe">|</li>
                                        <li><a class="order " href="ShowForum.aspx?fid=<%=fid%>&type=热门">热门</a></li>
                                    </ul>
                                </th>
                                <td class="author" style="text-align: right;">
                                </td>
                                <td> <a href="ShowForum.aspx?fid=<%=fid%>&type=" class="order ">作者/时间</a></td>
                                <td class="nums">
                                    <a href="ShowForum.aspx?fid=<%=fid%>&type=回复" class="order ">回复</a>&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=查看"
                                        class="order ">查看</a>
                                </td>
                                <td class="lastpost">
                                    <cite><a href="ShowForum.aspx?fid=<%=fid%>&type=最后发表" class="order order_active">最后发表</a></cite>
                                </td>
                            </tr>
                        </thead>
                        <div style="z-index: 2;">
                            <asp:Repeater ID="ShowList" runat="server">
                                <ItemTemplate>
                                    <tbody id="stickthread_<%#Eval("ThreadID") %>">
                                        <tr>
                                            <td class="folder">
                                                <a href="Thread.aspx?ThreadID=<%#Eval("ThreadID")%>&fid=<%=Request.QueryString["fid"] %>"
                                                    title="新窗口打开" target="_blank">
                                                    <%#GetThreadImg(Eval("ThreadID", "{0}"))%>
                                                </a>
                                            </td>
                                            <td class="icon">
                                                <%#GetThreadEmoticon(Eval("ThreadID", "{0}"))%>
                                            </td>
                                            <th class="subject new">
                                                <label>
                                                    &nbsp;</label>
                                                <span id="thread_<%#Eval("ThreadID")%>"><a href="ShowForum.aspx?fid=<%=fid%>&type=<%#Eval("Category") %>">
                                                    <%#getcategory(Eval("Category","{0}"))%></a><a href="Thread.aspx?ThreadID=<%#Eval("ThreadID")%>&fid=<%=Request.QueryString["fid"] %>"><%#Eval("Topic")%></a></span>
                                            </th>
                                            <td class="author" align="right">
                                                <%#GetJingImg(Eval("ThreadID", "{0}"))%>
                                            </td>
                                            <td class="author" style="padding-left: -10px;">
                                                <cite><a href="#">
                                                    <%#Eval("PostAuthor")%></a> </cite><em>
                                                        <%#Eval("PostTime", "{0:...d}")%></em>
                                            </td>
                                            <td class="nums">
                                                <strong>
                                                    <%#Eval("TotalReplies")%></strong>/<em><%#Eval("TotalViews")%></em>
                                            </td>
                                            <td class="lastpost">
                                                <cite><a href="space.aspx?username=<%#Eval("LastName")%>">
                                                    <%#Eval("LastName")%></a></cite> <em><a href=""><span title="<%#Eval("LastTime")%>">
                                                        <%#GetDayDiff(Eval("LastTime","{0}")) %></span></a></em>
                                            </td>
                                        </tr>
                                    </tbody>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <tbody>
                            <tr> <td class="folder"></td>
                                <td>  &nbsp; </td>
                                <th class="subject"><b>版块主题</b></th>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td> &nbsp;</td>
                                <td> &nbsp;</td>
                            </tr>
                        </tbody>
                        <asp:Repeater ID="PostList" runat="server">
                            <ItemTemplate>
                                <tbody id="normalthread_1528773">
                                    <tr>
                                        <td class="folder">
                                            <a href="Thread.aspx?ThreadID=<%#Eval("ThreadID")%>&fid=<%=Request.QueryString["fid"] %>"
                                                title="新窗口打开" target="_blank">
                                                <%#GetThreadImg(Eval("ThreadID", "{0}"))%>
                                            </a>
                                        </td>
                                        <td class="icon">
                                            <%#GetThreadEmoticon(Eval("ThreadID", "{0}"))%>
                                        </td>
                                        <th class="subject new">
                                            <label>
                                                &nbsp;
                                            </label>
                                            <span id="thread_<%#Eval("ThreadID")%>"><a href="ShowForum.aspx?fid=<%=fid%>&type=<%#Eval("Category") %>">
                                                <%#getcategory(Eval("Category","{0}"))%></a><a href="Thread.aspx?ThreadID=<%#Eval("ThreadID")%>&fid=<%=Request.QueryString["fid"] %>"><%#Eval("Topic")%></a></span>
                                        </th>
                                        <td class="author" align="right">
                                            <%#GetJingImg(Eval("ThreadID", "{0}"))%>
                                        </td>
                                        <td class="author">
                                            <cite><a href="#">
                                                <%#Eval("PostAuthor")%></a> </cite><em>
                                                    <%#Eval("PostTime", "{0:d}")%></em>
                                        </td>
                                        <td class="nums">
                                            <strong>
                                                <%#Eval("TotalReplies")%></strong>/<em><%#Eval("TotalViews")%></em>
                                        </td>
                                        <td class="lastpost">
                                            <cite><a href="space.aspx?username=<%#Eval("LastName")%>">
                                                <%#Eval("LastName")%></a></cite> <em><a href="redirect.php?tid=1528773&goto=lastpost#lastpost">
                                                    <span title="<%#Eval("LastTime")%>">
                                                        <%#GetDayDiff(Eval("LastTime","{0}")) %></span></a></em>
                                        </td>
                                    </tr>
                                </tbody>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </div>
                <div class="pages_btns s_clear">
                    <div class="pages">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </div>
                    <span id="visitedforums" class="pageback"><a href="Default.aspx">返回首页</a></span>
                    <span class="postbtn" id="newspecialtmp"><a href="Topic.aspx?action=newthread&fid=<%=fid %>">
                        发帖</a></span>
                </div>
            </div>
        </div>
    </div>
    <div id="ad_footerbanner" runat="server">
        <asp:Panel ID="panelpage" runat="server">
            总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
            <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
            <asp:Label ID="FirstPage" runat="server"></asp:Label>
            <asp:Label ID="RePage" runat="server"></asp:Label>
            <asp:Label ID="NextPage" runat="server"></asp:Label>
            <asp:Label ID="EndPage" runat="server"></asp:Label>
        </asp:Panel>
    </div>
    <div id="footer">
        <div class="wrap s_clear">
            <div id="footlink">
                <p>
                    <strong><a href="http://www.zoomla.cn/" target="_blank">ZoomLa! Technology Ltd.</a></strong>
                    ( <a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备09077823号</a>)<span
                        class="pipe">|</span><a href="mailto:tech#zoomla.cn">联系我们</a> <span class="pipe">|</span><a
                            href="archiver/" target="_blank">Archiver</a><span class="pipe">| </span>
                </p>
                <p class="smalltext">
                    <asp:Literal ID="TimeSpan" runat="server"></asp:Literal>
                    <span id="debuginfo">Processed in 0.025539 second(s), 3 queries</span>.
                </p>
            </div>
        </div>
    </div>
    </body> </html>
</asp:Content>
