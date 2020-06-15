<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_bbs_EditGuildbbs, App_Web_gp5c4bcc" viewStateEncryptionMode="Never" %>

  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <script language="JavaScript" type="text/JavaScript">
    
    function changemaster() {
        if (document.form1.bbs_user.options[document.form1.bbs_user.selectedIndex].value != "") {

            if (document.form1.bbs_bz.value != "")
                document.form1.bbs_bz.value = document.form1.bbs_bz.value + ',' + document.form1.bbs_user.options[document.form1.bbs_user.selectedIndex].value
            else
                document.form1.bbs_bz.value = document.form1.bbs_user.options[document.form1.bbs_user.selectedIndex].value
        }
    }
  

    </script>
		<h5><div id="no">论坛区编辑</div>
            </h5>
            <ul>
                <table align="center" border="0" cellpadding="2" cellspacing="1" width="500">
                    <tr>
                        <td align="left" colspan="4" height="25">
                            &nbsp;<b>修改版块分类</b></td>
                    </tr>
                    <tr>
                        <td align="center" height="25">
                            版块分类名称</td>
                        <td align="left" height="25" width="174">
                            <input runat="server" maxlength="10" id="qu_name" name="qu_name" size="15" type="text" 
                                value="" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                             ErrorMessage="请填写版块分类名称" ControlToValidate="qu_name"></asp:RequiredFieldValidator>
                                </td>
                        <td align="center" height="25" width="71">
                            排 序</td>
                        <td align="left" class="hui" height="25" width="139">
                            <input runat="server" maxlength="3" id="qu_px" name="qu_px" size="5" type="text" 
                                value="" /> 正整数
                           
                            <asp:RangeValidator ID="RangeValidator1"
                             runat="server" ErrorMessage="请填写数字" MaximumValue="9999" MinimumValue="1"  ControlToValidate="qu_px"></asp:RangeValidator>
                                </td>
                    </tr>
                </table>
                <table align="center" border="0" cellpadding="0" cellspacing="0" width="500">
                    <tr>
                        <td align="center" height="40">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改" />
                        </td>
                    </tr>
                </table>
                <asp:DataList ID="DataList2" runat="server" Width="100%" OnItemDataBound="DataList2_ItemDataBound">
                                    <ItemTemplate>
                                        <table width="90%" border="0" align="center" cellpadding="2" cellspacing="1">
                                            <tr align="center">
                                                <td height="22" align="right">
                                                    <img src="Images/plus.gif" width="17" height="16" />
                                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Pid") %>' Visible="false"></asp:Label>
                                                </td>
                                                <td width="262" align="left">
                                                    <a href="#" class="link1">
                                                        <%#Eval("PName") %>
                                                    </a>
                                                </td>
                                                <td width="122" height="22" align="left">
                                                    <%#Eval("Pleve") %>
                                                </td>
                                                <td width="130" height="22" align="right">
                                                    &nbsp;<a href="EditGuildbbsEdit.aspx?pid=<%#Eval("Pid") %>" class="link1">编辑</a>
                                                    | <a href="Guildbbs.aspx?pid=<%#Eval("Pid") %>" class="link1">删除</a>
                                                 <%--  | 
                                                   <a href="#" onclick="return windowOpener('guild_bbs_rz.asp?q_id=32253&bbs_id=84934')"
                                                            class="link1">认证</a>--%>
                                                </td>
                                            </tr>
                      <tr>
                                                <td width="36" height="22" align="center">
                                                </td>
                                                <td height="22" colspan="4" align="right">
                                                    <asp:Button ID="Button2" runat="server" Text="转移到" onclick="Button2_Click"  />
                                                    
                                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                                    
                                                    </asp:DropDownList>
                                                   
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
            </ul>
        <div class="clearfix">
        </div>
   </asp:Content>

