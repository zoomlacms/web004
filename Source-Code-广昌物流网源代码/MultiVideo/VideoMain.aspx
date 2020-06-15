<%@ page language="C#" enableeventvalidation="false" autoeventwireup="true" inherits="MultiVideo_VideoMain, App_Web_jteulmhj" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../JS/jquery.js" type="text/javascript"></script>
    <link href="../App_Themes/AdminDefaultTheme/Default.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/AdminDefaultTheme/index.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/AdminDefaultTheme/main.css" rel="stylesheet" type="text/css" />
    <style>
        div
        {
            border: 1px solid black;
        }
    </style>
    <%--<script language="JavaScript" type="text/javascript">

        // Version check for the Flash Player that has the ability to start Player Product Install (6.0r65)
        var hasProductInstall = DetectFlashVer(6, 0, 65);
        // Version check based upon the values defined in globals
        var hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);
        if (hasProductInstall && !hasRequestedVersion) {
            // DO NOT MODIFY THE FOLLOWING FOUR LINES
            // Location visited after installation is complete if installation is required
            var MMPlayerType = (isIE == true) ? "ActiveX" : "PlugIn";
            var MMredirectURL = window.location;
            document.title = document.title.slice(0, 47) + " - Flash Player Installation";
            var MMdoctitle = document.title;
            AC_FL_RunContent(
		"src", "playerProductInstall",
		"FlashVars", "MMredirectURL=" + MMredirectURL + '&MMplayerType=' + MMPlayerType + '&MMdoctitle=' + MMdoctitle + "",
		"width", "220",
		"height", "160",
		"align", "middle",
		"id", "VideoWin",
		"quality", "high",
		"bgcolor", "#ffffff",
		"name", "VideoWin",
		"allowScriptAccess", "sameDomain",
		"type", "application/x-shockwave-flash",
		"pluginspage", "http://www.adobe.com/go/getflashplayer"
	);
        } else if (hasRequestedVersion) {
            // if we've detected an acceptable version
            // embed the Flash Content SWF when all tests are passed
            AC_FL_RunContent(
			"src", "VideoWin?Roomid=12",
			"width", "220",
			"height", "160",
			"align", "middle",
			"id", "VideoWin",
			"quality", "high",
			"bgcolor", "#ffffff",
			"name", "VideoWin",
			"allowScriptAccess", "sameDomain",
			"type", "application/x-shockwave-flash",
			"pluginspage", "http://www.adobe.com/go/getflashplayer"
	);
        } else {  // flash is too old or we can't detect the plugin
            var alternateContent = 'Alternate HTML content should be placed here. '
  	+ 'This content requires the Adobe Flash Player. '
   	+ '<a href=http://www.adobe.com/go/getflash/>Get Flash</a>';
            document.write(alternateContent);  // insert non-flash content
        }
    </script>--%>
    <script>
        function selectText(sp, ep) {
            sp = parseInt(sp)
            ep = parseInt(ep)

            if (isNaN(sp) || isNaN(ep))
                return;

            var rng = box.createTextRange();

            rng.moveEnd("character", -box.value.length)
            rng.moveStart("character", -box.value.length)

            rng.collapse(true);

            rng.moveEnd("character", ep)
            rng.moveStart("character", sp)

            rng.select();

            returnCase(rng);
        }    
    </script>
</head>
<body style="text-align: center; background-color: #0077EC;">
    <form id="form1" runat="server">
    <div style="width: 955px; margin-left: auto; margin-right: auto; text-align: left;
        background-color: White">
        <asp:ScriptManager ID="Scriptmanager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="upMain" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:HiddenField ID="hfRoomId" runat="server" />
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td class="tabbernav1">
                                        &nbsp;
                                    </td>
                                    <td class="tabbernav">
                                        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                                            <Items>
                                                <asp:MenuItem Text=" 大厅 " Value="0" Selected="True"></asp:MenuItem>
                                                <asp:MenuItem Text=" 房间 " Value="1" Enabled="False"></asp:MenuItem>
                                            </Items>
                                            <StaticMenuItemStyle CssClass="tabItem" BorderWidth="2px" />
                                            <StaticSelectedStyle CssClass="tabSelected" />
                                            <StaticHoverStyle CssClass="tabHover" />
                                        </asp:Menu>
                                    </td>
                                    <td class="tabbernav2">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="tabcontent">
                            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                                <asp:View ID="vHall" runat="server">
                                    <div style="height: 660px; width: 955px; margin-left: auto; margin-right: auto; text-align: left;">
                                        <div style="width: 220px; height: 100%; position: relative; float: left;">
                                            <asp:ListBox ID="lbHall" Width="220px" DataValueField="id" DataTextField="name" Height="32%"
                                                runat="server" OnSelectedIndexChanged="lbHall_SelectedIndexChanged" AutoPostBack="True"
                                                OnDataBound="lbHall_DataBound"></asp:ListBox>
                                            <div style="width: 220px; height: 68%;">
                                                <div style="text-align: center; font-size: 16px">
                                                    个人中心</div>
                                                <div>
                                                    <div style="float: left; width: 80px; text-align: center; height: 90px">
                                                        <asp:Image ID="userface" runat="server" ImageUrl="~/Images/head.jpg" Width="80px"
                                                            Height="90px" />
                                                    </div>
                                                    <div style="float: left; padding-left: 12px; height: 90px;">
                                                        用户名:
                                                        <asp:Label ID="lblName" runat="server"></asp:Label><br />
                                                        积 分:<asp:Label ID="UserEXP" runat="server"></asp:Label><br />
                                                        钱 包:<asp:Label ID="Purse" runat="server"></asp:Label><br />
                                                        点 券:<asp:Label ID="UserPoint" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                                <div style="clear: both; text-align: center;">
                                                    注册时间:<asp:Label ID="RegTime" runat="server"></asp:Label><br />
                                                    电子邮箱:<asp:Label ID="Email" runat="server"></asp:Label><br />
                                                    <a href="videomain.aspx">个人设置</a>
                                                </div>
                                                <div style="text-align: center">
                                                    <asp:Button Text="自动冲值" class="C_input" Enabled=false runat="server" ID="cuzi" />
                                                    <asp:Button Text="开启宝箱" class="C_input" Enabled=false runat="server" ID="baishao" />
                                                </div>
                                            </div>
                                        </div>
                                        <asp:UpdatePanel ID="upRoom" runat="server">
                                            <ContentTemplate>
                                                <asp:Timer ID="timer1" runat="server" Enabled="True" OnTick="timerLogin_Tick" Interval="2500">
                                                </asp:Timer>
                                                <div style="width: 720px; height: 100%; position: relative; float: left; text-align: left;">
                                                    <asp:Repeater ID="repRoom" runat="server" OnItemDataBound="repRoom_ItemDataBound">
                                                        <ItemTemplate>
                                                            <div style="width: 114px; text-align: center; margin-left: auto; margin-right: auto;
                                                                float: left;">
                                                                <div style="width: 100px; margin-left: auto; margin-right: auto; text-align: center;">
                                                                    <div style="width: 65px; height: 70px; text-align: center; margin-left: auto; margin-right: auto;"
                                                                        title="单击进入" onmouseover="this.style.cursor='pointer'; ">
                                                                        <asp:ImageButton CommandArgument='<%#Eval("Id") %>' Style="width: 65px; height: 70px;"
                                                                            ID="imgbtnRoom" runat="server" OnClick="imgbtnRoom_Click" />
                                                                    </div>
                                                                    <%#GetPersonNumByRoomId(ZoomLa.Common.DataConverter.CLng( Eval("id").ToString()))%>/<%#Eval("MaxPerson") %>(人)<br />
                                                                    <%#Eval("RoomName") %>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                    <div style="clear: left;">
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <div style="clear: left;">
                                        </div>
                                    </div>
                                </asp:View>
                                <asp:View ID="vRoom" runat="server" OnActivate="vRoom_Activate">
                                    <asp:HiddenField ID="hfAdmitDateTime" runat="server" />
                                    <div style="height: 660px; width: 955px; margin-left: auto; margin-right: auto; text-align: left;">
                                        <div style="width: 220px; height: 100%; margin-right: 2px; float: left">
                                            <div style="width: 220px; height: 160px; margin-bottom: 2px;">
                                                <asp:UpdatePanel ID="upMark1" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <asp:HiddenField ID="hfMark1" runat="server" />
                                                        <asp:Panel ID="pnlMark1" runat="server">
                                                            <asp:Label ID="lblMark1" runat="server" Text=""></asp:Label>
                                                        </asp:Panel>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                            <div style="width: 220px; height: 160px; margin-bottom: 2px;">
                                                <asp:UpdatePanel ID="upMark2" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <asp:HiddenField ID="hfMark2" runat="server" />
                                                        <asp:Panel ID="pnlMark2" runat="server">
                                                            <asp:Label ID="lblMark2" runat="server" Text=""></asp:Label>
                                                        </asp:Panel>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                            <div style="width: 220px; height: 160px; margin-bottom: 2px;">
                                                <asp:UpdatePanel ID="upMark3" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <asp:HiddenField ID="hfMark3" runat="server" />
                                                        <asp:Panel ID="pnlMark3" runat="server">
                                                            <asp:Label ID="lblMark3" runat="server" Text=""></asp:Label>
                                                        </asp:Panel>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                            <div style="width: 220px; height: 160px; margin-bottom: 2px;">
                                                <asp:UpdatePanel ID="upMark4" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <asp:HiddenField ID="hfMark4" runat="server" />
                                                        <asp:Panel ID="pnlMark4" runat="server">
                                                            <asp:Label ID="lblMark4" runat="server" Text=""></asp:Label>
                                                        </asp:Panel>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </div>
                                        <div style="width: 500px; margin-right: 2px; height: 100%; float: left">
                                            <div style="width: 100%; height: 50px; margin-bottom: 5px;">
                                            </div>
                                            <div style="width: 100%; height: 270px; margin-bottom: 5px;">
                                                <asp:UpdatePanel ID="upPub" runat="server">
                                                    <ContentTemplate>
                                                        <asp:TextBox ID="txtPub" runat="server" Height="270px" Width="100%" TextMode="MultiLine"
                                                            ReadOnly="True"></asp:TextBox>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                            <div style="width: 100%; height: 220px; margin-bottom: 5px;">
                                                <asp:TextBox ID="txtPri" runat="server" Height="220px" Width="100%" TextMode="MultiLine"
                                                    ReadOnly="True"></asp:TextBox>
                                            </div>
                                            <div style="width: 100%; height: 20px; margin-bottom: 5px;">
                                                <asp:DropDownList ID="ddrAdmit" runat="server" Width="100px">
                                                    <asp:ListItem Selected="True" Value="0">所有人</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <div style="width: 100%; height: 60px; margin-bottom: 5px; position: relative;">
                                                        <div style="position: absolute; top: 5px; left: 452px; height: 48px; width: 42px;">
                                                            <asp:Button ID="btnSend" runat="server" Text="发送" Height="48px" Width="42px" OnClick="btnSend_Click" />
                                                        </div>
                                                        <asp:TextBox ID="txtSend" runat="server" Height="58px" TextMode="MultiLine" Width="447px"></asp:TextBox>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                        <div style="width: 220px; margin-right: 2px; height: 100%; float: left">
                                            <div style="width: 220px; height: 160px; margin-bottom: 2px;">
                                                <asp:UpdatePanel ID="upMark0" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <asp:HiddenField ID="hfMark0" runat="server" />
                                                        <asp:Panel ID="pnlMark0" runat="server">
                                                            <asp:Label ID="lblMark0" runat="server" Text=""></asp:Label>
                                                        </asp:Panel>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                            <asp:UpdatePanel ID="upUpMark" runat="server">
                                                <ContentTemplate>
                                                    <div style="width: 220px; height: 160px; margin-bottom: 2px; position: relative;">
                                                        <table border="0" width="220px" height="160px">
                                                            <tr class="title" height="24px">
                                                                <td>
                                                                    麦序
                                                                </td>
                                                                <td>
                                                                    用户名
                                                                </td>
                                                            </tr>
                                                            <asp:Repeater ID="repUpMark" runat="server" OnItemDataBound="repUpMark_ItemDataBound">
                                                                <ItemTemplate>
                                                                    <tr class="tdbg" height="24px">
                                                                        <td>
                                                                            <asp:Label ID="lblUpMarkNum" runat="server" Text=""></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <%#GetUserNameByUserId(ZoomLa.Common.DataConverter.CLng( Eval("UserId").ToString())) %>
                                                                        </td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                            <tr class="tdbg">
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div style="width: 61px; position: absolute; top: 131px; left: 155px;">
                                                            <asp:Button CssClass="C_input" ID="btnUpMark" runat="server" Text="排麦" OnClick="btnUpMark_Click" />
                                                        </div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <asp:UpdatePanel ID="upRoomUser" runat="server">
                                                <ContentTemplate>
                                                    <asp:Timer ID="timerLogin" runat="server" Enabled="True" OnTick="timerLogin_Tick"
                                                        Interval="2500">
                                                    </asp:Timer>
                                                    <div style="width: 220px; height: 330px; margin-bottom: 2px;">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房间用户<br />
                                                        <table border="0" width="220px" height="310px">
                                                            <tr class="title" height="24px">
                                                                <td>
                                                                    用户
                                                                </td>
                                                                <td>
                                                                    性别
                                                                </td>
                                                                <%if (isManage())
                                                                  { %>
                                                                <td>
                                                                    操作
                                                                </td>
                                                                <%} %>
                                                            </tr>
                                                            <asp:Repeater ID="repRoomUser" runat="server" OnItemDataBound="repRoomUser_ItemDataBound">
                                                                <ItemTemplate>
                                                                    <tr class="tdbg" height="24px">
                                                                        <%#GetUserInfoByUserId(ZoomLa.Common.DataConverter.CLng( Eval("UserId").ToString())) %>
                                                                        <%if (isManage())
                                                                          { %>
                                                                        <td>
                                                                            <asp:LinkButton ID="lbsm" runat="server" OnClick="lbsm_Onclick" CommandArgument='<%Eval("UserId").ToString() %>'>上麦</asp:LinkButton>
                                                                        </td>
                                                                        <%} %>
                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                            <tr class="tdbg" height="100%">
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                                <%if (isManage())
                                                                  { %>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                                <%} %>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                        <div style="clear: left;">
                                        </div>
                                    </div>
                                </asp:View>
                                <asp:View ID="vLogin" runat="server">
                                    <contenttemplate>
                                            <div style="height: 620px; width: 955px; margin-left: auto; margin-right: auto; text-align: left;
                                                line-height: 955px; vertical-align: middle">
                                                <div style="margin-left: auto; margin-right: auto; width: 312px; height: 198px; border: 0px solid black;">
                                                    <table cellpadding="4" cellspacing="0" style="border:2px solid #507CD1; border-collapse: collapse;">
                                                        <tr>
                                                            <td>
                                                                <table cellpadding="0" style="height: 184px; width: 312px;background-color:#C3E1F2;">
                                                                    <tr>
                                                                        <td align="center" colspan="2" style="border-bottom:2px solid White;color: White; background-color: #507CD1; font-size: Small;
                                                                            font-weight: bold;">
                                                                            登录
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" style="border-bottom:2px solid White;">
                                                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                                                        </td>
                                                                        <td style="border-bottom:2px solid White;">
                                                                            <asp:TextBox ID="UserName" runat="server"  CssClass="l_input" Font-Size="1em" Height="20px"
                                                                                Width="160px"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                                                ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="loginUser">*</asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" style="border-bottom:2px solid White;">
                                                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                                                        </td>
                                                                        <td style="border-bottom:2px solid White;">
                                                                            <asp:TextBox ID="Password" runat="server" CssClass="l_input" Font-Size="1em" Height="20px"
                                                                                TextMode="Password" Width="160px"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                                                ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="loginUser">*</asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="center" colspan="2" style="color: Red;border-bottom:2px solid White;">
                                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" colspan="2" style="border-bottom:2px solid White;">
                                                                            <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1"
                                                                                BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana"
                                                                                Font-Size="Small" ForeColor="#284E98" Text=" 登录 " ValidationGroup="loginUser"
                                                                                OnClick="LoginButton_Click" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </contenttemplate>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upScript" runat="server">
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
