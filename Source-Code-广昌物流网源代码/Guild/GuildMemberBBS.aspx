<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_GuildMemberBBS, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script language="JavaScript" type="text/javascript">        var CookiePath = "/", CookieDomain = "";</script>

    <script language="JavaScript" type="text/javascript" src="../../Forum/Utility/global.js"></script>

    <script language="JavaScript" type="text/javascript" src="../../Forum/Utility/BBSXP_Modal.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="archives" title="ZoomLa! ������̳�ٷ�" href="http://www.ZoomLa.cn/archiver/" />
    <link rel="alternate" type="application/rss+xml" title="ZoomLa! ������̳�ٷ�" href="http://www.ZoomLa.cn/rss.aspx" />
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
                            <asp:Literal ID="TotalThreads" runat="server"></asp:Literal></strong> ���� /
                        <asp:Literal ID="TotalPosts" runat="server"></asp:Literal>
                        �ظ� ]</p>
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
                            <a href="javascript:;" id="tab_2" class="current">�������</a></h3>
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
                    <span id="visitedforums" class="pageback"><a href="Default.aspx">������ҳ</a></span>
                    <span class="postbtn" id="newspecial"><a href="Topic.aspx?action=newthread&fid=<%=fid %>">
                        ����</a></span><div style="display: none" id="pap">
                            <%=pageIndex%></div>
                </div>
                <div class="gnstyle">
                    <a href="ShowForum.aspx?fid=<%=fid%>&type="><strong class="colorlan">ȫ��</strong></a>
                    &nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=��װ">��װ</a>&nbsp;|&nbsp;<a
                        href="ShowForum.aspx?fid=<%=fid%>&type=ʹ��"> ʹ��</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=����">����</a>&nbsp;|&nbsp;
                    <a href="ShowForum.aspx?fid=<%=fid%>&type=����BUG">����BUG</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=�Ѵ�"><span
                        class="colorhong">�Ѵ�</span></a>&nbsp;| &nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=�д����"><span
                            class="colorhuang">�д����</span></a>&nbsp;| &nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=����">����</a>&nbsp;|&nbsp;<a
                                href="ShowForum.aspx?fid=<%=fid%>&type=����">����</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=�ѽ��"><span
                                    class="colorlv">�ѽ��</span></a>
                </div>
                <div id="threadlist" class="threadlist datalist" style="position: relative;">
                    <table summary="forum_29" cellspacing="0" cellpadding="0" class="datatable" width="100%">
                        <thead class="colplural">
                            <tr>
                                <td colspan="2">
                                    ����:<a href="ShowForum.aspx?fid=<%=fid%>&type=">ȫ��</a> | <a href="ShowForum.aspx?fid=<%=fid%>&type=ͶƱ"> ͶƱ</a>
                                </td>
                                <th>
                                    <ul class="itemfilter s_clear">
                                        <li>����:</li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type="><span>ȫ��</span></a></li>
                                        <li><a class="filter" href="ShowForum.aspx?fid=<%=fid%>&type=����"><span>����</span></a></li>
                                        <li class="pipe">|</li>
                                        <li>ʱ��:</li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=һ��"><span>һ��</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=����"><span>����</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=��"><span>��</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=��"><span></span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=��"><span>��</span></a></li>
                                        <li class="pipe">|</li>
                                        <li><a class="order " href="ShowForum.aspx?fid=<%=fid%>&type=����">����</a></li>
                                    </ul>
                                </th>
                                <td class="author" style="text-align: right;">
                                </td>
                                <td> <a href="ShowForum.aspx?fid=<%=fid%>&type=" class="order ">����/ʱ��</a></td>
                                <td class="nums">
                                    <a href="ShowForum.aspx?fid=<%=fid%>&type=�ظ�" class="order ">�ظ�</a>&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=�鿴"
                                        class="order ">�鿴</a>
                                </td>
                                <td class="lastpost">
                                    <cite><a href="ShowForum.aspx?fid=<%=fid%>&type=��󷢱�" class="order order_active">��󷢱�</a></cite>
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
                                                    title="�´��ڴ�" target="_blank">
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
                                <th class="subject"><b>�������</b></th>
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
                                                title="�´��ڴ�" target="_blank">
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
                    <span id="visitedforums" class="pageback"><a href="Default.aspx">������ҳ</a></span>
                    <span class="postbtn" id="newspecialtmp"><a href="Topic.aspx?action=newthread&fid=<%=fid %>">
                        ����</a></span>
                </div>
            </div>
        </div>
    </div>
    <div id="ad_footerbanner" runat="server">
        <asp:Panel ID="panelpage" runat="server">
            �ܹ�<asp:Label ID="Count" runat="server"></asp:Label>��¼ &nbsp; ��ǰҳ:<asp:Label ID="CurrentPage"
                runat="server"></asp:Label>&nbsp; ��<asp:Label ID="PageCount" runat="server"></asp:Label>ҳ
            <asp:Label ID="PageSize" runat="server"></asp:Label>����¼/ҳ &nbsp;
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
                    ( <a href="http://www.miibeian.gov.cn/" target="_blank">��ICP��09077823��</a>)<span
                        class="pipe">|</span><a href="mailto:tech#zoomla.cn">��ϵ����</a> <span class="pipe">|</span><a
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
