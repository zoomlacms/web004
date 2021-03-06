﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddDisproveType, App_Web_vetlozhr" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加举报类型</title>

        <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
        
        <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
         <span><a href="Disprove.aspx">举报管理</a>  </span> &gt;&gt; 
          <span><a href="DispTypeManage.aspx">举报类型管理</a>  </span> &gt;&gt; 
          <span><a href="AddDisproveType.aspx">添加举报类型管理</a></span>
    </div>
     
      <div>
        <div class="r_navigation">
            <table width="100%" border="0" cellpadding="0" cellspacing="1">
                <tr>
                    <td colspan="2" class="spacingtitle" align="center">
                       添加举报类型
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        类型名称：
                    </td>
                    <td class="tdbgleft">
                        <asp:TextBox ID="txtTypename" runat="server" class="l_input"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入类型名称" 
                            ControlToValidate="txtTypename" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
     <tr class="tdbg" >
                    <td style="height: 21px" colspan="4" align="center">
                        <asp:Button ID="btnSave" runat="server" Text="保存" Width="60px" OnClick="btnSave_Click" class="C_input"/>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="取消"  Width="60px" OnClientClick="location.href='OfficeClassManage.aspx';return false;" class="C_input"/>
                    </td>
                </tr>
            </table>
            </div>
     </div>
    </form>
</body>
</html>
