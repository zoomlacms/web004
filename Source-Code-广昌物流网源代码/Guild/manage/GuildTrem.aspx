<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildTrem, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<h5><div id="no">入会条件修改</div></h5>
		<ul>
		  
            <table width="468"  border="0" align="center" cellpadding="0" cellspacing="0">
              <tr align="center">
                <td height="25" align="left">说明:新人加入本会的要求、条件和步骤。</td>
              </tr>
              <tr align="center">
                <td height="25">
                    <asp:TextBox ID="TextBox1" runat="server" Height="306px" TextMode="MultiLine" 
                        Width="670px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td height="40" align="center">&nbsp;<input name="action" type="hidden" id="action" value="t" /><asp:Button 
                        ID="Button1" runat="server" onclick="Button1_Click" Text=" 修改 " />
                  </td>
              </tr>
            </table>
	      
		  <div class="clearfix"></div>
		</ul>

</asp:Content>