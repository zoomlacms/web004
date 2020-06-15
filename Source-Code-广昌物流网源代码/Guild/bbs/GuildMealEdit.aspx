<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_bbs_GuildMealEdit, App_Web_gp5c4bcc" viewStateEncryptionMode="Never" %>


        
        
        <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div id=center1>
		<h5><div id="Div1">勋章修改</div></h5>
		<ul>
		  
        
            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1">
              <tr>
                <td height="25" colspan="2" align="left" class="line">&nbsp;<b>修改勋章</b></td>
              </tr>
              <tr>
                <td width="84" height="25" align="center">勋章名称</td>
                <td height="25" align="left">
                <input name="jb_name" type="text" id="jb_name"  size="15" maxlength="8" runat="server" /></td>
              </tr>
              <tr>
                <td height="25" align="center">勋章图片</td>
                <td height="25" align="left">
                     <asp:TextBox ID="Clearimg" runat="server" Width="300px"  size="40" maxlength="200"/>
                          <iframe id="bigimgs" style="top:2px" src="../../User/fileupload.aspx?menu=Clearimg" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>  
                    </td>
              </tr>
            </table>
            <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="40" align="center">
                    <asp:Button ID="Button1" runat="server" Text=" 修 改 " onclick="Button1_Click" />
                
                </td>
              </tr>
            </table>
          
</ul>
        
        
        
        
        
        
        
        
        
        <div class="clearfix">
        </div>
    </div>
   </asp:Content>