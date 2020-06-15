<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_GuildVideo, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div id="left">
    <h5>
	  <div id="no"></div>
	</h5>
    <ul>
	    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
		    <td align="left"><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">添加视频</asp:LinkButton></td>
	      </tr>
	    </table>
	</ul>
</div>
<div id=center1>
	<h5>
	  <div id="no">视频列表</div>
	</h5>
	<ul>
       <li style="width: 100%; float: left; line-height: 30px">
            <asp:Panel ID="Panel1" runat="server">
                <table width="100%" border="0">
                    <caption>
                        暂时还没有记录!
                    </caption>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <div class="page">
                    <asp:DataList ID="DataList1" Width="100%" runat="server" DataKeyField="ID" RepeatColumns="4">
                        <ItemTemplate>
                            <table width="100%">
                                <tr>
                                    <td>                                       
                                       <a href='ShowVideo.aspx?ID=<%=Request.QueryString["ID"] %>&vid=<%#Eval("ID")%>'> <img src="<%#Eval("VideoPic") %>" />  </a>                               
                                    </td>
                                </tr>
                                <tr>
                                <td>
                                    <a href='ShowVideo.aspx?ID=<%=Request.QueryString["ID"] %>&vid=<%#Eval("ID")%>'><%#Eval("VideoTitle")%></a>   
                                </td>
                                </tr>
                                <tr align="center">
                                <td id="Td2" visible='<%#del(Eval("ID").ToString())%>' runat="server">
                                   <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="删除"  OnClientClick="return confirm('你确定要删除所选视频吗？')" 
                                        ImageUrl="~/Guild/images/del.gif" onclick="ImageButton2_Click"/>        
                                </td>
                                </tr>
                                <tr>
                                    <td>
                                        来自：<asp:LinkButton ID="LinkButton1" runat="server"><%#GetName(Eval("UID"))%></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
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
		</ul>
  </div>
</asp:Content>