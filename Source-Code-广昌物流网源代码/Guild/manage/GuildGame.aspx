<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_manage_GuildGame, App_Web_vtxpkfrk" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<h5><div id="no">主打游戏修改</div></h5>
		<ul>
		  <form action="" method="post" name="theform1" id="theform1" onsubmit="return checkForm( this )">
            <table width="468"  border="0" align="center" cellpadding="0" cellspacing="0">
              <tr align="center">
                <td height="25" colspan="2" align="left">说明:这里设置的是您的公会目前正在参与的游戏。</td>
              </tr>
              <tr align="center">
                <td height="25" align="left">公会主打游戏1:</td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                  </td>
              </tr>
              <tr align="center">
                <td height="25" align="left">公会主打游戏2:</td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                  </td>
              </tr>
              <tr align="center">
                <td height="25" align="left">公会主打游戏3:</td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                  </td>
              </tr>
              <tr align="center">
                <td height="25" align="left">公会主打游戏4:</td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                  </td>
              </tr>
              <tr align="center">
                <td width="105" height="25" align="left">公会主打游戏5:</td>
                <td width="363" align="left">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                <td height="40" colspan="2" align="center">&nbsp;<input name="action" type="hidden" id="action" value="t" /><asp:Button 
                        ID="Button1" runat="server" Text=" 修改 " onclick="Button1_Click" />
                  </td>
              </tr>
            </table>
	      </form>
		  <div class="clearfix"></div>
		</ul>
  </div>
	<div class="clearfix"></div>
</div>

</asp:Content>
