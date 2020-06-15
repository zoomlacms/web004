<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_PhotoShow, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div id=center1>
		<h5><div id="no">标题：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </div></h5>
		<ul>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="22" align="center" class="title">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
              </td>
            <td width="4%" align="left">
			&nbsp;</td>
          </tr>
          <tr>
            <td height="25" colspan="2" align="center">发布人：<asp:Label ID="Label5" 
                    runat="server" Text="Label"></asp:Label>
&nbsp;发布时间：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
              </td>
          </tr>
          <tr>
            <td colspan="2" align="center">
                <asp:Image ID="Image1" runat="server" Height="120px" Width="120px" ImageUrl=""/>                                   
              </td>
          </tr>
          <tr>
            <td colspan="2" align="left">&nbsp;</td>
          </tr>
        </table>
        
		</ul>
		
  </div>




</asp:Content>