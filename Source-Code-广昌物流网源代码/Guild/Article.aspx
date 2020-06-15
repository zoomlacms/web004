<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/GuildPage.master" inherits="Guild_manage_Article, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div id="left">
<h5>

</h5>
<ul>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">添加文章</asp:LinkButton>
              </td>
		  </tr>
		</table>
		</ul>
		</div>
<div id=center1>
		<h5><div id="no">文章列表</div></h5>
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
 <table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tr>
                            <td>
                                <asp:DataList ID="DataList1" runat="server" Width="100%" DataKeyField="Lid">
                                    <ItemTemplate>
                                        <table border="0" cellpadding="0" cellspacing="0"  width="100%">
                                            <tr>
                                                <td width="60%" align="left">
                                                    <a href="ArticleShow.aspx?ID=<%=Request.QueryString["ID"] %>&lid=<%#Eval("Lid") %>"><%#Eval("LogTitle")%></a>
                                                </td>                                             
                                                <td align="left" visible='<%#del(Eval("Lid").ToString())%>' runat="server">
                                                <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="删除"  
                                        ImageUrl="~/Guild/images/del.gif" onclick="ImageButton1_Click" OnClientClick="return confirm('你确定要删除所选文章吗？')"/>        
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" align="left">
                                                    &nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem, "LogContent")%></td>
                                            </tr>
                                            <tr>
                                                <td height="10" align="center">
                                                    &nbsp;</td>
                                                <td align="right">
                                                <a href="ArticleShow.aspx?ID=<%=Request.QueryString["ID"] %>&lid=<%#Eval("Lid") %>">阅读全文</a>&nbsp;&nbsp;&nbsp;来自<a href=""><%#GetName(Eval("UserID"))%></a>&nbsp;&nbsp;&nbsp;时间:<%#Eval("CreateTime")%>&nbsp;</td>
                                                <caption>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                </caption>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" align="center" bgcolor="#CC6600">
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                                </td>
                                
                            </tr>
                            <tr>
                            <td>
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
                </div>
                            </td>
                            </tr>
                            </asp:Panel>
                            
                            
                </table>	
        </li>
                            
		</ul>
  </div>
</asp:Content>
