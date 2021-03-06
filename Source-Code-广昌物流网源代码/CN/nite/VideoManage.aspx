﻿<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_CompanyVideo, App_Web_mzd1pfou" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>视频列表</title>
    <link href="CSS/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="/user/skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="us_topinfo">
        <div class="us_showinfo">
            <h1>
                <span class="us_showinfo1">您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span>
                您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                    ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                    </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                        &gt;&gt; </span><span>视频管理</span>&nbsp;&nbsp;&nbsp;【<a href="Content/AddVideo.aspx" ><font
                            color="red">上传视频</font></a>】</span>
            </h1>
        </div>
        <div class="cleardiv">
        </div>
    </div>
    <ul class="lieb">
        <asp:GridView ID="gvCard" Width="100%" runat="server" EmptyDataText="<font color='red'>暂时没有数据</font>" DataKeyNames="VID"  AutoGenerateColumns="False">
    <Columns>
    <asp:BoundField HeaderText="编号" DataField="Vid"  ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="60px" />
    <asp:TemplateField HeaderText="视频名称" ItemStyle-HorizontalAlign="Center">
    <ItemTemplate>
     <a href="Content/ShowVideo.aspx?ID=<%#Eval("Vid") %>"><%#Eval("VidTitle")%></a> 
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="状态" ItemStyle-HorizontalAlign="Center">
    <ItemTemplate><%#Eval("Vid").ToString()=="0"?"未审核":"已审核" %>
    </ItemTemplate>
    </asp:TemplateField>
    <asp:BoundField HeaderText="添加时间" DataField="Uploadtime" HeaderStyle-Width="200px" ItemStyle-HorizontalAlign="Center" />
    <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="100px" >
    <ItemTemplate>
        <a href="Content/AddVideo.aspx?ID=<%#Eval("Vid") %>">修改</a> | 
        <a href="Content/ShowVideo.aspx?ID=<%#Eval("Vid") %>">预览</a>
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
        </ul>
       <div class="clearbox"></div>
       <table width="100%">
        <tr class="tdbg">
        <td height="22" colspan="9" align="center" class="tdbgleft">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        页
              </td>
      </tr>
  </table>
    </form>
</body>
</html>
