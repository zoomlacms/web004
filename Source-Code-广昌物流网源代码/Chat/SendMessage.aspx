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
            font-family: ����;
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

        //��ʾ�����ύ״̬
        function doit() {
            document.getElementById("msg").value = "";
            if (xmlhttp.readystate == 4 && xmlhttp.status == 200)
                document.getElementById("d1").innerHTML = xmlhttp.responsetext;
        }

        //��ȡ���͵���Ϣ
        function getdata() {
            var dataStr = inputform.message.value;
            return dataStr;
        }

        /*��ʼ��ϵͳ����*/
        var expression = ""; //����
        var talkto = '', tk2 = '', strMsg = '';
        var max = 30, whatSay = new Array(max + 1), base = 0, p = 0, j;
        for (j = 0; j <= max + 1; j++) whatSay[j] = "";
        var t1 = 0, t2 = 0, t3 = 0; /*  ���ӿͻ������Ʒ����ٶȹ��� */
        /*ϵͳ����*/
        function addOne(what)  /*�����¼*/
        {
            if (base < max + 1) { whatSay[base] = what; base++; }
            else { for (i = 0; i < max; i++) whatSay[i] = whatSay[i + 1]; whatSay[i] = what; } p = base;
        }

        /*   ��һ��  */
        function gN() { if (p < base) p++; inputform.msg.value = whatSay[p]; inputform.msg.focus(); }
        /*  ��һ��  */
        function gP() { if (p > 0) p--; inputform.msg.value = whatSay[p]; inputform.msg.focus(); }

        function window_onload() {
            inputform.talkto2.value = inputform.talkTo.value;
            document.title = inputform.talkto2.value;
            inputform.msg.focus();
        }
        /*ϵͳ����*/
        function exitchat() { if (window.confirm("��Ҫ�˳���������?")) return true; else return false; }


        /*  ���͵���Ϣ  */
        function checksay() {
            var str1 = document.inputform.msg.value;
            if (str1.length < 1) { document.inputform.msg.focus(); return false; }
            if ((str1 == document.inputform.message.value) && (str1 == strMsg) && (document.inputform.talkTo.value == talkto) && (tk2 == talkto) && (str1.substring(0, 3) != "/c "))
            { alert("�������ݲ����ظ�2������!"); document.inputform.msg.focus(); return false; }
            strMsg = document.inputform.message.value; addOne(str1);
            document.inputform.message.value = document.inputform.msg.value; tk2 = talkto; talkto = document.inputform.talkTo.value;
            document.inputform.msg.value = ''; document.inputform.msg.focus();
            return true;
        }
        function checkspeed(str1) {
            if (parent.talkspeed == 0) return true;
            if (str1.substring(0, 2) == "/c") return true; t2 = (new Date()).getTime();
            if (t2 - t1 < 1000) { if (t3++ > 4) alert('���Ӳ�Ҫ��ô���'); return false; }
            t1 = t2; t3 = 0; return true; /*  �ͻ������Ʒ����ٶȹ���,�˷�����Ч�Ը�ˢ���� */
        }
        function DoEffect(nEffect) /* HTML��Ч������ʾ��*/
        {
            strEffect = prompt("������׼��ʹ����Ч���ı�", "");
            if (strEffect == null || strEffect.length < 1) return;
            inputform.msg.value = "[" + nEffect + "]" + strEffect;
            inputform.submit1.click();
        }
        var strStepOut = "�ݷ��У���������!";

        /*  ����  */
        function DoFunc(p) {
            if (p.value > 0) {
                if (p.value == 13) { if (exitchat()) inputform.submit(); }
                else {
                    if (p.value == 22) { inputform.screen.value = "�����ڽӵ绰���Ժ�ظ���!"; }
                    else {
                        if (p.value == 30) {
                            var str = prompt("����������ʱ�뿪ʱ������", strStepOut);
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
        /*    ����    */
        function DoFunc2(n) {
            inputform.func.value = n;
            DoFunc(inputform.func);
        }
        var oldNick = null;

        /* �޸��ǳ� */
        function gmwin() {
            var strNick = prompt("����������ĳɵ��ǳƣ�", oldNick);
            if (strNick == null || strNick == oldNick || strNick.length < 1) return;
            oldNick = strNick;
            inputform.msg.value = "/c gm " + strNick;
            inputform.submit1.click();
        }

        /* �޸�����  */
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
                            <!-- ��ǰ��¼�û��س� -->
                            <input type="hidden" id="pass" name="pass" runat="server" />
                            <!-- ��ǰ��¼�û����� -->
                            <input type="hidden" id="message" name="message" runat="server" />
                            <!-- ��Ϣ -->
                            <input type="hidden" id="talkto2" name="talkto2" runat="server" />
                            <!-- ������Ϣ���û� -->
                            <input type="hidden" id="hdmess" name="mess" runat="server" />
                            <!-- ������Ϣ���û� -->
                            <input type="hidden" id="hdexpress" name="hdexpress" runat="server" />
                            <!-- �û����� -->
                            <span style="font-size: 10.5pt">����</span><span class="p9">
                                <select id="talkTo">
                                    <option value="������" selected="selected">������</option>
                                </select>
                                <asp:DropDownList ID="act" runat="server" OnSelectedIndexChanged="act_SelectedIndexChanged">
                                    <asp:ListItem Value='talk' Selected="True">˵��</asp:ListItem>
                                    <asp:ListItem Value='ask'>����</asp:ListItem>
                                    <asp:ListItem Value='chant'>����</asp:ListItem>
                                    <asp:ListItem Value='cheer'>�Ȳ�</asp:ListItem>
                                    <asp:ListItem Value='chuckle'>��Ц</asp:ListItem>
                                    <asp:ListItem Value='demand'>Ҫ��</asp:ListItem>
                                    <asp:ListItem Value='groan'>����</asp:ListItem>
                                    <asp:ListItem Value='grumble'>��ɧ</asp:ListItem>
                                    <asp:ListItem Value='hum'>����</asp:ListItem>
                                    <asp:ListItem Value='moan'>��̾</asp:ListItem>
                                    <asp:ListItem Value='notice'>ע��</asp:ListItem>
                                    <asp:ListItem Value='order'>����</asp:ListItem>
                                    <asp:ListItem Value='ponder'>��˼</asp:ListItem>
                                    <asp:ListItem Value='pout'>����</asp:ListItem>
                                    <asp:ListItem Value='pray'>��</asp:ListItem>
                                    <asp:ListItem Value='request'>����</asp:ListItem>
                                    <asp:ListItem Value='shout'>���</asp:ListItem>
                                    <asp:ListItem Value='sing'>����</asp:ListItem>
                                    <asp:ListItem Value='smile'>΢Ц</asp:ListItem>
                                    <asp:ListItem Value='swear'>����</asp:ListItem>
                                    <asp:ListItem Value='smirk'>��Ц</asp:ListItem>
                                    <asp:ListItem Value='sob'>����</asp:ListItem>
                                    <asp:ListItem Value='tease'>��Ц</asp:ListItem>
                                    <asp:ListItem Value='yell'>��</asp:ListItem>
                                </asp:DropDownList>
                                <select name="color" onchange="if(this.value!='0')msg.style.color=this.value;else msg.style.color='';msg.focus();">
                                    <option value="0" style="color: black" selected>��ɫ</option>
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
                                    <option value="0">����</option>
                                    <option value="0">====</option>
                                    <option value="����">����</option>
                                    <option value="����_GB2312">����</option>
                                    <option value="����_GB2312">����</option>
                                    <option value="����">����</option>
                                    <option value="����">����</option>
                                    <option value="��Բ">��Բ</option>
                                    <option value="0">====</option>
                                    <option value="09pt">9pt</option>
                                    <option value="010pt">10pt</option>
                                    <option value="010.5pt">10.5pt</option>
                                    <option value="011pt">11pt</option>
                                    <option value="012pt">12pt</option>
                                    <option value="013pt">13pt</option>
                                </select>
                                <input type="checkbox" name="sc" onclick="parent.body.scrollit();msg.focus();">
                                <a href="#" onclick="sc.click();">����</a>
                                <input type="checkbox" id="ws" name="ws" value="1" onclick="msg.focus();">
                                <a href="#" onclick="ws.click()">��̸</a>
                                <input type="checkbox" name="box" onclick="if(parent.box_func==false) DoFunc2(11);else DoFunc2(12);">
                                <a href="#" onclick="box.click()">����</a> </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span style="font-size: 10.5pt">��Ϣ</span> <span class="p9">
                                <input id="msg" name="msg" size="47" maxlength="120">
                                <input type="button" value="<" name="cP" title="��һ�仰" onclick="gP();" ondblclick="gP();">
                                <input type="button" value=">" name="cN" title="��һ�仰" onclick="gN();" ondblclick="gN();">
                                <input type="button" value="����" name="submit1" onclick="ajaxtest()">
                                <a href="javascript:parent.body.location.reload();inputform.msg.focus();">����</a>
                                <a href="javascript:gmwin()">����</a> <span id="Voice1"></span></span><span id='Voice2'>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="590">
                <tbody>
                    <tr>
                        <td>
                            <input type="hidden" name="screen"><span style="font-size: 10.5pt">����</span><span
                                class="p9">
                                <select name="select2" onchange="if(this.value==-1)window.location.reload();if(this.value!=0)inputform.msg.value=this.value;this.value=0;inputform.msg.focus();">
                                    <option value="0" selected>ϵͳָ��</option>
                                    <option value="0">=============</option>
                                    <option value="/c you">����˭��</option>
                                    <option value="/c me">����˭��</option>
                                    <option value="/c quiet">����ſ���</option>
                                    <option value="/c history">�鿴�����¼</option>
                                </select><select name="func" onchange="DoFunc(inputform.func);">
                                    <option value="0" selected>���ܲ˵�</option>
                                    <option value="0">========</option>
                                    <option value="20">�һ�����</option>
                                    <option value="21">��ʱ�뿪</option>
                                    <option value="22">�Ӹ��绰</option>
                                    <option value="30">�����뿪</option>
                                    <option value="0">========</option>
                                    <option value="10">��ֱ����</option>
                                    <option value="11">�򿪰���</option>
                                    <option value="12">�رհ���</option>
                                    <option value="0">========</option>
                                    <option value="1">���δ���</option>
                                    <option value="2">�������</option>
                                    <option value="3">�����б�</option>
                                    <option value="0">========</option>
                                    <option value="4">��Ϊ����</option>
                                    <option value="5">�������</option>
                                    <option value="6">�����б�</option>
                                    <option value="0">========</option>
                                    <option value="0">========</option>
                                    <option value="13">�˳�����</option>
                                </select><select name="Effect" onchange="if(this.value!=0)DoEffect(this.value);this.value=0;">
                                    <option value="0" selected>HTML��Ч</option>
                                    <option value="0">========</option>
                                    <option value="1">������</option>
                                    <option value="2">б����</option>
                                    <option value="0">========</option>
                                </select>&nbsp; <a href="javascript:inputform.msg.value='/c save';inputform.submit1.click();">
                                    ���</a>&nbsp;<a href="javascript:inputform.func.value=13;inputform.func.onchange();">�˳�</a>
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
