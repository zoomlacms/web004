<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Template.LabelManage, App_Web_5uadzq1l" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>标签管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >><a href="LabelManage.aspx">标签管理</a></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr class="tdbg">
                <td align="left">
                    &nbsp;<a href='LabelHtml.aspx?nid=<%= base.Request.QueryString["nid"] %>'>添加静态标签</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href='LabelSql.aspx?nid=<%= base.Request.QueryString["nid"] %>'>添加动态标签</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                        href='PageLabel.aspx?nid=<%= base.Request.QueryString["nid"] %>'>添加分页标签</a>
                </td>
            </tr>
        </table>
        <div>
        </div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr class="tdbg">
                <td align="left" style="height: 19px">
                    &nbsp;标签分类：<a href="LabelManage.aspx?nid=<%= base.Request.QueryString["nid"] %>">所有标签</a>&nbsp;&nbsp;|&nbsp;&nbsp;<asp:Label ID="lblLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr class="tdbg">
                <td align="left" style="height: 19px">
                    &nbsp;标签搜索：<asp:DropDownList ID="DDLLabelCate" runat="server">
                    </asp:DropDownList>
                    &nbsp;名称：<asp:TextBox ID="TxtLableName" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="BtnSearch" runat="server" CssClass="button" Text="搜索标签" OnClick="BtnSearch_Click" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" align="center" class="border">
            <tr align="center" style="background-color: #F0F6FC; height: 25px;">
                <td width="5%">
                    <strong>选择</strong>
                </td>
                <td width="30%">
                    <strong>名称</strong>
                </td>
                <td style="width: 20%">
                    <strong>标签分类</strong>
                </td>
                <td width="20%">
                    <strong>标签类型</strong>
                </td>
                <td style="width: 236px">
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="repFile" runat="server" OnItemCommand="repFileReName_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg">
                        <td align="center">
                            <asp:CheckBox ID="chkSel" runat="server" />
                            <asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("LabelID")%>' Visible="false"></asp:Label>
                        </td>
                        <td align="left">
                            <%# GetLabelLink(Eval("LabelID","{0}")) %>
                        </td>
                        <td align="center">
                            <a href="LabelManage.aspx?Cate=<%# GetLabelCate(Eval("LabelCate").ToString()) %>">
                                <%#Eval("LabelCate") %></a>
                        </td>
                        <td align="center">
                            <%#GetLabelType(Eval("LabelType").ToString()) %>
                        </td>
                        <td align="center">
                            &nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" Visible='<%#GetVis(Eval("LabelID").ToString()) %>' CommandArgument='<%# Eval("LabelID") %>'>修改</asp:LinkButton>
                            
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Del" CommandArgument='<%# Eval("LabelID") %>' Visible='<%#GetVis(Eval("LabelID").ToString()) %>' 
                                OnClientClick="return confirm('确实要删除此标签吗？');">删除</asp:LinkButton>
                            
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Copy" CommandArgument='<%# Eval("LabelID") %>'>复制</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <div id="pager1" runat="server">
        </div>
    
    <table width="100%">
        <tr>
            <td align="left">
                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
                    Text="全选" />
                <asp:Button ID="Button1" runat="server" Text="批量导出" CssClass="button" OnClick="btnExport_Click"
                    OnClientClick="return confirm('你确定要导出选中标签吗？')" />&nbsp;
                <asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"
                    OnClientClick="return confirm('你确定要将所有选择标签删除吗？')" CssClass="button" UseSubmitBehavior="true" />
                导出文件名：/App_Data/LabelExport.xml
            </td>
        </tr>
    </table></div>
    </form>
</body>
</html>
