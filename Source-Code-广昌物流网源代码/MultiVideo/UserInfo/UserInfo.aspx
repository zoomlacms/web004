<%@ page language="C#" autoeventwireup="true" inherits="MultiVideo_UserInfo_UserInfo, App_Web_ub02eqk1" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="ZoomLa.Ajax" Namespace="ZoomLa.Framework.Noebe.Jsons.WebControls"
    TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>大秦-个人设置</title>
    <link rel="stylesheet" type="text/css" href="../../../skin/user_main.css" />
    <link rel="stylesheet" type="text/css" href="../../../skin/user_user.css" />
    <script language="javascript" type="text/javascript">
        function showTip(showdiv) {
            var tipBox = document.getElementById(showdiv);
            for (var i = 1; i < 6; i++) {
                var emp = "show" + i;
                var btn = "btn" + i;
                if (showdiv == emp) {
                    tipBox.style.display = "block";
                    document.getElementById(btn).style.border = "1px solid #FFCC66";
                    var textShowId = document.getElementById("hfShowID");
                    textShowId.value = "show" + i;
                }
                else {
                    document.getElementById(emp).style.display = "none";
                    document.getElementById(btn).style.border = "1px solid #FAF0CF";
                }
            }
        }


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
    </script>
    <style type="text/css">
        .style4
        {
            float: left;
            width: 250px;
        }
        .input1
        {
            border: 1px solid #C3C3C3;
            line-height: 18px; /*background:url(../images/10.gif) no-repeat center -27px;*/
        }
        h1, h2, h3, h4, h5, h6, p, span
        {
            margin: 0px;
            padding: 0px;
        }
        .f_input
        {
            border: 1px solid #C0C0C0;
        }
        *
        {
            padding: 0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
        }
        *
        {
            padding: 0px;
            margin-left: 0px;
            margin-right: 8px;
            margin-top: 0px;
        }
        
        .btn1_mouseout
        {
            border: 1px solid #FF9;
            padding-right: 10px;
            padding-left: 10px;
            font-size: 12px;
            cursor: hand;
            color: black;
            padding-top: 2px;
            width: 71px;
        }
        .btn1_mouseover
        {
            border-right: #FC6 1px solid;
            padding-right: 10px;
            border-top: #FC6 1px solid;
            padding-left: 10px;
            font-size: 12px;
            border-left: #FC6 1px solid;
            cursor: hand;
            color: black;
            padding-top: 2px;
            border-bottom: #FC6 1px solid;
        }
        .btn3_mousedown
        {
            border-right: #FF6 1px solid;
            padding-right: 10px;
            border-top: #FF6 1px solid;
            padding-left: 10px;
            font-size: 12px;
            border-left: #FF6 1px solid;
            cursor: hand;
            color: black;
            padding-top: 2px;
            border-bottom: #FF6 1px solid;
        }
        .btn3_mouseup
        {
            border-right: #FC3 1px solid;
            padding-right: 10px;
            border-top: #FC3 1px solid;
            padding-left: 10px;
            font-size: 12px;
            border-left: #FC3 1px solid;
            cursor: hand;
            color: black;
            padding-top: 2px;
            border-bottom: #FC3 1px solid;
        }
        
        
        .style10
        {
            height: 34px;
        }
        
        
        .style13
        {
            width: 117px;
            height: 20px;
        }
        
        
        .style19
        {
            float: left;
            height: 49px;
        }
        
        
        .style21
        {
            width: 117px;
            height: 24px;
        }
        
        
        .style26
        {
            width: 82px;
            height: 19px;
        }
        
        
        .style30
        {
            width: 117px;
            height: 21px;
        }
        
        
        .style34
        {
            float: left;
            width: 250px;
            height: 22px;
        }
        .style35
        {
            float: left;
            width: 250px;
            height: 28px;
        }
        .style44
        {
            float: left;
            width: 122px;
            height: 42px;
        }
        .style45
        {
            height: 42px;
        }
        .style48
        {
            float: left;
            width: 122px;
            height: 38px;
        }
        .style49
        {
            height: 38px;
        }
        .style50
        {
            float: left;
            width: 122px;
            height: 44px;
        }
        .style51
        {
            height: 44px;
        }
        
        
        .style53
        {
            width: 452px;
        }
        
        
        .style54
        {
            width: 452px;
            height: 8px;
        }
        
        
        .style55
        {
            width: 99px;
        }
        
        
        .style64
        {
            width: 117px;
        }
        
        
        .style65
        {
            width: 315px;
        }
        
        
        .style68
        {
            float: left;
            width: 57px;
        }
        
        
        .style70
        {
            float: left;
            width: 56px;
        }
        .style72
        {
            float: left;
            width: 50px;
            height: 19px;
        }
        .style74
        {
            width: 103px;
            height: 29px;
        }
        .style75
        {
            width: 103px;
            height: 19px;
        }
        .style76
        {
            float: left;
            width: 41px;
            height: 29px;
        }
        .style77
        {
            float: left;
            width: 41px;
            height: 19px;
        }
        
        
        .style78
        {
            width: 82px;
            height: 29px;
        }
        .style79
        {
            float: left;
            width: 50px;
            height: 29px;
        }
        
        
        .style80
        {
            width: 27px;
            height: 22px;
        }
        
        
        .style81
        {
            width: 117px;
            height: 23px;
        }
        
        
        .style82
        {
            float: left;
            height: 32px;
        }
        
        
        .style83
        {
            width: 81px;
        }
        
        
        .style84
        {
            height: 20px;
            width: 122px;
        }
    </style>
</head>
<body>
    <div>
        <form id="form1" runat="server">
        <asp:ScriptManager ID="Scriptmanager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="upDivPass" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:HiddenField ID="hfShowID" runat="server" />
                <div style="width:494px;margin:0 auto; ">
                    <table style="width: 250px;  background-image: url('images/background4.png'); height: 300px;
                        border-color: #FC6; border-style: solid; border-width: 2px">
                        <tr>
                            <td class="style64">
                                <font style="font-size: 12px"><b>
                                    <img alt="" class="style80" src="../../App_Themes/AdminDefaultTheme/images/Video/images/logao.png" align="middle" />个人设置</b></font>
                            </td>
                            <td rowspan="10" class="style65">
                                <div id="show1" style="border: 1px solid #FC6; display: block; background-image: url('images/background.png');
                                    height: 220px; width: 367px;" align="center">
                                    <table>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style79">
                                                &nbsp;&nbsp; 账号
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style78">
                                                <asp:TextBox ID="txtID" runat="server" ReadOnly="True" CssClass="f_input" Width="108px"></asp:TextBox>
                                            </td>
                                            <td style="line-height: 30px; font-size: 12px" class="style76" align="center">
                                                昵称
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style74" align="center">
                                                <asp:TextBox ID="txtHonName" runat="server" CssClass="f_input" Width="87px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style72">
                                                &nbsp;&nbsp; 性 别
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style26">
                                                <asp:RadioButtonList ID="tbUserSex" runat="server" RepeatDirection="Horizontal" Width="109px"
                                                    Font-Size="12px">
                                                    <asp:ListItem Selected="True" Value="1">男</asp:ListItem>
                                                    <asp:ListItem Value="0">女</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                            <td style="line-height: 30px; text-align: right" class="style77">
                                                &nbsp;
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style75">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style10"
                                                colspan="4">
                                                &nbsp;&nbsp; 出生日期&nbsp;
                                                <asp:TextBox ID="tbBirthday" runat="server" Width="112px" CssClass="f_input"></asp:TextBox>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" colspan="4" class="style82">
                                                &nbsp;&nbsp; 自我介绍
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="float: left; line-height: 30px; text-align: right" colspan="4">
                                                &nbsp;
                                                <asp:TextBox ID="tbSign" runat="server" class="input1" TextMode="MultiLine" Width="313px"
                                                    Height="60px" CssClass="f_input"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="show2" style="border: 1px solid #FC6; background-image: url('images/background.png');
                                    display: none; height: 220px; width: 367px;" align="center">
                                    <table>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style70">
                                                姓&nbsp;&nbsp; 名
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style55">
                                                <asp:TextBox ID="tbTrueName" runat="server" Width="80px" CssClass="f_input"></asp:TextBox>
                                            </td>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style68">
                                                邮&nbsp;&nbsp;&nbsp; 编
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style83">
                                                <asp:TextBox ID="tbZipCode" runat="server" Width="80px" CssClass="f_input"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style70">
                                                固定电话
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style55">
                                                <asp:TextBox ID="tbHomePhone" runat="server" Width="80px" CssClass="f_input"></asp:TextBox>
                                            </td>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style68">
                                                移动电话
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style83">
                                                <asp:TextBox ID="tbMobile" runat="server" Width="80px" CssClass="f_input"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style70">
                                                地&nbsp;&nbsp;&nbsp; 址
                                            </td>
                                            <td style="line-height: 30px; text-align: left" colspan="3">
                                                <asp:TextBox ID="tbAddress" runat="server" Columns="30" Width="258px" CssClass="f_input"
                                                    Height="16px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style70">
                                                主&nbsp;&nbsp;&nbsp; 页
                                            </td>
                                            <td style="line-height: 30px; text-align: left" colspan="3">
                                                <asp:TextBox ID="tbHomepage" runat="server" Columns="30" Width="258px" CssClass="f_input"
                                                    Height="16px">http://</asp:TextBox>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="float: left; line-height: 30px; text-align: left" colspan="4" align="center">
                                                <hr style="color: Black; width: 320px;" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" colspan="4" class="style19">
                                                以上信息&nbsp;&nbsp;<asp:RadioButtonList ID="tbPrivacy" runat="server" RepeatDirection="Horizontal"
                                                    Font-Size="12px">
                                                    <asp:ListItem Selected="True" Value="0">完全公开</asp:ListItem>
                                                    <asp:ListItem Value="1">只对好友公开</asp:ListItem>
                                                    <asp:ListItem Value="2">完全保密</asp:ListItem>
                                                </asp:RadioButtonList>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="show3" style="border: 1px solid #FC6; background-image: url('images/background.png');
                                    display: none; height: 220px; width: 367px;" align="center">
                                    <table>
                                        <tr>
                                            <td style="text-align: left; font-size: 12px;" class="style84">
                                                &nbsp;
                                            </td>
                                            <td style="text-align: left; height: 20px;">
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: left; position: relative;">
                                                <div style="font-size: 13px; position: absolute; left: -20px; font-weight: bold;
                                                    color: #C7A128;">
                                                    修改密码：
                                                </div>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style44">
                                                旧密码:
                                            </td>
                                            <td style="line-height: 30px; text-align: left" class="style45">
                                                <table align="left" border="0">
                                                    <tr>
                                                        <td align="left">
                                                            <asp:TextBox ID="TxtOldPassword" runat="server" CssClass="f_input" Height="18px"
                                                                TextMode="Password" Width="113px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style50">
                                                新密码(6-16位):
                                            </td>
                                            <td align="left" class="style51">
                                                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="f_input"
                                                    Height="18px" Width="113px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style48">
                                                确认密码（6-16位）:
                                            </td>
                                            <td class="style49" align="left">
                                                <asp:TextBox ID="TxtPassword2" runat="server" TextMode="Password" CssClass="f_input"
                                                    Height="18px" Width="113px" />
                                                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtPassword2" ControlToCompare="TxtPassword"
                                                    ErrorMessage="*" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="show4" style="border: 1px solid #FC6; background-image: url('images/background.png');
                                    display: none; height: 220px; width: 367px;" align="center">
                                    <table>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left" colspan="2" class="style4" align="center">
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="179px" Width="247px"
                                                    Font-Size="12px">
                                                    <asp:ListItem Selected="True">允许任何人把我列为好友</asp:ListItem>
                                                    <asp:ListItem>需要身份验证才能把我列为好友</asp:ListItem>
                                                    <asp:ListItem>不允许任何人把我列为好友</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div id="show5" style="border: 1px solid #FC6; background-image: url('images/background.png');
                                    display: none; height: 220px; width: 367px;" align="center">
                                    <table>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style34">
                                                基本设置
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style4">
                                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="16px" Width="224px" Font-Size="12px"
                                                    CellPadding="0" CellSpacing="0">
                                                    <asp:ListItem>自动弹出系统信息</asp:ListItem>
                                                    <asp:ListItem>自动登录</asp:ListItem>
                                                    <asp:ListItem>开机自动运行</asp:ListItem>
                                                </asp:CheckBoxList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: left; font-size: 12px" class="style35">
                                                消息发送
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="line-height: 30px; text-align: right; font-size: 12px" class="style4">
                                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="36px">
                                                    <asp:ListItem Selected="True">按Ctrl+Enter键发送</asp:ListItem>
                                                    <asp:ListItem>按Enter键发送</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <table>
                                    <tr>
                                        <td align="right" class="style54">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style53">
                                            <asp:ImageButton ID="ImgbtnSubmit" runat="server" ImageUrl="~/App_Themes/AdminDefaultTheme/images/Video/images/btnsubmit.png"
                                                OnClick="ImgbtnSubmit_Click " />
                                            <asp:ImageButton ID="ImgbtnClose" runat="server" ImageUrl="~/App_Themes/AdminDefaultTheme/images/Video/images/btnclose.png"
                                                OnClick="ImgbtnClose_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style64" align="center">
                                <asp:Image ID="face" runat="server" Height="50px" Width="52px" ImageUrl="~/Images/userface/noface.gif" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style64" align="center">
                                <asp:LinkButton ID="LinkButton1" runat="server" Style="font-size: 12px;">更改头像</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13" align="center">
                                <button id="btn1" class="btn1_mouseout" onmouseover="this.className='btn1_mouseover'"
                                    onmouseout="this.className='btn1_mouseout'" onmouseup="this.className='btn3_mouseup'"
                                    onmousedown="this.className='btn3_mousedown'" onclick="showTip('show1');return false;"
                                    style="border: 1px solid #FFCC66; background: #FF9 url('images/background5.png');
                                    height: 21px;">
                                    个人信息</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="style81" align="center">
                                <button id="btn2" class="btn1_mouseout" onmouseover="this.className='btn1_mouseover'"
                                    onmouseout="this.className='btn1_mouseout'" onmouseup="this.className='btn3_mouseup'"
                                    onmousedown="this.className='btn3_mousedown'" onclick="showTip('show2');return false;"
                                    style="background: #FF9; background-image: url('images/background5.png');">
                                    联系方式</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21" align="center">
                                <button id="btn3" class="btn1_mouseout" onmouseover="this.className='btn1_mouseover'"
                                    onmouseout="this.className='btn1_mouseout'" onmouseup="this.className='btn3_mouseup'"
                                    onmousedown="this.className='btn3_mousedown'" onclick="showTip('show3');return false;"
                                    style="background: #FF9; background-image: url('images/background5.png');">
                                    安全密码</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21" align="center">
                                <button id="btn4" class="btn1_mouseout" onmouseover="this.className='btn1_mouseover'"
                                    onmouseout="this.className='btn1_mouseout'" onmouseup="this.className='btn3_mouseup'"
                                    onmousedown="this.className='btn3_mousedown'" onclick="showTip('show4');return false; "
                                    style="background: #FF9; background-image: url('images/background5.png');">
                                    安全设置</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="style30" align="center">
                                <button id="btn5" class="btn1_mouseout" onmouseover="this.className='btn1_mouseover'"
                                    onmouseout="this.className='btn1_mouseout'" onmouseup="this.className='btn3_mouseup'"
                                    onmousedown="this.className='btn3_mousedown'" onclick="showTip('show5');return false;"
                                    style="background: #FF9; background-image: url('images/background5.png');">
                                    系统设置</button>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style64">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        </form>
    </div>
</body>
</html>
