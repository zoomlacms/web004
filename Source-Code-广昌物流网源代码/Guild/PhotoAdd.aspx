<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_PhotoAdd, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div id="left">
<h5>
		  <div id="no"></div>
		</h5>
<ul>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td align="left">
			<a href='Photo.aspx?ID=<%=Request.QueryString["ID"] %>' >所有图片</a>
              </td>
		  </tr>
		</table>
		</ul>
</div>

<div id=center1>
		<h5><div id="no">上传图片</div></h5>
		<ul>
		<form action="http://pp.u9u8.com/quan/file/gh/photo_upfilea.asp?q_id=39609&u=kaka3229&s=:295>7><o:A==ApA&t=t" method="post" name="form" enctype="multipart/form-data" onSubmit="return checkForm( this );">
          <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="1">
            <tr>
              <td width="149" height="25" align="center" class="white">图片标题</td>
              <td width="1021" height="25" align="left">
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td height="25" align="center" class="white">图片选择</td>
              <td align="left">
                  <asp:FileUpload ID="FileUpload1" runat="server" Width="185px" />
                </td>
            </tr>
            <tr>
              <td height="25" align="center" class="white">&nbsp;</td>
              <td align="left">请勿上传涉及色情、政治敏感及其他非法内容的图片，一经发现永久封号。</td>
            </tr>
          </table>
		  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="50" align="center">
                  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text=" 上传 " />
                </td>
            </tr>
          </table>
		  </form>
		<div class="clearfix"></div>
		</ul>
  </div>



</asp:Content>
