<%@ page language="C#" autoeventwireup="true" inherits="MultiVideo_UserInfo_RegisterSuccess, App_Web_ub02eqk1" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>大秦-注册成功</title>
    <style type="text/css">
        *{margin:0px; padding:0px;}       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border: 2px solid #FC6; width: 410px; margin:0 auto;">    
            <table style=" border-style: none; border-color: inherit; border-width: 0px; border-spacing:0px; width: 410px; height: 331px;">
                <tr>
                    <td style=" background-image:url('images/bghead.png'); font-size:14px" colspan="2"> 
                        <img alt="" src="../../App_Themes/AdminDefaultTheme/images/Video/images/logao.png" align="middle"/><b style=" font-size:12px">用户注册</b>
                    </td>
                    <td  style=" background-image:url('images/bgright.png')">                        
                        <%--<asp:ImageButton ID="ImageButton2" 
                            style=" background-image:url('images/bgright.png')" runat="server" 
                            ImageUrl="~/App_Themes/AdminDefaultTheme/images/Video/images/closeWin.png" Height="16px" 
                            Width="23px" onclick="ImageButton2_Click" />--%>
                    </td>
                </tr>
                 <tr>
                    <td style=" background-image:url('images/bgleft.png')"rowspan="2">&nbsp</td>
                    <td style=" background-image:url('images/bgtop.png')"></td>
                    <td style=" background-image:url('images/bgright.png');"rowspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                         <div id="divUserInfo" style=" border: 1px solid #FC6; width: 375px;">                   
                            <table style=" background-image:url('images/bg.png'); width: 375px; height: 243px;">
                                 <tr>
                                    <td  style=" font-size:12px; text-align:center">恭喜您，号码申请成功！</td>
                                 </tr>
                                 <tr>
                                    <td style=" font-size:12px; text-align:center">
                                            用户账号：<asp:Label ID="LblUserNum" runat="server" Text=""></asp:Label><br /><br />
                                            账号密码：<asp:Label ID="LblPassword" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style=" font-size:14px" align="center">                    
                                        <asp:ImageButton ID="ImgbtnGointo" runat="server" 
                                    ImageUrl="~/App_Themes/AdminDefaultTheme/images/Video/images/btnGointo.png"
                                        onclick="ImgbtnGointo_Click" />
                                     </td>
                                </tr>
                            </table>
                         </div>
                    </td>
                </tr>
                 <tr>
                    <td colspan="3"  align="right" style=" background-image:url('images/bgtop.png')">                        
                        <asp:ImageButton ID="ImgbtnOK" runat="server" 
                        ImageUrl="~/App_Themes/AdminDefaultTheme/images/Video/images/btnOK.png"
                            onclick="ImgbtnOK_Click" />                        
                    </td>
                </tr>
            </table>    
    </div>
    </form>
</body>
</html>