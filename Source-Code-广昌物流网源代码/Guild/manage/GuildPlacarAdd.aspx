<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildPlacarAdd, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h5><div id="no">添加公会公告</div></h5>
		<ul>
		    <form name="form1" method="post" action="?q_id=39609" onSubmit="return checkForm( this )">
    <table width="80%"  border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td height="25" align="center" style="width: 131px">发布类型</td>
        <td height="22" align="left">&nbsp;<asp:DropDownList ID="DropDownList1" 
                runat="server">
                <asp:ListItem>首页公告</asp:ListItem>
                <asp:ListItem>论坛公告</asp:ListItem>
            </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td height="25" align="center" style="width: 131px">公告标题</td>
        <td width="611" height="22" align="left">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          </td>
      </tr>
      
      <tr>
        <td height="25" align="center" style="width: 131px">公告内容</td>
        <td height="22" align="left" class="hui">
            <asp:TextBox ID="TextBox2" runat="server" Height="264px" TextMode="MultiLine" 
                Width="440px"></asp:TextBox>
          </td>
      </tr>
    </table>
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="50" align="center">&nbsp;<input name="action" type="hidden" id="action" value="t"><asp:Button 
                ID="Button1" runat="server" Text=" 添加 " onclick="Button1_Click" />
          </td>
      </tr>
    </table>
  </form>
 
<SCRIPT> 
<!--
 
function checkForm( theform ) {
	with( document.form1 ){
		if ( title.value=="" ) {
			alert("请填写公告标题!");
			title.focus();
			return(false);
		}
 
		if ( starttime.value=="") {
			alert("请选择开始日期!");
			starttime.focus();
			return(false);
		}
 
		if ( endtime.value=="") {
			alert("请选择结束日期!");
			endtime.focus();
			return(false);
		}
 
		if ( content.value=="") {
			alert("请填写公告内容!");
			content.focus();
			return(false);
		}
	
	}
 
	return	true;
}
 
//-->
</SCRIPT>
 
		  <div class="clearfix"></div>
		</ul>
  </div>
	<div class="clearfix"></div>
</div>

</asp:Content>