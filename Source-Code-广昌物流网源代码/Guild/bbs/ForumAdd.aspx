﻿<%@ page language="C#" title="" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_bbs_ForumAdd, App_Web_gp5c4bcc" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="main_l_k" style="padding-left:150px;padding-top:50px;">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<table border="0" style="margin-left:150px; margin-top:50px;">
  <tr>
    <td>板块名称</td>
    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>排序</td>
    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>版主</td>
    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>帖子类别</td>
    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>描述</td>
    <td><asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td>
  </tr>
  <tr>
    <td>规则和导读</td>
    <td><asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox></td>
  </tr>
  <tr>
    <td>版面链接</td>
    <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>论坛横排</td>
    <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>启用这个论坛</td>
    <td><input type="radio" runat="server" name="a" id="a1" checked=true/>是<input id="Radio1" type="radio" runat="server" name="a" />否</td>
  </tr>
  <tr>
    <td colspan="2" align="right"><asp:Button ID="Button1" runat="server" Text="保存" onclick="Button1_Click" />
    <asp:HiddenField  ID="HiddenField1" runat="server" />
    </td>
  </tr>
</table>
</div>
</asp:Content>