<%@ page language="C#" autoeventwireup="true" inherits="chat_SendMessage, App_Web_lxhu43nl" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title></title>
    <meta http-equiv="content-Type" content="text/html" charset="utf-8" />
    <style type="text/css">
        .p9
        {
            font-size: 9pt;
        }
        a:visited
        {
            color: #0000FF;
            text-decoration: none;
        }
        a:link
        {
            color: #0000FF;
            text-decoration: none;
        }
        a:hover
        {
            color: #FF0000;
        }
        .btnStyle
        {
            font-size: 9pt;
            cursor: hand;
        }
        select
        {
            background-color: #efefef;
            color: black;
            font-family: 宋体;
            font-size: 9pt;
            border-width: 1px;
        }
        .editStyle
        {
            cursor: wait;
            font-size: 9pt;
            background-color: #efefef;
        }
    </style>

    <script type="text/javascript" language="javascript">
        var xmlhttp;
        function ajaxtest() {
            if (checksay()) {
                if (window.ActiveXObject)
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                else if (window.XMLHttpRequest)
                    xmlhttp = new XMLHttpRequest();
                var mess = getdata();
                //alert(mess);
                // xmlhttp.onreadystatechange=doit;
                xmlhttp.open("POST", "SendMessage.aspx?info=" + mess, true);
                xmlhttp.send(null);
            }
        }

        //显示数据提交状态
        function doit() {
            document.getElementById("msg").value = "";
            if (xmlhttp.readystate == 4 && xmlhttp.status == 200)
                document.getElementById("d1").innerHTML = xmlhttp.responsetext;
        }

        //获取发送的消息
        function getdata() {
            var dataStr = inputform.message.value;
            return dataStr;
        }

        /*初始化系统变量*/
        var expression = ""; //表情
        var talkto = '', tk2 = '', strMsg = '';
        var max = 30, whatSay = new Array(max + 1), base = 0, p = 0, j;
        for (j = 0; j <= max + 1; j++) whatSay[j] = "";
        var t1 = 0, t2 = 0, t3 = 0; /*  增加客户端限制发言速度功能 */
        /*系统函数*/
        function addOne(what)  /*聊天记录*/
        {
            if (base < max + 1) { whatSay[base] = what; base++; }
            else { for (i = 0; i < max; i++) whatSay[i] = whatSay[i + 1]; whatSay[i] = what; } p = base;
        }

        /*   下一句  */
        function gN() { if (p < base) p++; inputform.msg.value = whatSay[p]; inputform.msg.focus(); }
        /*  上一句  */
        function gP() { if (p > 0) p--; inputform.msg.value = whatSay[p]; inputform.msg.focus(); }

        function window_onload() {
            inputform.talkto2.value = inputform.talkTo.value;
            document.title = inputform.talkto2.value;
            inputform.msg.focus();
        }
        /*系统函数*/
        function exitchat() { if (window.confirm("您要退出聊天室吗?")) return true; else return false; }


        /*  发送的消息  */
        function checksay() {
            var str1 = document.inputform.msg.value;
            if (str1.length < 1) { document.inputform.msg.focus(); return false; }
            if ((str1 == document.inputform.message.value) && (str1 == strMsg) && (document.inputform.talkTo.value == talkto) && (tk2 == talkto) && (str1.substring(0, 3) != "/c "))
            { alert("发言内容不能重复2次以上!"); document.inputform.msg.focus(); return false; }
            strMsg = document.inputform.message.value; addOne(str1);
            document.inputform.message.value = document.inputform.msg.value; tk2 = talkto; talkto = document.inputform.talkTo.value;
            document.inputform.msg.value = ''; document.inputform.msg.focus();
            return true;
        }
        function checkspeed(str1) {
            if (parent.talkspeed == 0) return true;
            if (str1.substring(0, 2) == "/c") return true; t2 = (new Date()).getTime();
            if (t2 - t1 < 1000) { if (t3++ > 4) alert('性子不要那么急嘛！'); return false; }
            t1 = t2; t3 = 0; return true; /*  客户端限制发言速度功能,此法可有效对付刷屏！ */
        }
        function DoEffect(nEffect) /* HTML特效输入提示窗*/
        {
            strEffect = prompt("请输入准备使用特效的文本", "");
            if (strEffect == null || strEffect.length < 1) return;
            inputform.msg.value = "[" + nEffect + "]" + strEffect;
            inputform.submit1.click();
        }
        var strStepOut = "泡分中，请勿理我!";

        /*  功能  */
        function DoFunc(p) {
            if (p.value > 0) {
                if (p.value == 13) { if (exitchat()) inputform.submit(); }
                else {
                    if (p.value == 22) { inputform.screen.value = "我正在接电话，稍后回复您!"; }
                    else {
                        if (p.value == 30) {
                            var str = prompt("请输入您暂时离开时的留言", strStepOut);
                            if (str == null) { p.value = 0; inputform.msg.focus(); return; }
                            strStepOut = str;
                            inputform.screen.value = strStepOut;
                        }
                    }
                    inputform.submit();
                }
            }
            p.value = 0; inputform.msg.focus();
        }
        /*    分屏    */
        function DoFunc2(n) {
            inputform.func.value = n;
            DoFunc(inputform.func);
        }
        var oldNick = null;

        /* 修改昵称 */
        function gmwin() {
            var strNick = prompt("请输入你想改成的昵称：", oldNick);
            if (strNick == null || strNick == oldNick || strNick.length < 1) return;
            oldNick = strNick;
            inputform.msg.value = "/c gm " + strNick;
            inputform.submit1.click();
        }

        /* 修改字体  */
        function ChangeFont(value) {
            if (value.substr(0, 1) == '0') {
                body.document.body.style.fontSize = value;
            } else {
                body.document.body.style.fontFamily = value;
            }
            inputform.msg.focus();
        }
        function InsertDropTalk(obj) {
            var talkTo = inputform.talkTo.options;
            for (var i = 0; i < talkTo.length; i++) {
                if (talkTo.options[i].value != obj) {
                    var op = new Option(obj, obj, false, true);
                    talkTo.add(op);
                }
                if (talkTo.options[i].value == inputform.talkto2.value) {
                    talkTo.options[i].selected = true;
                }
            }
        }

    </script>

</head>
<body bgcolor="#ddddff" topmargin="0" onload="return window_onload()" onkeydown="if(event.keyCode==27)return false;">
    <form id="inputform" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="d1">
            </div>
            <table border="0" cellspacing="0" cellpadding="0" width="590">
                <tbody>
                    <tr>
                        <td>
                            <input type="hidden" id="user" name="user" runat="server" />
                            <!-- 当前登录用户呢称 -->
                            <input type="hidden" id="pass" name="pass" runat="server" />
                            <!-- 当前登录用户密码 -->
                            <input type="hidden" id="message" name="message" runat="server" />
                            <!-- 消息 -->
                            <input type="hidden" id="talkto2" name="talkto2" runat="server" />
                            <!-- 接收消息的用户 -->
                            <input type="hidden" id="hdmess" name="mess" runat="server" />
                            <!-- 接收消息的用户 -->
                            <input type="hidden" id="hdexpress" name="hdexpress" runat="server" />
                            <!-- 用户表情 -->
                            <span style="font-size: 10.5pt">对象</span><span class="p9">
                                <select id="talkTo">
                                    <option value="所有人" selected="selected">所有人</option>
                                </select>
                                <asp:DropDownList ID="act" runat="server" OnSelectedIndexChanged="act_SelectedIndexChanged">
                                    <asp:ListItem Value='talk' Selected="True">说话</asp:ListItem>
                                    <asp:ListItem Value='ask'>请问</asp:ListItem>
                                    <asp:ListItem Value='chant'>歌颂</asp:ListItem>
                                    <asp:ListItem Value='cheer'>喝采</asp:ListItem>
                                    <asp:ListItem Value='chuckle'>轻笑</asp:ListItem>
                                    <asp:ListItem Value='demand'>要求</asp:ListItem>
                                    <asp:ListItem Value='groan'>呻吟</asp:ListItem>
                                    <asp:ListItem Value='grumble'>牢骚</asp:ListItem>
                                    <asp:ListItem Value='hum'>自语</asp:ListItem>
                                    <asp:ListItem Value='moan'>悲叹</asp:ListItem>
                                    <asp:ListItem Value='notice'>注意</asp:ListItem>
                                    <asp:ListItem Value='order'>命令</asp:ListItem>
                                    <asp:ListItem Value='ponder'>沈思</asp:ListItem>
                                    <asp:ListItem Value='pout'>撅嘴</asp:ListItem>
                                    <asp:ListItem Value='pray'>祈祷</asp:ListItem>
                                    <asp:ListItem Value='request'>恳求</asp:ListItem>
                                    <asp:ListItem Value='shout'>大叫</asp:ListItem>
                                    <asp:ListItem Value='sing'>唱歌</asp:ListItem>
                                    <asp:ListItem Value='smile'>微笑</asp:ListItem>
                                    <asp:ListItem Value='swear'>发誓</asp:ListItem>
                                    <asp:ListItem Value='smirk'>假笑</asp:ListItem>
                                    <asp:ListItem Value='sob'>哭啼</asp:ListItem>
                                    <asp:ListItem Value='tease'>嘲笑</asp:ListItem>
                                    <asp:ListItem Value='yell'>大喊</asp:ListItem>
                                </asp:DropDownList>
                                <select name="color" onchange="if(this.value!='0')msg.style.color=this.value;else msg.style.color='';msg.focus();">
                                    <option value="0" style="color: black" selected>颜色</option>
                                    <option style="background: #000088" value="000088"></option>
                                    <option style="background: #0000ff" value="0000ff"></option>
                                    <option style="background: #008800" value="008800"></option>
                                    <option style="background: #008888" value="008888"></option>
                                    <option style="background: #0088ff" value="0088ff"></option>
                                    <option style="background: #00a010" value="00a010"></option>
                                    <option style="background: #1100ff" value="1100ff"></option>
                                    <option style="background: #111111" value="111111"></option>
                                    <option style="background: #333333" value="333333"></option>
                                    <option style="background: #50b000" value="50b000"></option>
                                    <option style="background: #880000" value="880000"></option>
                                    <option style="background: #8800ff" value="8800ff"></option>
                                    <option style="background: #888800" value="888800"></option>
                                    <option style="background: #888888" value="888888"></option>
                                    <option style="background: #8888ff" value="8888ff"></option>
                                    <option style="background: #aa00cc" value="aa00cc"></option>
                                    <option style="background: #aaaa00" value="aaaa00"></option>
                                    <option style="background: #ccaa00" value="ccaa00"></option>
                                    <option style="background: #ff0000" value="ff0000"></option>
                                    <option style="background: #ff0088" value="ff0088"></option>
                                    <option style="background: #ff00ff" value="ff00ff"></option>
                                    <option style="background: #ff8800" value="ff8800"></option>
                                    <option style="background: #ff0005" value="ff0005"></option>
                                    <option style="background: #ff88ff" value="ff88ff"></option>
                                    <option style="background: #ee0005" value="ee0005"></option>
                                    <option style="background: #ee01ff" value="ee01ff"></option>
                                    <option style="background: #3388aa" value="3388aa"></option>
                                    <option style="background: #000000" value="000000"></option>
                                </select><select name="font" onchange="if(this.value!=0)ChangeFont(this.value);this.value=0;">
                                    <option value="0">字体</option>
                                    <option value="0">====</option>
                                    <option value="宋体">宋体</option>
                                    <option value="仿宋_GB2312">仿宋</option>
                                    <option value="楷体_GB2312">楷体</option>
                                    <option value="黑体">黑体</option>
                                    <option value="隶书">隶书</option>
                                    <option value="幼圆">幼圆</option>
                                    <option value="0">====</option>
                                    <option value="09pt">9pt</option>
                                    <option value="010pt">10pt</option>
                                    <option value="010.5pt">10.5pt</option>
                                    <option value="011pt">11pt</option>
                                    <option value="012pt">12pt</option>
                                    <option value="013pt">13pt</option>
                                </select>
                                <input type="checkbox" name="sc" onclick="parent.body.scrollit();msg.focus();">
                                <a href="#" onclick="sc.click();">滚屏</a>
                                <input type="checkbox" id="ws" name="ws" value="1" onclick="msg.focus();">
                                <a href="#" onclick="ws.click()">密谈</a>
                                <input type="checkbox" name="box" onclick="if(parent.box_func==false) DoFunc2(11);else DoFunc2(12);">
                                <a href="#" onclick="box.click()">分屏</a> </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span style="font-size: 10.5pt">信息</span> <span class="p9">
                                <input id="msg" name="msg" size="47" maxlength="120">
                                <input type="button" value="<" name="cP" title="上一句话" onclick="gP();" ondblclick="gP();">
                                <input type="button" value=">" name="cN" title="下一句话" onclick="gN();" ondblclick="gN();">
                                <input type="button" value="发送" name="submit1" onclick="ajaxtest()">
                                <a href="javascript:parent.body.location.reload();inputform.msg.focus();">清屏</a>
                                <a href="javascript:gmwin()">改名</a> <span id="Voice1"></span></span><span id='Voice2'>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="590">
                <tbody>
                    <tr>
                        <td>
                            <input type="hidden" name="screen"><span style="font-size: 10.5pt">控制</span><span
                                class="p9">
                                <select name="select2" onchange="if(this.value==-1)window.location.reload();if(this.value!=0)inputform.msg.value=this.value;this.value=0;inputform.msg.focus();">
                                    <option value="0" selected>系统指令</option>
                                    <option value="0">=============</option>
                                    <option value="/c you">你是谁？</option>
                                    <option value="/c me">我是谁？</option>
                                    <option value="/c quiet">免打扰开关</option>
                                    <option value="/c history">查看聊天记录</option>
                                </select><select name="func" onchange="DoFunc(inputform.func);">
                                    <option value="0" selected>功能菜单</option>
                                    <option value="0">========</option>
                                    <option value="20">我回来了</option>
                                    <option value="21">暂时离开</option>
                                    <option value="22">接个电话</option>
                                    <option value="30">留言离开</option>
                                    <option value="0">========</option>
                                    <option value="10">垂直分屏</option>
                                    <option value="11">打开包厢</option>
                                    <option value="12">关闭包厢</option>
                                    <option value="0">========</option>
                                    <option value="1">屏蔽此人</option>
                                    <option value="2">解除屏蔽</option>
                                    <option value="3">屏蔽列表</option>
                                    <option value="0">========</option>
                                    <option value="4">加为好友</option>
                                    <option value="5">解除好友</option>
                                    <option value="6">好友列表</option>
                                    <option value="0">========</option>
                                    <option value="0">========</option>
                                    <option value="13">退出聊天</option>
                                </select><select name="Effect" onchange="if(this.value!=0)DoEffect(this.value);this.value=0;">
                                    <option value="0" selected>HTML特效</option>
                                    <option value="0">========</option>
                                    <option value="1">粗体字</option>
                                    <option value="2">斜体字</option>
                                    <option value="0">========</option>
                                </select>&nbsp; <a href="javascript:inputform.msg.value='/c save';inputform.submit1.click();">
                                    存点</a>&nbsp;<a href="javascript:inputform.func.value=13;inputform.func.onchange();">退出</a>
                                <span id="VoiceAdmin"></span></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
