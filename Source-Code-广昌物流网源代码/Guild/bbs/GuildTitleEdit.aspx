<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_bbs_GuildTitleEdit, App_Web_gp5c4bcc" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="center1">
        <h5>
            <div id="no">
                论坛头衔修改</div>
        </h5>
        <ul>
            <table width="500" border="0" align="center" cellpadding="2" cellspacing="1">
                <tr>
                    <td height="25" colspan="4" align="left" class="line">
                        &nbsp;<b>修改头衔</b>
                    </td>
                </tr>
                <tr>
                    <td width="84" height="25" align="center">
                        头衔名称
                    </td>
                    <td width="155" height="25" align="left">
                        <input name="jb_name" type="text" id="jb_name" value="55" size="15" maxlength="8" runat="server" />
                    </td>
                    <td width="76" height="25" align="center">
                        级 别
                    </td>
                    <td width="164" height="25" align="left" class="hui">
                        <input name="jb" id="jb" type="text" value="1" size="5" runat="server" />
                        <asp:RangeValidator ID="RangeValidator1"  Type="Integer" MinimumValue="1" MaximumValue="9999" runat="server" ErrorMessage="请输入数字" 
                        ControlToValidate="jb">
                        </asp:RangeValidator>
                        正整数
                    </td>
                </tr>
                <tr>
                    <td height="25" align="center">
                        相应徽章
                    </td>
                    <td height="25" colspan="3" align="left">
                        <asp:TextBox ID="Clearimg" ReadOnly="true" runat="server" Width="300px" size="40"
                            MaxLength="200" />
                        <iframe id="bigimgs" style="top: 2px" src="../../User/fileupload.aspx?menu=Clearimg"
                            width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                    </td>
                </tr>
            </table>
            <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="40" align="center">
                        <asp:Button ID="Button1" runat="server" Text="修 改" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </ul>
    </div>
</asp:Content>
