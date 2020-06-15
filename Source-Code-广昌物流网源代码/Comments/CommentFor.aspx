<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Comment.CommentFor, App_Web_lfubzk4h" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发表评论</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div id="Comment">
<div id="Comment_List">
    <div class="r_navigation">
        <ul>
            <li>评论总数：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></li>
            <li>支持：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
            <li style="text-decoration: line-through;">反对：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></li>
        </ul>
    </div>
    <div class="clear"></div>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="ListLayout">
                <div class="SideBar">
                    评论人：<%# GetUserName(Eval("UserID","{0}")) %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;评论意见：<span><%# GetPK(Eval("PK","{0}")) %></span></div>
                <div class="ListText">
                    <%# Eval("Contents")%>
                </div>
                <div class="ListTime">
                    评论时间：<%# Eval("CommentTime") %>
                    &nbsp;&nbsp;评分：<%# Eval("Score")%></div>
            </div>
            <div class="clear"></div>
        </ItemTemplate>
    </asp:Repeater>
   <div>
   
    <div class="tdbg">
<div align="center" class="tdbgleft">
共
<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
个信息
<asp:Label ID="Toppage" runat="server" Text="" />
<asp:Label ID="Nextpage" runat="server" Text="" />
<asp:Label ID="Downpage" runat="server" Text="" />
<asp:Label ID="Endpage" runat="server" Text="" />
页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
<asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
</asp:DropDownList>
页
  </div>
</div>
   </div>
</div>
<div id="CommentInput">
    <div class="r_navigation">
        发表评论&nbsp;&nbsp;<span id="Span2">本评论只代表网友个人观点，不代表本站观点。</span>
    </div>
    <div class="clear"></div>
    <div id="nocoment" style="display: none" runat="server">
        信息所属栏目评论功能已关闭</div>
    <div id="comentyes" style="display: none" runat="server">
        <div class="CommentSay">
            我也来说两句</div>
        <div class="CommentPK">
            <asp:RadioButtonList ID="RBLPK" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">我支持</asp:ListItem>
                <asp:ListItem Value="0">我反对</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="ListLayout1">
            <div class="Comment">
                发表评论内容：</div>
            <div class="ContentRight">
                <asp:TextBox ID="TxtContents" runat="server" Rows="4" TextMode="MultiLine" Width="80%"
                    Height="160"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="评论内容不能为空" ControlToValidate="TxtContents"></asp:RequiredFieldValidator>
            </div>
            <div class="CommentScore">
                评 分：</div>
            <div class="CommentRight">
                <asp:DropDownList ID="DDLScore" runat="server">
                    <asp:ListItem Value="1">1分</asp:ListItem>
                    <asp:ListItem Value="2">2分</asp:ListItem>
                    <asp:ListItem Value="3" Selected="True">3分</asp:ListItem>
                    <asp:ListItem Value="4">4分</asp:ListItem>
                    <asp:ListItem Value="5">5分</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="text-align: center;">
                <asp:HiddenField ID="HdnItemID" runat="server" />
                <asp:HiddenField ID="HdnTitle" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="发表评论" OnClick="Button1_Click" /></div>
        </div>
    </div>
</div>
</div>
</form>
</body>
</html>