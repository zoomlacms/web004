<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Template.LabelManage, App_Web_kjsxri35" validaterequest="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>标签管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<span><a href="LabelManage.aspx">标签管理</a></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
        <tr class="tdbg">
            <td align="left">
                &nbsp;<a href="LabelHtml.aspx">添加静态标签</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="LabelSql.aspx">添加动态标签</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                    href="PageLabel.aspx">添加分页标签</a>
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
        <tr class="tdbg">
            <td align="left" style="height: 19px">
                <a href="LabelManage.aspx">所有标签</a>
            </td>
            <td align="left" style="height: 19px">
                标签分类：<asp:Label ID="lblLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
        <tr class="tdbg">
            <td align="left" style="height: 19px">
                标签搜索：<asp:DropDownList ID="DDLLabelCate" runat="server">
                </asp:DropDownList>
                &nbsp;名称：<asp:TextBox ID="TxtLableName" class="l_input" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Button ID="BtnSearch" class="C_input" Style="width: 100px;" runat="server" Text="搜索标签"
                    OnClick="BtnSearch_Click" />
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr class="gridtitle" align="center" style="height: 25px;">
            <td width="5%">
                选择
            </td>
            <td width="30%">
                名称
            </td>
            <td style="width: 20%">
                标签分类
            </td>
            <td width="20%">
                标签类别
            </td>
            <td style="width: 236px">
                操作
            </td>
        </tr>
        <asp:Repeater ID="repFile" runat="server" OnItemCommand="repFileReName_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="left">
                        <asp:CheckBox ID="chkSel" runat="server" />
                        <asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("LabelID")%>' Visible="false"></asp:Label>
                    </td>
                    <td align="left">
                        <%# GetLabelLink(Eval("LabelID", "{0}"), Eval("LabelName", "{0}"), Eval("LabelType", "{0}"))%>
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
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("LabelName") %>'>修改</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Del" CommandArgument='<%# Eval("LabelName") %>'
                            OnClientClick="return confirm('确实要删除此标签吗？');">删除</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Copy" CommandArgument='<%# Eval("LabelName") %>'>复制</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div class="clearbox">
    </div>
    <div style="text-align:center;width:100%">
        <table width="100%">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbg">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条信息
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
                        Width="30px"></asp:TextBox>条信息/页 转到第<asp:DropDownList ID="DropDownList2" runat="server"
                            AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    页
                </td>
            </tr>
        </table>
    </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
        Text="全选" />
    <asp:Button ID="Button1" runat="server" Text="批量导出" class="C_input" Style="width: 100px;"
        OnClick="btnExport_Click" OnClientClick="return confirm('你确定要导出选中标签吗？')" Visible="false" />
         <asp:Button ID="Button3" runat="server" Text="批量导入" Visible="false" OnClientClick="location.href='LabelImport.aspx';return false;" class="C_input" Style="width: 100px;"
        UseSubmitBehavior="true" />
    <asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"
        OnClientClick="return confirm('你确定要将所有选择标签删除吗？')" class="C_input" Style="width: 100px;"
        UseSubmitBehavior="true" />
    &nbsp;
   
    <%--导出文件名：/App_Data/LabelExport.xml--%>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:HiddenField ID="HiddenField2" runat="server" />
    </form>
</body>
</html>
