<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_bbs_Guildbbs, App_Web_gp5c4bcc" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<style type="text/css">
   .spacingtitle{background-color:#000; border:1px solid #CCCCCC;/*line-height: 120%;*/	padding:2px;	color: #fff;	font-weight: bold;line-height: 22px;letter-spacing: 8px;}
   .C_input{background: url(images/input_bg.gif) repeat-x scroll center;margin: 2px;overflow: visible;border: 2px solid #000;cursor: pointer;  padding-top:3px;
    padding-left: 13px;
    padding-right: 14px;
    padding-bottom: 3px;
    color:White;
	}
.border{text-indent:20px;}
.pa{margin-left:20px;}
.C_input:hover{	background: url(images/input_hover.gif) repeat-x scroll center;	border: 1px solid #AACC12;}
</style>
<div class="main_l_k">
   <div class="pa">
      <asp:Repeater runat="server" ID="GroupList"  OnItemCommand="GroupList_ItemCommand">
        <ItemTemplate>
            <table border="0" cellpadding="5" cellspacing="1" class="border" width="100%" align="center">
                <tr>
                    <td align="left" style="width:50%">
                        <%#Eval("GroupName")%>
                    </td>
                    <td align="right">
                        <input id="Button1" type="button" onclick="javascript:location.href='addForum.aspx?parentid=-1&id=<%=Request.QueryString["id"]%>'" value="新建论坛" class="C_input" /><input id="Button5" type="button" onclick="javascript:location.href='updateforum.aspx?parentid=-1&id=<%=Request.QueryString["id"]%>'" value="编辑论坛组" class="C_input" /><input id="Button6" type="button" onclick="if(confirm('确认删除吗?')){location.href='updateforum.aspx?parentid=-1&meu=delete&id=<%#Eval("groupid") %>'}" value="删除论坛组" class="C_input" />
                    </td>
                </tr>
                <%#loadtree(Eval("GroupID").ToString()) %>
            </table>
            <br>
        </ItemTemplate>
    </asp:Repeater>
 </div>
</div>
</asp:Content>
