﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ContentManage, App_Web_0i4cscq5" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>内容管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>   
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
        var diag = new Dialog();
        function openurls(url) {
            Dialog.open({ URL: url });
        }
        function open_title(ModelID, NodeID) {
            
            diag.Width = 800;
            diag.Height = 600;
            diag.Title = "添加内容<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = "AddContent.aspx?ModelID=" + ModelID + "&NodeID=" + NodeID;
            diag.show();

            //location.href = "AddContent.aspx?ModelID=" + ModelID + "&NodeID=" + NodeID;
        }

        function opentitle(url, title) {
            diag.Width = 800;
            diag.Height = 600;
            diag.Title = title;
            diag.URL = url;
            diag.show();
            
        }

        function closdlg() {
            Dialog.close();
        }
    </script>
    <script type="text/javascript">
        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4");
      
        window.onload = function() {
            pload();
        }
        function ShowTabs(ID) {            
            location.href = 'ContentManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&id=' + ID + '&type=' + ID;
        }
        
        function pload() {
            var ID = '<%=Request.QueryString["id"]%>';
            if (ID != tID) {
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
                tID = ID;
            }
            try {
                parent.document.getElementById("main_right").height = document.body.offsetHeight;
            } catch (Error) { }
        }

        function chechs() {

        }
        function getinfo(cid) {
            //alert(cid);
            //location.href = 'ContentShow.aspx?id=' + id;
        }
    </script>
    <script src="/JS/pacalendar.js" type="text/javascript"></script>
    </head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span style="float: right; background: url(../../../Images/ModelIcon/edit.gif) no-repeat left;
            padding-left: 20px;"><a onclick="opentitle('EditNode.aspx?NodeID=<%=this.NodeID %>','配置本节点')"
                href="###" title="配置本节点">配置本节点</a></span> <span>后台管理</span> &gt;&gt; <span><a href="ContentManage.aspx">
                    内容管理</a></span> &gt;&gt; <span >
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
    </div>
    <div class="clearbox">
    </div>
    <div class="divline" style="padding-left: 20px; height: 35px">
        <ul>
            <li><a href="ContentManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>">内容列表</a></li>
            <li><a href="ContentManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&flag=Elite">
                推荐内容</a> &nbsp;&nbsp; <b>请选择排列顺序：</b>
                <asp:DropDownList ID="txtbyfilde" CssClass="x_input" runat="server" OnSelectedIndexChanged="txtbyfilde_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="txtbyOrder" runat="server" CssClass="x_input" OnSelectedIndexChanged="txtbyOrder_SelectedIndexChanged">
                </asp:DropDownList>
            </li>
            <li>&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" CssClass="x_input" runat="server">
                 <asp:ListItem Value="0"  Selected="True">标题</asp:ListItem>
                    <asp:ListItem Value="1">ID</asp:ListItem>
                    <asp:ListItem Value="2">录入者检索</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" Width="140px" Height="15px" class="l_input"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Text="查找" OnClick="Button4_Click" class="C_input" />&nbsp;
            </li>
        </ul>
    </div>
    <br />
    <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
        <tr class="tdbg">
            <td>
                翻新：设置日期：
                <asp:TextBox ID="txtdate" onclick="calendar('txtdate')" runat="server" Width="123px" class="l_input" Height="18px"></asp:TextBox>
                <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" ToolTip="鼠标点击左边输入框出现时间选择框" />
                <asp:Button ID="Button12" runat="server" class="C_input" Text="翻新" 
                    OnClientClick="if(!IsSelectedId()){alert('请选择要翻新的项目');return false;}" 
                    onclick="Button12_Click" Width="55px" />
                <asp:Button ID="btnAdd" runat="server" class="C_input" Text="添加" 
                    onclick="btnAdd_Click" Width="55px" />
                <asp:Label ID="lblAdd" runat="server" Visible="False" Text="Label" 
                    ForeColor="Red"></asp:Label>
                <asp:Button ID="Button10" runat="server" class="C_input" Text="使过期" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}"
                    onclick="Button10_Click" Width="72px" />
            </td>
            <td>
                审核：审核原因：
                <asp:TextBox ID="TextBox3" runat="server" Width="147px" CssClass="l_input"></asp:TextBox>
                <asp:Button ID="Button15" runat="server" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要审核选中内容吗？')}"
                    Text="审核通过" onclick="Button15_Click" Width="80px" />
                <asp:Button ID="Button16" runat="server" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要取消审核选中内容吗？')}"
                    Text="审核失败" onclick="Button16_Click" Width="80px" />
            </td>
        </tr>
    </table>
    <br />
    <div class="divline" style="padding-left: 10px">
        <b onclick="OpenAddContent()">内容操作：</b><asp:Label ID="lblAddContent" runat="server"  Text="www"></asp:Label>
    </div>
    <div class="clearbox">
    </div>
    <% if (Request.QueryString["isDivImp"] != null && Request.QueryString["isDivImp"] == "1")
       { %>
    <div id="divImp" class="divline" style="padding-left: 10px; display: block">
        选择导入源：<asp:FileUpload ID="fileImp" runat="server" />
        <asp:Button ID="btnCurrentImport" runat="server" OnClick="btnCurrentImport_Click"
            Text="导入" CausesValidation="true" Width="75px" Height="19px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fileImp"
            Display="Dynamic" ErrorMessage="请选择Excel(xls/xlsx)文件,可下载模板!"></asp:RequiredFieldValidator>
        <asp:LinkButton ID="lbtnSaveTempter" runat="server" OnClick="lbtnSaveTempter_Click"
            CausesValidation="False"><font color="red">*</font>下载<%=this.bmode.GetModelById(ZoomLa.Common.DataConverter.CLng(int.Parse(this.Request.QueryString["ModelID"]))).ItemName %>导入模板 </asp:LinkButton>
    </div>
    <div class="clearbox">
    </div>
    <%} %>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                    所有内容
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                    草稿
                </td>
                <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                    待审核
                </td>
                <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                    已审核
                </td>
                <td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4)">
                    退稿
                </td>
                <td align="right"  style="font-size:12px">
                     本节点工作流：<asp:Label runat="server" ID="lab1" Text=""></asp:Label> &gt;&gt;<asp:Label runat="server" ID="lab2" Text=""></asp:Label> &gt;&gt;<asp:Label runat="server" ID="lab3" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="GeneralID"
        PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging"
        OnRowCommand="Lnk_Click" Width="100%" Height="20px" AllowPaging="True"
        AllowSorting="true" CellPadding="2" CellSpacing="1" BackColor="White"
        ForeColor="Black" CssClass="border" EnableTheming="False" 
        RowStyle-CssClass="tdbg" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="选择">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <HeaderStyle Width="5%" Height="25px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="ID" DataField="GeneralID">
                <HeaderStyle Width="5%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="标题">
                <ItemTemplate>
                    <%# GetPic(Eval("ModelID", "{0}"))%>
                    <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%>
                </ItemTemplate>
                <HeaderStyle Width="41%" BorderColor="White" />
                <ItemStyle BorderColor="White" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="点击数" DataField="Hits">
                <ItemStyle HorizontalAlign="Center" />
                <HeaderStyle Width="6%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="推荐">
                <ItemTemplate>
                    <%# GetElite(Eval("EliteLevel", "{0}")) %>
                </ItemTemplate>
                <HeaderStyle Width="6%" />
                <ItemStyle HorizontalAlign="Center" BorderColor="White" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="状态">
                <ItemTemplate>
                <asp:HiddenField ID="hfstatus" runat="server" Value='<%#Eval("Status") %>' />
                    <%#GetStatus(Eval("Status", "{0}")) %>
                </ItemTemplate>
                <HeaderStyle Width="6%" />
                <ItemStyle HorizontalAlign="Center" BorderColor="White" />
            </asp:TemplateField>                              
          <%--  <asp:TemplateField HeaderText="已生成">
                <ItemTemplate>
                    <%# GetCteate(Eval("status", "{0}"))%>
                </ItemTemplate>
                <HeaderStyle Width="6%" />
                <ItemStyle HorizontalAlign="Center" BorderColor="White" />
            </asp:TemplateField>--%>
             <asp:TemplateField HeaderText="排序">
                <ItemTemplate>
                <asp:LinkButton ID="lbtnUpMove" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("GeneralID") %>'> 上移 |</asp:LinkButton>
					<asp:LinkButton ID="lbtnDownMove" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("GeneralID") %>' >下移</asp:LinkButton>
                </ItemTemplate>
                 <ItemStyle HorizontalAlign="Center" />
                <HeaderStyle Width="8%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <%# GetTitles(Eval("GeneralID", "{0}"), Eval("ModelID", "{0}"))%>
                    |
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GeneralID") %>'
                        Enabled='<%# getenabled(Eval("Status").ToString()) %>' CausesValidation="false">修改</asp:LinkButton>
                    |
                    <asp:LinkButton ID="lbDelete" runat="server" Enabled='<%#getenabled(Eval("GeneralID").ToString()) %>'
                        CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick='<%#getdel() %>'>删除</asp:LinkButton>
                    |
                    <!--OnClientClick='<%#getdel().ToString()=="False"?" onclick=\"return confirm('不可恢复性删除数据,你确定将该数据删除吗？');\"":"style=\"color:#999999\" onclick=\"return false\"" %>'>删除-->
                    <asp:LinkButton ID="lbCheck" runat="server" CommandName="check" CommandArgument='<%#Eval("GeneralID") %>'>浏览</asp:LinkButton>
                    <asp:Label ID="viewspan" runat="server" Text=" | "></asp:Label>
                    <asp:LinkButton ID="lbUpdate" runat="server">删除HTML</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" BorderColor="White" />
            </asp:TemplateField>
        </Columns>
        <PagerSettings Visible="False" />
        <RowStyle Height="24px" />
    </asp:GridView>
    <%# GetPic(Eval("ModelID", "{0}"))%>
    <table width="100%">
    <tr>
    <td class="tdbg">
    <div style="text-align: center">
        <span style="text-align: center">共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
                Width="30px"></asp:TextBox>
            条数据/页 转到第
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator></span></div>
                </td>
                </tr>
                </table>
    <div class="clearbox">
    </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
        Text="全选" />
    <asp:Button ID="btnAudit" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="审核通过" CssClass="C_input" OnClick="btnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要审核选中内容吗？')}" />&nbsp;
    <asp:Button ID="btnUnAudit" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="取消审核" CssClass="C_input" OnClick="btnUnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要取消审核选中内容吗？')}" />&nbsp;
    <asp:Button ID="Button2" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="批量推荐" OnClientClick="if(!IsSelectedId()){alert('请选择项');return false;}else{return confirm('你确定要将所有选择项设为推荐吗？')}"
        CssClass="C_input" OnClick="Button2_Click" />&nbsp;
    <asp:Button ID="Button3" CausesValidation="false" Style="width: 110px;" runat="server"
        Text="取消推荐" OnClientClick="if(!IsSelectedId()){alert('请选择项');return false;}else{return confirm('你确定要取消所有选择项推荐吗？')}"
        CssClass="C_input" OnClick="Button3_Click" />&nbsp;
    <asp:Button ID="btnDeleteAll" Style="width: 110px;" CausesValidation="false" runat="server"
        Text="批量删除" OnClick="btnDeleteAll_Click" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项放入回收站吗？')}"
        CssClass="C_input" />&nbsp;
    <asp:Button ID="btnMove" Style="width: 110px;" CausesValidation="false" runat="server"
        Text="批量移动" OnClick="btnMove_Click" OnClientClick="if(!IsSelectedId()){alert('请选择移动项');return false;}else{return true}"
        CssClass="C_input" />&nbsp;
    <asp:Button ID="btnAddToSpecial" Style="width: 110px;" CausesValidation="false" runat="server"
        Text="添加到专题" OnClick="btnAddToSpecial_Click" OnClientClick="if(!IsSelectedId()){alert('请选择添加到专题的内容');return false;}else{return true}"
        CssClass="C_input" />&nbsp;
    <asp:Button ID="Button1" Style="width: 110px;" CausesValidation="false" runat="server"
        Text="批量修改" CssClass="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择修改项');return false;}else{return confirm('你确定要修改选中内容吗？')}"
        OnClick="Button1_Click" />
    <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%>
    <asp:Button ID="btnEsc" Style="width: 110px;" CausesValidation="false" runat="server"
        Text="退稿" OnClick="btnEsc_Click" class="C_input" />&nbsp;&nbsp;
    <asp:Button ID="Button6" Style="width: 110px;" CausesValidation="false" runat="server"
        Text="提交方案" OnClick="Button5_Click" OnClientClick="if(!IsSelectedId()){alert('请选择提交项');return false;}else{return confirm('你确定要提交选中内容吗？')}"
        class="C_input" />
    &nbsp;&nbsp;<asp:Button ID="btnRead" CausesValidation="false" 
        Style="width: 110px;" runat="server"
        Text="投递" CssClass="C_input" 
        OnClientClick="if(!IsSelectedId()){alert('请选择投递项');return false;}else{return confirm('你确定要投递选中内容吗？')}" 
        onclick="btnRead_Click" />
    &nbsp;<asp:HiddenField ID="HiddenNodeID" runat="server" />
    <asp:Button ID="Button7" Style="width: 110px;" runat="server" Text="高级检索" OnClick="Button7_Click"
        Width="70px" class="C_input" />
    </form>
</body>
</html>