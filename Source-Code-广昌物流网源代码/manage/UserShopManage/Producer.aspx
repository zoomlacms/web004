<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="Zoomla.Website.manage.UserShopManage.Producer, App_Web_tkmlrnn4" viewStateEncryptionMode="Never" %>


<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>添加厂商</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/calendar.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="r_navigation">
		
	  <span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 店铺设置 &gt;&gt; <span><a href="Producer.aspx">添加厂商</a></span>	</div>
    <div class="clearbox"></div>
    
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="Label1" runat="server" Text="添加厂商"></asp:Label></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商名称：</strong></td>
        <td width="66%" valign="middle">
            <asp:TextBox ID="Producername" class="l_input" runat="server" Width="251px"></asp:TextBox>
            <asp:HiddenField ID="ID" runat="server" />
            <asp:HiddenField ID="uptype" runat="server" />
        </td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="height: 22px; width: 20%;"><strong>厂商缩写：</strong></td>
        <td valign="middle" style="height: 22px">
            <asp:TextBox ID="Smallname" class="l_input" runat="server" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>创建日期：</strong> </td>
        <td height="22" valign="middle">
            <asp:TextBox ID="CreateTime" class="l_input" runat="server" Width="217px" onclick="calendar();"></asp:TextBox>
            <asp:Image ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" /></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>公司地址：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="Coadd" class="l_input" runat="server" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>联系电话：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="Telpho" class="l_input" runat="server" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>传真号码：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="FaxCode" class="l_input" runat="server" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 20%; height: 22px"><strong>邮政编码：</strong></td>
        <td valign="middle" style="height: 22px">
            <asp:TextBox ID="PostCode" class="l_input" runat="server" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商主页：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="CoWebsite" class="l_input" runat="server" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>电子邮件：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="Email" class="l_input" runat="server" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商分类：</strong></td>
        <td height="22" valign="middle">
            <asp:RadioButtonList ID="CoClass" runat="server" RepeatDirection="Horizontal"
                Width="420px">
                <asp:ListItem Selected="True">大陆厂商</asp:ListItem>
                <asp:ListItem>港台厂商</asp:ListItem>
                <asp:ListItem>日韩厂商</asp:ListItem>
                <asp:ListItem>欧美厂商</asp:ListItem>
                <asp:ListItem>其他厂商</asp:ListItem>
            </asp:RadioButtonList></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商照片：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="CoPhoto" class="l_input" runat="server" Width="321px"></asp:TextBox><iframe id="proimgs" style="top:2px" src="../Shop/fileupload.aspx?menu=CoPhoto" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></td>
      </tr>
      <tr class="WebPart">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商简介：</strong></td>
        <td height="22" valign="middle">
            <asp:HiddenField ID="Content" runat="server" /><iframe id="infoeditor" src="../../editor/fckeditor_1.html?InstanceName=Content&Toolbar=Default" width="580px" height="350px" frameborder="no" scrolling="no"></iframe>
        </td>
      </tr>
      <tr class="tdbg">
        <td colspan="5" align="center" class="tdbg" style="height: 49px">
            <asp:Button ID="Button1" class="C_input"  style="width:110px;"  runat="server" Text="保存设置" OnClick="Button1_Click" /></td>
      </tr>
    </table>
</form>
</body>
</html>
