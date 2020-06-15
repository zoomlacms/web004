<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_GuildVideoAdd, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div id="left">
<h5>
		  <div id="no"></div>
		</h5>
<ul>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td align="left">
                <a href='GuildVideo.aspx?ID=<%=Request.QueryString["ID"] %>'>所有视频</a>
              </td>
		  </tr>
		</table>
		</ul>
</div>
<div>
		<h5>
		  <div id="no">添加视频</div>
		</h5>
		<ul>
          <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="1">
            <tr>
              <td width="149" height="25" align="center">视频标题</td>
              <td width="1021" height="25" align="left">
                  <asp:TextBox ID="TextBox1" runat="server" Width="303px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td height="25" align="center">视频截图</td>
              <td align="left">
                  <asp:TextBox ID="TextBox2" runat="server" Width="303px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td height="25" align="center">视频地址</td>
              <td align="left">
                  <asp:TextBox ID="TextBox3" runat="server" Width="392px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td height="25" align="center">&nbsp;</td>
              <td align="left">视频地址格式：<font color="#FF0000">[swf=450,390]</font> 450为宽 390为高 </td>
            </tr>
            <tr>
              <td height="25" align="center">&nbsp;</td>
              <td align="left">请勿连接涉及色情、政治敏感及其他非法内容的视频，一经发现永久封号。</td>
            </tr>
          </table>
		  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="50" align="center">&nbsp;<input name="action" type="hidden" id="action" value="add" /><asp:Button 
                      ID="Button1" runat="server" onclick="Button1_Click" style="height: 26px" 
                      Text=" 添加 " />
                </td>
            </tr>
          </table>
		</ul>
  </div>




</asp:Content>
