<%@ page language="C#" autoeventwireup="true" inherits="Guild_Register, App_Web_j4bxeeai" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>注册久久乐通行证 - </title>
    <link rel="stylesheet" type="text/css" href="css/reg.css" />
<link rel="stylesheet" type="text/css" href="css/popdialogbox.css" />
 
    <script language="JavaScript" src="inc/ajxa.js"></script>
 
    <script language="javascript" src="inc/dialogbox.js"></script>
 
    <script language="javascript">
        var submitOne = "0";
        function enterSubmit() {
            if (event.keyCode == 13 && submitOne == "0") {
                if (DOSubmit('register') == true) {
                    document.getElementById('save_stat').innerHTML = '<img src=images/loading.gif >';
                    document.getElementById('regbotton').disabled = 'disabled';
                    submitOne = "1";
                    document.getElementById('Button1').click();
                    
                }
            }
        }
        function setNo() {
        }
    </script>
 
</head>
<body>
    <form id="form1" runat="server">
 
    <div id="mainhead">
        <div>
            <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
            </div>
    </div>
    <div id="mainbody">
        <h5>
            <div class="l1">
                欢迎注册<%=GetSiteName() %>通行证，在这里可以交到很多真心朋友！</div>
            <div class="l2">
                已经注册? <a href="../User/Login.aspx">请登录</a></div>
        </h5>
        <ul>
            <table border="0" cellpadding="5" cellspacing="0" style="width: 91%">
                <tr>
                    <td colspan="3" class="font16b">
                        创建<%=GetSiteName() %>通行证
                    </td>
                </tr>
                <tr>
                    <td width="21%" align="right" class="font14">
                        通行证：
                    </td>
                    <td width="27%">
                        <asp:TextBox ID="username" runat="server" class="it1" tabindex="1" size="30" maxlength="40"></asp:TextBox>
                    </td>
                    <td width="52%">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="通行证为电子邮箱，通行证邮箱不能为空" 
                            ControlToValidate="username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="font14">
                        用户昵称：
                    </td>
                    <td>
                    <asp:TextBox ID="nickname" runat="server" class="it1" tabindex="2" size="30" maxlength="16"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="nickname" ErrorMessage="昵称不能为空，请输入您的昵称，长度为<font color=#0080FF>2-16</font>个字！"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td height="25" colspan="3" background="../../images/line.gif">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <span class="font16b">创建密码</span>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="font14">
                        登录密码：
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server" class="it1" tabindex="3" size="30" maxlength="16" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="密码长度为<font color=#0080FF>6-16</font>个字符，由英文字母、数字构成并区分大小写。" 
                            ControlToValidate="password" Display="Dynamic"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td align="right" class="font14">
                        重复登录密码：
                    </td>
                    <td>
                    <asp:TextBox ID="password1" runat="server" class="it1" tabindex="4" size="30" maxlength="16" TextMode="Password" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="password" ControlToValidate="password1" 
                            ErrorMessage="提示：两次密码输入的不一样！" Display="Dynamic"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="密码长度为<font color=#0080FF>6-16</font>个字符，由英文字母、数字构成并区分大小写。" 
                            ControlToValidate="password1" Display="Dynamic"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td height="25" colspan="3" background="../../images/line.gif">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <span class="font16b">请键入您在此图片中看到的数字</span>
                    </td>
                </tr>
                <tr>
                    <td height="53" align="right" class="font14">
                        输入验证码：
                    </td>
                    <td colspan="2">
                        <input name="code" class="it1" id="code" tabindex="6" size="8" maxlength="6" />
                        <asp:Image ID="imgcode" runat="server" ImageUrl="~/Common/ValidateCodenew.aspx?i=1" Height="20px" />
                        &nbsp;<a href="javascript:getValidateNumbernew()">看不清，换一张</a> <span id="validateNoright">
                        </span>
                        <input name="uid" type="hidden" id="uid" value="0" />
                        <a name="1" id="1"></a>
                        <input name="q_id" type="hidden" id="q_id" value="" />
                    </td>
                </tr>
                <tr>
                    <td height="25" colspan="3" background="../../images/line.gif">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <input name="ctype" type="hidden" id="ctype" value="" />
                        <input type="hidden" name="regOperation" />
                        <input type="hidden" value="1" name="ischeck" />
                        <asp:CheckBox ID="checkbox" runat="server" Checked="True" />
                        已仔细阅读并同意“<a onclick="popdialog.openWithIframe('用户服务条款','servies.html',770,500)" style="cursor: pointer;
                            text-decoration: underline;">服务协议</a>”
                    </td>
                </tr>
                <tr>
                    <td height="39" colspan="3" align="center">
                        <span id="save_stat"></span><span class="btmbian">
                           <asp:Button ID="Button1" runat="server" CssClass="rb1" onclick="Button1_Click" Text="我已经阅读并同意接受用户服务协议，创建我的通行证" /></span>
                        
                    </td>
                </tr>
            </table>
        </ul>
    </div>
    <div class="footfrm">
        <div id="foot">
                        CopyRight © 2005-2009 <%=GetSiteName() %></div>
    </div>
    </form>
</body>
</html>
