﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Content.MyComment, App_Web_y3ifdjqg" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的评论</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />    
</head>
<body>
<div>
<div class="us_pynews" style="height:24px; line-height:24px;">
您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx">会员中心</a></span><span> &gt;&gt; </span><span>我的评论</span></span>
</div>
    
<form id="form1" runat="server">
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CommentID" PageSize="20" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
	<Columns>                
		<asp:BoundField DataField="CommentID" HeaderText="ID">
		<HeaderStyle Width="6%" />
		<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:TemplateField HeaderText="所属内容标题">
		<HeaderStyle Width="25%" />
		<ItemTemplate>  
			<a href="<%# GetUrl(Eval("GeneralID", "{0}"))%>" target="_blank"><%# GetTitle(Eval("GeneralID", "{0}"))%></a>     
		</ItemTemplate>            
		</asp:TemplateField>                
		<asp:BoundField DataField="Title" HeaderText="评论标题">
		<HeaderStyle Width="24%" />
		<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>
		<asp:BoundField DataField="Contents" HeaderText="评论内容">
		<HeaderStyle Width="25%" />
		<ItemStyle HorizontalAlign="Center" />
		</asp:BoundField>            
		<asp:TemplateField HeaderText="发表日期" >
			<ItemTemplate>                     
			<%# Eval("CommentTime", "{0:yyyy-mm-dd}")%>
			</ItemTemplate>
		<ItemStyle HorizontalAlign="Center" />
		</asp:TemplateField>
	</Columns>
	<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
	<RowStyle BackColor="#EFF3FB" Height="25px" />
	<EditRowStyle BackColor="#2461BF" />
	<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
	<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
	<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
	<AlternatingRowStyle BackColor="White" />
	<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>           
</form>
</div>
</body>
</html>
