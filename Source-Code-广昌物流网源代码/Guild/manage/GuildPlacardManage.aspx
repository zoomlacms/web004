<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_GuildPlacardManage, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div id=center1>

		<h5><div id="no">公会会告</div></h5>
		<ul> 
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<li style="width: 100%; float: left; line-height: 30px">
            <asp:Panel ID="Panel1" runat="server">
                <table width="100%" border="0">
                    <caption>
                        暂时还没有记录!
                    </caption>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
            <tr>
            <td>
            <asp:DataList ID="DataList1" runat="server" Width="100%" DataKeyField="Pid">
                                    <ItemTemplate>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="22" align="left">&nbsp;<b>
            <a href="GuildPlacardShow.aspx?ID=<%=Request.QueryString["ID"] %>&pid=<%#Eval("Pid") %>"><%#Eval("PostTitle") %></a>
            </b></td>
            <td id="Td1" align="left" visible='<%#del(Eval("Pid").ToString())%>' runat="server">
                                                <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="删除"  
                                        ImageUrl="~/Guild/images/del.gif" onclick="ImageButton1_Click" OnClientClick="return confirm('你确定要删除所选公告吗？')"/>        
                                                </td>
          </tr>
          <tr>
            <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;<%#Eval("PostContent")%></td>
          </tr>
          <tr>
            <td height="25" colspan="2" align="right"><a href="GuildPlacardShow.aspx?ID=<%=Request.QueryString["ID"] %>&pid=<%#Eval("Pid") %>">阅读全文</a>　时间:<%#Eval("CreateTime")%></td>
          </tr>
          <tr>
            <td colspan="2" align="center">&nbsp;</td>
          </tr>
          </table>
          </ItemTemplate>
         </asp:DataList>
            </td>
            </tr>
          </asp:Panel>
               <div style="text-align: center; width: 100%">
                <asp:Panel ID="panelpage" runat="server">
                    总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                        runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                    <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
                    <asp:Label ID="FirstPage" runat="server"></asp:Label>
                    <asp:Label ID="RePage" runat="server"></asp:Label>
                    <asp:Label ID="NextPage" runat="server"></asp:Label>
                    <asp:Label ID="EndPage" runat="server"></asp:Label>
                </asp:Panel>
        </li>
        </table>
      
		</ul>
  </div>
</asp:Content>