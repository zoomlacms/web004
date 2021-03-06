﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ModelField, App_Web_0i4cscq5" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>字段列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<a href="ModelManage.aspx">内容模型管理</a>&gt;&gt;<span>模型字段列表</span>&nbsp;&nbsp;&nbsp;当前模型:
<asp:Literal ID="LModelName" runat="server"></asp:Literal>
</div>
<div class="clearbox"></div>

<table width="100%" cellspacing="1" cellpadding="0" class="border" align="center">
	<tr class="bgleft">
		<td align="left" style="height: 20px">当前模型:[<asp:Literal ID="Literal1" runat="server"></asp:Literal>] &nbsp; &nbsp; <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp; <a href="AddModelField.aspx?ModelID=<%=Request.QueryString["ModelID"] %>">添加字段</a>
		</td>
	</tr>
</table>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
	<tr class="gridtitle" align="center" style="height: 25px;">
		<td width="10%" height="20"><strong>字段名</strong></td>
		<td width="10%"><strong>字段别名</strong></td>
		<td width="10%"><strong>字段类型</strong></td>
		<td width="8%"><strong>字段级别</strong></td>
		<td width="5%"><strong>是否必填</strong></td>
		<td width="5%"><strong>是否显示</strong></td>
		<td width="5%"><strong>可复制</strong></td>
	    <td width="7%"><strong>批量添加</strong></td>
		<td width="10%"><strong>排序</strong></td>
		<td width="10%"><strong>操作</strong></td>
		<td width="15%"><strong>编辑</strong></td>
	</tr>
	<asp:Repeater ID="RepModelField" runat="server" OnItemCommand="Repeater1_ItemCommand">
		<ItemTemplate>
			<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
				<td>
					<%#Eval("IsShow", "{0}") == "False" ? "<font color=#999999>" :""%><%#Eval("FieldName")%><%#Eval("IsShow","{0}")=="False"?"</font>":"" %>
				</td>
				<td align="center">
					<%#Eval("FieldAlias")%>
				</td>
				<td align="center">
					<%# GetFieldType(Eval("FieldType", "{0}"))%>
				</td>
				<td align="center">
					 <%# Get_sum(Eval("Sys_type", "{0}")) ? "自定义" : "系统"%> 
				</td>
				<td align="center">
					<%# GetStyleTrue(Eval("IsNotNull", "{0}"))%>
				</td>
				<td align="center">
					<%# GetStyleTrue(Eval("ShowList", "{0}"))%>
				</td>
				<td align="center">
					<%# GetStyleTrue(Eval("IsCopy", "{0}"))%>
				</td>
				<td align="center">
					<%# GetIslotsize(Eval("Islotsize", "{0}"))%>
				</td>
				<td align="center">
					<asp:LinkButton ID="LinkButton2" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("FieldID") %>' Visible='<%# Get_sum(Eval("Sys_type","{0}")) ? true:false %> '>上移 |</asp:LinkButton>
					<asp:LinkButton ID="LinkButton3" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("FieldID") %>' Visible='<%# Get_sum(Eval("Sys_type","{0}")) ? true:false %> '>下移</asp:LinkButton>
				</td>
				<td align="center">
				   <asp:LinkButton ID="LinkButton4" runat="server" CommandName="IsPlay" CommandArgument='<%# Eval("FieldID") %>' Visible='<%# Get_sum(Eval("Sys_type","{0}")) ? true:false %> '>
						<%# System.Convert.ToInt32(Eval("ShowList"))==0 ? "显示" : "不显示"%> 
				   </asp:LinkButton>
				</td>
				<td align="center">
					<a href="UpdateModelField.aspx?FieldID=<%# Eval("FieldID") %>">修改</a>
					| <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%# Eval("FieldID") %>' OnClientClick="return confirm('确定删除此字段吗?\r\n\r\n删除后请更新相应字段输出配置以确保应用')" Visible='<%# Get_sum(Eval("Sys_type","{0}")) ? true:false %> '>删除</asp:LinkButton>
				</td>
			</tr>
		</ItemTemplate>
	</asp:Repeater>
</table>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
	<tr class="tdbg">
		<td width="30%">
			<asp:TextBox ID="TxtTemplate" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
			<input type="button" value="选择模板" class="C_input"  style="width:100px;" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)"  />
			<asp:Button ID="Button1" runat="server"  class="C_input"  style="width:100px;" Text="设定模板" OnClick="SetTemplate" />
		</td>
	</tr>
</table>
</form>
</body>
</html>