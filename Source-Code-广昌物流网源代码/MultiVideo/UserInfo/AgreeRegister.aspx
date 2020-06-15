<%@ page language="C#" autoeventwireup="true" inherits="MultiVideo_UserInfo_AgreeRegister, App_Web_ub02eqk1" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>大秦-用户服务条款</title>
    <style type="text/css">
        *{margin:0px; padding:0px;}
        .input_out{padding:2px 8px 0pt 3px;border:1px solid #A0B4C5;background-color:#FFF;
        }       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border: 2px solid #FC6; width: 410px; margin:0 auto; ">    
            <table style=" border-style: none; border-color: inherit; border-width: 0px; border-spacing:0px; width: 410px; height: 331px;">
                <tr>
                    <td style=" background-image:url('images/bghead.png'); font-size:14px"colspan="2" > 
                        <img src="../../App_Themes/AdminDefaultTheme/images/Video/images/logao.png"align="middle"/><b style=" font-size:12px">用户注册</b>
                    </td>
                    <td style=" background-image:url('images/bgright.png')">
                        <%--<asp:ImageButton ID="ImageBtnClose" 
                              style=" background-image:url('images/bgright.png')" runat="server" 
                              ImageUrl="../../App_Themes/AdminDefaultTheme/images/Video/images/closeWin.png" 
                              Height="16px"  Width="23px" onclick="ImageBtnClose_Click" />--%>
                    </td>
                </tr>
                 <tr>
                    <td style=" background-image:url('images/bgleft.png')"rowspan="2"></td>
                    <td style=" background-image:url('images/bgtop.png')"></td>
                    <td style=" background-image:url('images/bgright.png');" rowspan="2">&nbsp;</td>
                </tr>
                 <tr>
                    <td>
                        <div id="divUserInfo" style=" border: 1px solid #FC6; width: 375px;">                   
                            <table style=" background-image:url('images/bg.png'); width: 375px; height: 238px;">
                               <tr>
                                    <td style="font-size:12px; width:100px; height:28px" >&nbsp;用户服务条款</td>
                               </tr>
                               <tr>
                                    <td style=" font-size:12px; text-align:center">
                                          <%--  <asp:TextBox ID="AreaTxtCount" CssClass="input_out" 
                        runat="server" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
                                                Style="float: left;" Width="357px" Height="190px" 
                        TextMode="MultiLine"></asp:TextBox>--%>
                                         <asp:Label runat="server" Text="" ID="Textlable"></asp:Label>
                                     </td>
                               </tr>
                               <tr>
                                 <td style=" font-size:14px">&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                 <tr>
                    <td colspan="3" align="right" style=" background-image:url('images/bgtop.png')">                        
                        <asp:ImageButton ID="ImgbtnNext" runat="server" 
                            ImageUrl="../../App_Themes/AdminDefaultTheme/images/Video/images/next.png" 
                            onclick="ImgbtnNext_Click" />
                        &nbsp;<asp:ImageButton ID="ImgbtnClose" runat="server" 
                            ImageUrl="../../App_Themes/AdminDefaultTheme/images/Video/images/close.png" 
                            onclick="ImgbtnClose_Click" />                        
                    </td>
                </tr>
            </table>   
    </div>
    </form>
</body>
</html>
