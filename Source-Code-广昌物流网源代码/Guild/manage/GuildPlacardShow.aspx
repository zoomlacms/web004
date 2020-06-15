<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_GuildPlacardShow, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div id=center1>
		<h5><div id="no">标题：<asp:Label runat="server" ID="lable1"></asp:Label></div></h5>
		<ul>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="22" align="center" class="title">
            <asp:Label runat="server" ID="labletitle"></asp:Label>
            </td>
            <td id="Td1" width="4%" align="left" visible='<%#del(Eval("Pid").ToString())%>' runat="server">
                                                <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="删除"  
                                        ImageUrl="~/Guild/images/del.gif" onclick="ImageButton1_Click" OnClientClick="return confirm('你确定要删除所选公告吗？')"/>        
                                                </td>
          </tr>
          <tr>
            <td height="25" colspan="2" align="center">发布时间：<asp:Label runat="server" ID="lableTime"></asp:Label></td>
          </tr>
          <tr>
            <td colspan="2" align="left"><asp:Label runat="server" ID="lableContent"></asp:Label></td>
          </tr>
          <tr>
            <td colspan="2" align="left">&nbsp;</td>
          </tr>
        </table>
	  </ul>
  </div>
</asp:Content>