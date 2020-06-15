﻿<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_UpdateLog, App_Web_cl4baya0" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" type="text/css" href="../../Skin/User_Main.css" />
    <link rel="stylesheet" type="text/css" href="../../Skin/user_user.css" />
    <link href="../../../App_Themes/AdminDefaultTheme/Guide.css"type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
    <link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
    <link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
     <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript">
        var x_open_path = ""; //设置图标地址 
    </script>
    <script type="text/javascript" src="../../../JS/x_open.js"></script>
    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            height: 23px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_seta" >
            
            <table width="100%" border="0" cellpadding="2" cellspacing="1" align="center" >
                <tr >
                    <td align="center" colspan="2" >
                        <b ><h1 style ="text-align:center" class="us_seta">修改用户日志</h1></b></td>
                </tr>
                <tr >
                    <td width="15%" align="right" class="style3" >
                        <strong>标题:</strong></td>
                    <td align="left" class="style3">
                        <asp:TextBox ID="txtTitle" runat="server" class="l_input" Width="209px"></asp:TextBox>
                        
                    </td>
                </tr>
                 
                <tr >
                    <td align="right" >
                    <strong>日志类型：</strong>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddlType" runat="server" Height="25px" Width="132px">
                        </asp:DropDownList>              
                    </td>
                </tr>
                 <tr >
                    <td align="right" >
                    <strong>访问权限：</strong>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddlqx" runat="server" Height="41px" Width="125px">
                            <asp:ListItem Value="1">所有人</asp:ListItem>
                            <asp:ListItem Value="2">好友</asp:ListItem>
                            <asp:ListItem Value="3">私密</asp:ListItem>
                        </asp:DropDownList>
                                    
                    </td>
                </tr>
                <tr >
                    <td align="right" class="style2" >
                    <strong>内容：</strong>
                    </td>
                    <td align="left" class="style2">
                        <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Height="116px" 
                            Width="273px" class="l_input"></asp:TextBox>
                                    
                    </td>
                </tr>
                <tr >
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="BtnSend" runat="server" class="C_input" Text="确定修改" Width="88px" 
                            OnClick="BtnSend_Click"  />
                            <asp:Button ID="Button3" runat="server" class="C_input" Text="删除" 
                            Width="88px" onclick="Button3_Click" 
                            />
                        <asp:Button ID="Button1" runat="server"  class="C_input" Text="返回" onclick="Button1_Click" /></td>
                </tr>
            </table>
          
     </div>
    </form>
</body>
</html>
