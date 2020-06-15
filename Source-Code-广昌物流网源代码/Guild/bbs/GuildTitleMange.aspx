<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_bbs_GuildTitleMange, App_Web_gp5c4bcc" viewStateEncryptionMode="Never" %>

  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  
     <div id="center1">
            <h5>
                <div id="no">
                    论坛头衔管理</div>
            </h5>
            <ul>
                <table width="80%" border="0" align="center" cellpadding="0" cellspacing="1">
                    <tr align="center">
                        <td height="22" colspan="4" align="left" class="line">
                            该设置为会员在论坛中的等级，会员在公会论坛可通过发帖、回帖、加精华等获得经验（具体数值可在经验值设置），达到设定经验值的会员将自动升为相应等级。
                        </td>
                    </tr>
                    <tr align="center">
                        <td width="167" height="22" class="line">
                            <strong>头 衔 名 称</strong>
                        </td>
                        <td width="112" class="line">
                            <strong>经验值</strong>
                        </td>
                        <td width="154" class="line">
                            <strong>徽 章</strong>
                        </td>
                        <td width="95" class="line">
                            <strong>操 作</strong>
                        </td>
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                  
                    <tr align="center">
                        <td height="22" class="line">
                            <%#Eval("Tname")%>
                        </td>
                        <td height="22" class="line">
                             <%#Eval("Texperience")%>
                        </td>
                        <td height="22" class="line">
  <asp:Image ID="Image1" runat="server" ImageUrl='<%#GgetUrl(Eval("Tmedal","{0}")) %>'
   Height="50px"  Width="50px"/>
   
                        </td>
                        <td height="22" class="line">
                            <a href="GuildTitleEdit.aspx?Tid=<%#Eval("Tid") %>"class="link1">编辑</a> | 
                            <a href="GuildTitleMange.aspx?Tid=<%#Eval("Tid") %>"
                            
                             class="link1" >删除</a>
                        </td>
                    </tr>
                 </ItemTemplate>
                    </asp:Repeater>

              
                <table width="80%" border="0" align="center" cellpadding="2" cellspacing="1">
                    <tr>
                        <td height="25" colspan="4" align="left" class="line">
                            &nbsp;<b>添加头衔</b>
                        </td>
                    </tr>
                    <tr>
                        <td width="98" height="25" align="center">
                            头衔名称
                        </td>
                        <td width="158" height="25" align="left">
                            <input name="jb_name"  runat="server"  type="text" id="jb_name" size="15" maxlength="8" />
                        </td>
                        <td width="63" height="25" align="center">
                            经验值
                        </td>
                        <td width="193" height="25" align="left" class="hui">
                            <input name="jb" type="text" id="jb" size="5" runat="server" />
                            正整数
                        </td>
                    </tr>
                    <tr>
                        <td height="25" align="center">
                            徽章地址
                        </td>
                        <td height="25" colspan="3" align="left">
                          
                                      <asp:TextBox ID="Clearimg" runat="server" Width="300px" size="40"
                                MaxLength="200" />
           <iframe id="bigimgs" style="top:-5px" src="../../User/fileupload.aspx?menu=Clearimg"
                                width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
         </iframe>
                         
                         </a>
                        </td>
                    </tr>
                </table>
                <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="40" align="center">
                    
                     
                            <asp:Button ID="Button1" runat="server" Text=" 添 加 " onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
                <div class="clearfix">
                </div>
            </ul>
        </div>
</asp:Content>
