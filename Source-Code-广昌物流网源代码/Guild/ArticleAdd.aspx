<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_ArticleAdd, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


		<ul>
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              
			</tr>
          </table>
		</ul>
<div>
		<h5><div id="Div1">文章发表</div></h5>
		<ul>
		<form action="?q_id=39609" method="post" name="myform" id="myform"  onclick="return CheckForm(this);">
          <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="1">
            <tr>
              <td width="87" height="25" align="center">文章标题</td>
              <td width="576" height="25" align="left">
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td rowspan="2" align="center">文章内容</td>
              <td height="25" align="left" bgcolor="#FFFFFF">
                  <table style="height: 14px; width: 10%">
              </table>
                  <asp:TextBox ID="TextBox2" runat="server" Height="166px" TextMode="MultiLine" 
                      Width="437px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td height="25" align="left"><textarea name="ubbEdit" rows="1" cols="1" style="display:none;"></textarea>
            	<script language="JavaScript" type="text/javascript">
				</script></td>
            </tr>
          </table>
		  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="50" align="center">&nbsp;<input name="action" type="hidden" id="action" value="t" /><input name="UploadFiles" type="hidden" id="UploadFiles" /><asp:Button 
                      ID="Button1" runat="server" onclick="Button1_Click" Text=" 添加 " />
                </td>
            </tr>
          </table>
		  </form>
		
		</ul>
  </div>
</asp:Content>
