<%@ page language="C#" autoeventwireup="true" inherits="Guild_manage_ShowQD, App_Web_afyd0lir" masterpagefile="~/Guild/GuildPage.master" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<div id=center1>
		<h5>
		  <div id="no">会员详细签到情况</div>
		</h5>
		<ul>
		
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="13%">选择日期：</td>
          <td width="21%">&nbsp;<asp:TextBox ID="txtTime" runat="server" onclick="calendar();parent.document.getElementById('main_right').height = document.body.offsetHeight+400;"></asp:TextBox>
              </td>
          <td width="66%" align="left">&nbsp;<asp:Button ID="btnTime" runat="server" 
                  onclick="btnTime_Click" Text=" 查询 " />
              　<a href="GuildMemberCard.aspx?ID=<%=Request.QueryString["ID"] %>">会员签到排行榜</a></td>
        </tr>
      </table>
       </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="13%">时间段查询：</td>
          <td width="44%">从<asp:TextBox ID="txtbeginTime" runat="server" onclick="calendar();parent.document.getElementById('main_right').height = document.body.offsetHeight+400;"></asp:TextBox>         
&nbsp;到<asp:TextBox ID="txtendTime" runat="server" ReadOnly="true" onclick="calendar();parent.document.getElementById('main_right').height = document.body.offsetHeight+400;"></asp:TextBox>
             </td>
          <td width="43%" align="left">
              <asp:Button 
                  ID="btnTime2" runat="server" Text=" 查询 " onclick="btnTime2_Click" />
            </td>
        </tr>
      </table>

    </td>
  </tr>
</table>
 
</p>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="center"><hr size="1"></td>
  </tr>
  <tr>
    <td height="30" align="center"><span class="style1">本会签到情况</span></td>
  </tr>
</table>
<asp:Panel ID="Panel1" runat="server">
<table width="100%" border="0" cellpadding="0" cellspacing="1">
  <tr>
    <td width="23%" height="25" align="center" class="line"><strong>名次</strong></td>
    <td width="40%" align="center" class="line"><strong>会员</strong></td>
    <td width="20%" align="center" class="line"><strong>签到次数</strong></td>
    <td width="17%" align="center" class="line"><strong>签到率</strong></td>
  </tr>
 <asp:Repeater ID="CardList" runat="server">
                        <ItemTemplate>
  <tr>
    <td height="25" align="center" class="line"><%#Eval("CardID")%></td>
    <td align="center" class="line"><%#GetName(Eval("UID"))%></td>
    <td align="center" class="line"><%#GetCards(Eval("UID")) %></td>
    <td align="center" class="line"><%#GetFloat(Eval("UID"))%></td>
  </tr>
  </ItemTemplate>
                        </asp:Repeater>
</table>
</asp:Panel>

<asp:Panel ID="Panel2" runat="server">
<table width="100%" border="0" cellpadding="0" cellspacing="1">
  <tr>
    <td width="23%" height="25" align="center" class="line"><strong>会员</strong></td>
    <td width="40%" align="center" class="line"><strong>签到时间</strong></td>
  </tr>
 <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
  <tr>   
    <td align="center" class="line"><%#GetName(Eval("UID"))%></td>
    <td height="25" align="center" class="line"><%#Eval("PushTime")%></td>
  </tr>
  </ItemTemplate>
                        </asp:Repeater>
</table>
</asp:Panel>

<asp:Panel ID="panelpage" runat="server">
                        总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                            runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
                        <asp:Label ID="FirstPage" runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
		</ul>
</asp:Content>