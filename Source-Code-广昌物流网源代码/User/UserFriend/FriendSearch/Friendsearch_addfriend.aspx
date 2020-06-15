<%@ page language="C#" autoeventwireup="true" inherits="Friendsearch_quick, App_Web_ub0nx0rr" enableeventvalidation="true" viewStateEncryptionMode="Never" %>

<%@ Register Src="../../UserZone/WebUserControlTop.ascx" TagName="WebUserControlTop"
    TagPrefix="uc2" %>
<%@ Register Src="ControlPageLink.ascx" TagName="ControlPageLink" TagPrefix="uc3" %>
<%@ Register Src="~/User/UserFriend/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 搜索好友</title>

<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<script type="text/javascript" language="javascript">
    function refpage(ret)
    {
        if(typeof(ret)!="undefined")
        {
        window.location.href="Friendsearch_quick.aspx";
        }
    }
</script>
<script type="text/javascript" language="javascript" src="../../Command/common.js"></script>
<script type="text/javascript" language="javascript" src="../../Command/subModal.js"></script>
    <style type="text/css">
        .style1
        {
            height: 28px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
        <div style="margin: auto; width: 100%">
        <div class="us_topinfo">
            <div class="us_showinfo">
                <h1>
                        <span class="us_showinfo1">您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span>
                        您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                            ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                            </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                                &gt;&gt; </span><span><a title="我的好友" href="/User/UserFriend/Index.aspx">我的好友</a></span></span>&gt;&gt;搜索好友
                    </h1>
                </div>
                <div class="cleardiv">
                </div>
            </div>
            <uc2:WebUserControlTop ID="WebUserControlTop2" runat="server" />
            <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
            <br />
            <table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top" width="150px">
                        <uc3:ControlPageLink ID="ControlPageLink1" runat="server"></uc3:ControlPageLink>
                    </td>
                    <td valign="top">
                        <div class="us_topinfo" style="padding: 10px; width: 600px !important;">
                            <asp:Panel ID="quickPanel" runat="server" Width="60%">
                                <table border="0" class="us_showinfo" cellspacing="0" cellpadding="0" width="100%">
                                    <tr>
                                        <td align="center" colspan="2" class="style1"   >
                                           <b>查询添加好友</b></td>
                                    </tr>
                                    <tr>
                                        <td align="right" >
                                            会员名： </td>
                                        <td align="left">
                                            &nbsp;
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ErrorMessage="不能为空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" height="50px">
                                            <asp:Button ID="quick2btn" runat="server" Text="快速搜索" OnClick="quick2btn_Click" /></td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Label ID="Label1" runat="server" ForeColor="#ff0000" Font-Size="13" Text=""></asp:Label>
                            <asp:Panel ID="quickresultPanel" runat="server" Width="100%" Visible="false">
                            <table border="0" class="us_showinfo" cellspacing="0" cellpadding="0" width="100%">
                            <tr>
                            <td>
                                <asp:DataList ID="DataList1" runat="server" Width="100%">
                                    <ItemTemplate>
                                        <table border="0" cellpadding="0" cellspacing="0"  width="100%">
                                            <tr>
                                                <td width="18%">
                                                    &nbsp;</td>
                                                <td width="82%">
                                                    <a href="#">
                                                        <%#Eval("UserName") %>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" height="143">
                                                    <a href="../User/Usershow.aspx?userid=<%#DataBinder.Eval(Container.DataItem,"UserID") %>">
                                                        <asp:Image ID="Image1" runat="server" Height="120px" Width="120px" ImageUrl='<%#ResolveUrl(DataBinder.Eval(Container.DataItem,"UserPic").ToString()) %>' /></a></td>
                                                <td valign="top">
                                                    &nbsp;<%#DataBinder.Eval(Container.DataItem, "UserLove")%></td>
                                            </tr>
                                            <tr>
                                                <td height="10" align="center">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    <a href="javascript:void();" onclick="javascript: window.open('addFriend.aspx?sID=<%#DataBinder.Eval(Container.DataItem,"UserID") %>', 'newwindow', 'height=500, width=800, top=200, left=150, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');">加为好友</a>&nbsp;</td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" align="center" bgcolor="#CC6600">
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                                </td>
                            </tr>
                            <tr>
                            <td align="center"></td>
                            </tr>
                            </table>
                                </asp:Panel>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
</form>
</body>
</html>
