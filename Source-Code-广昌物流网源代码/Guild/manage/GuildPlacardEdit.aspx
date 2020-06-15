<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildPlacardEdit, App_Web_upddlidg" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<h5><div id="no">编辑公会公告</div></h5>
		<ul>
<table width="468"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="25">&nbsp;</td>
    </tr>
  </table>
    <form name="form1" method="post" action="?q_id=39609" onSubmit="return checkForm( this )">
      <table width="80%"  border="0" align="center" cellpadding="0" cellspacing="1">
        <tr>
          <td height="25" align="center">发布类型</td>
          <td height="22" align="left">
              <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>首页公告</asp:ListItem>
              <asp:ListItem>论坛公告</asp:ListItem>
              </asp:DropDownList>
            </td>
        </tr>
        <tr>
          <td width="121" height="24" align="center">公告标题</td>
          <td width="610" height="24" align="left">
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
          <td height="25" align="center">公告内容</td>
          <td height="22" align="left" class="hui">
              <asp:TextBox ID="TextBox2" runat="server" Height="190px" TextMode="MultiLine" 
                  Width="419px"></asp:TextBox>
            </td>
        </tr>
      </table>
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="50" align="center">&nbsp;<input name="action" type="hidden" id="action" value="t"><input name="id" type="hidden" id="id" value="25041"><asp:Button 
                  ID="Button1" runat="server" Text=" 修改 " onclick="Button1_Click" />
            </td>
        </tr>
      </table>
    </form>
    <p>
 
		  <div class="clearfix"></div>
		</ul>
  </div>
	<div class="clearfix"></div>
</div>

</asp:Content>