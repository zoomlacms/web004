<%@ page language="C#" autoeventwireup="true" inherits="MultiVideo_UserInfo_VideoRegister, App_Web_ub02eqk1" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>大秦-用户注册</title>
    <link href="../../App_Themes/AdminDefaultTheme/VideoStyle.css" type="text/css" />   
    <style type="text/css">
        *
        {
            margin: 0px;
            padding: 0px;
        }
        .input_out
        {
            padding: 2px 8px 0pt 3px;
            border: 1px solid #A0B4C5;
            background-color: #FFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    &nbsp;<script type="text/javascript" src="/js/RiQi.js"></script>
    <script type="text/javascript">
        function getid(id) { return document.getElementById(id); }
        function gettag(tag, obj) { if (obj) { return obj.getElementsByTagName(tag) } else { return document.getElementsByTagName(tag) } }
        function addLoadEvent(func) { var oldonload = window.onload; if (typeof window.onload != "function") { window.onload = func; } else { window.onload = function () { oldonload(); func(); } }; }
        function SetBgPos(obj, x, y) {
            var isIE = (navigator.userAgent.indexOf("MSIE") != -1);
            if (isIE) { obj.style.backgroundPositionX = x; obj.style.backgroundPositionY = y; }
            else { obj.style.backgroundPosition = x + ' ' + y; }
        }

        function LoadCheckBox() {
            if (gettag("input")) {
                var r = gettag("input");
                function select_element(obj) {
                    c = obj.checked; d = obj.disabled;
                    if (obj.type == "checkbox") { SetBgPos(obj.parentNode, 0, (c) ? ((d) ? "-550px" : "-450px") : ((d) ? "-400px" : "-300px")); }
                    else { SetBgPos(obj.parentNode, 0, (c) ? ((d) ? "-250px" : "-150px") : ((d) ? "-100px" : "0")); }
                }

                for (var i = 0; i < r.length; i++) {
                    if (r[i].type == "radio" || r[i].type == "checkbox") {
                        if (r[i].parentNode.tagName == 'SPAN') {
                            r[i].style.opacity = 0; r[i].style.filter = "alpha(opacity=0)";
                            r[i].parentNode.style.cssText = 'background:url(../../../App_Themes/AdminDefaultTheme/images/video/CheckBox.gif) no-repeat;display:inline-block;width:16px;height:16px;vertical-align:top;';
                        }
                        r[i].onclick = function () { select_element(this); unfocus(); }
                        select_element(r[i]);
                    }
                }
                function unfocus() { for (var i = 0; i < r.length; i++) { if (r[i].type == "radio" || r[i].type == "checkbox") { select_element(r[i]); } } }
            }

        }

        addLoadEvent(LoadCheckBox);
        var btnId2 = "<%=BtnSubmit.ClientID %>";

        function checkreg(obj) {

            if (document.getElementById("CheckBox1").checked) {
                document.getElementById(btnId2).disabled = false;
            }
            else {
                document.getElementById(btnId2).disabled = true;
            }
        }
        function dispbtn() {
            document.getElementById(btnId2).disabled = true;
        }


        function CheckUser() {
            var userName = document.getElementById("<%= TxtUserName.ClientID %>");
            var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
            if (userName.value == "" || userName.value == null) {
                checkUserNameMessage.innerHTML = "用户名为空";
                checkUserNameMessage.className = "d_err";
            }
            else {
                CallTheServer(userName.value, "");
            }
        }
        function CallTheServer(arg, context) {
            var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
            checkUserNameMessage.className = "";
            checkUserNameMessage.innerHTML = "<img src=\"images/loading.gif\" align=\"absmiddle\" />";
        }

        function ReceiveServerData(result) {
            var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
            if (result == "true") {
                checkUserNameMessage.innerHTML = "用户名已经被注册了！";
                checkUserNameMessage.className = "d_err";
            }

            if (result == "error01") {
                checkUserNameMessage.innerHTML = "用户名不允许纯数字！"; //
                checkUserNameMessage.className = "d_err";
            }
            if (result == "error02") {
                checkUserNameMessage.innerHTML = "用户名不允许纯英文！"; //
                checkUserNameMessage.className = "d_err";
            }
            if (result == "error03") {
                checkUserNameMessage.innerHTML = "用户名不允许带有中文！"; //
                checkUserNameMessage.className = "d_err";
            }

            if (result == "error04") {
                checkUserNameMessage.innerHTML = "用户名不允许带有特殊字符！"; //
                checkUserNameMessage.className = "d_err";
            }
            if (result == "error05") {
                checkUserNameMessage.innerHTML = "用户名不合法！"; //
                checkUserNameMessage.className = "d_err";
            }

            if (result == "error06") {
                checkUserNameMessage.innerHTML = "包含不允许注册的词语！"; //
                checkUserNameMessage.className = "d_err";
            }
            if (result == "error07") {
                checkUserNameMessage.innerHTML = "用户名已经存在！"; //
                checkUserNameMessage.className = "d_err";
            }


            if (result == "disabled") {
                checkUserNameMessage.innerHTML = "该用户名禁止注册！";
                checkUserNameMessage.className = "d_err";
            }

            if (result == "false") {
                checkUserNameMessage.innerHTML = "恭喜您，用户名可以使用！";
                checkUserNameMessage.className = "d_ok";
            }

        }


        function EndRequestHandler(sender, args) {
            if (args.get_error() != undefined) {
                alert("检测到表单中存在HTML代码！");
                args.set_errorHandled(true);
            }
        }
    </script>
    <!-- 顶部代码布局 -->
    <!-- 正文布局 -->
    <div id="main" class="reg">
        <div id="AllInfo" style="border: 2px solid #FC6; width: 416px; margin:0 auto; background-image: url('images/bgright.png')">
            <table style="border-style: none; border-color: inherit; border-width: 0px; border-spacing: 0px;
                width: 415px;">
                <tr>
                    <td style="background-image: url('images/bghead.png'); font-size: 14px" colspan="2">
                        <img alt="" src="../../App_Themes/AdminDefaultTheme/images/Video/images/logao.png" align="middle" /><b style="font-size: 12px">用户注册</b>
                    </td>
                    <%--<td class="style16">
                        <asp:ImageButton ID="ImageButton2" Style="background-image: url('images/bgright.png')"
                            runat="server" ImageUrl="~/MultiVideo/UserInfo/images/closeWin.png" Height="16px"
                            Width="16px" OnClick="ImageButton2_Click" />
                    </td>--%>
                </tr>
                <tr>
                    <td style="background-image: url('images/bgleft.png')" rowspan="2">
                        &nbsp
                    </td>
                    <td style="background-image: url('images/bgtop.png')">
                    </td>
                    <td style="background-image: url('images/bgright.png');" rowspan="2">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="divUserInfo" style="border-style: solid; border-width: 1px; border-color: #FC6">
                            <table style="background-image: url('images/bg.png'); width:100%">
                                <tr>
                                    <td colspan="2" align="center" style="font-size: 12px">
                                       以下所有资料必填
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px">
                                        &nbsp; 用 户 名：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TxtUserName" CssClass="input_out" runat="server" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
                                            Style="float: left;" Width="139px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ReqTxtUserName" runat="server" ControlToValidate="TxtUserName"
                                            SetFocusOnError="false" ErrorMessage="*" Font-Size="12px"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="ValgTextMaxLength" ControlToValidate="TxtUserName"
                                            ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5\@\.]{4,40}$" SetFocusOnError="false"
                                            Display="Dynamic" runat="server" Font-Size="12px"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px">
                                        &nbsp; 密&nbsp;&nbsp; 码：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" CssClass="input_out"
                                            Width="139px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server"
                                            ControlToValidate="TxtPassword" ValidationExpression="[\S]{6,}" ErrorMessage="密码至少6位"
                                            Display="Dynamic" Font-Size="12px"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="ReqTxtPassword" runat="server" ControlToValidate="TxtPassword"
                                            SetFocusOnError="false" ErrorMessage="*" Font-Size="12px"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px">
                                        &nbsp; 确认密码：
                                    </td>
                                    <td style="font-size: 12px">
                                        <asp:TextBox ID="TxtPwdConfirm" TextMode="Password" runat="server" CssClass="input_out"
                                            Width="139px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ReqTxtPwdConfirm" runat="server" ControlToValidate="TxtPwdConfirm"
                                            SetFocusOnError="false" Display="Dynamic" ErrorMessage="*" Font-Size="12px"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="ValCompPassword" runat="server" ControlToValidate="TxtPwdConfirm"
                                            ControlToCompare="TxtPassword" Operator="Equal" SetFocusOnError="false" ErrorMessage="两次密码输入不一致"
                                            Display="Dynamic" Font-Size="12px"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px">
                                        &nbsp; E-Mail：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TxtEmail" runat="server" CssClass="input_out" Width="139px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ReqTxtEmail" runat="server" ControlToValidate="TxtEmail"
                                            SetFocusOnError="false" ErrorMessage="*" Font-Size="12px"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail"
                                            ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                                            Display="Dynamic" Font-Size="12px"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px">
                                        &nbsp; 密码问题：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TxtQuestion" runat="server" CssClass="input_out" Width="139px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ReqTxtQuestion" runat="server" ControlToValidate="TxtQuestion"
                                            SetFocusOnError="false" ErrorMessage="*" Font-Size="12px"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px;">
                                        &nbsp; 问题答案：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TxtAnswer" runat="server" CssClass="input_out" Width="139px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ReqAnswer" runat="server" ControlToValidate="TxtAnswer"
                                            SetFocusOnError="false" ErrorMessage="*" Font-Size="12px"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>                               
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="background-image: url('images/bgtop.png')">
                        <table align="right">
                            <tr>
                                <td align="right">
                                    <asp:ImageButton ID="ImgBtnBack" runat="server" Style="width: 70px; height: 22px"
                                        ImageUrl="~/App_Themes/AdminDefaultTheme/images/Video/images/back.png"
                                         OnClick="ImgbtnBack_Click" />
                                         <asp:ImageButton ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click"   ImageUrl="~/App_Themes/AdminDefaultTheme/images/Video/images/next.png" Style="width: 75px;height: 22px; border: 0px" />
                                    <%--<asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Style="width: 75px;
                                        height: 22px; background-image:url('../images/Video/images/next.png'); border: 0px" />--%>
                                  <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/App_Themes/AdminDefaultTheme/images/Video/images/close.png"
                                        OnClick="ImageButton3_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
     </div>
    </form>
</body>
</html>
