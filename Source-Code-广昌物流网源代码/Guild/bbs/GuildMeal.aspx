<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_bbs_GuildMeal, App_Web_54emdjko" viewStateEncryptionMode="Never" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div id="center1">
            <h5>
                <div id="no">
                    勋章管理</div>
            </h5>
            <ul>
                <table width="80%" border="0" align="center" cellpadding="0" cellspacing="1">
                    <tr align="center">
                        <td height="30" colspan="4" align="left" class="line">
                            设置完勋章后，会长可以在菜单中的“成员”栏目中编辑单个会员的资料为其颁发相应勋章。
                        </td>
                    </tr>
                    <tr align="center">
                        <td width="84" height="22" class="line">
                            <strong>选 择</strong>
                        </td>
                        <td width="159" class="line">
                            <strong>勋 章 名 称</strong>
                        </td>
                        <td width="310" class="line">
                            <strong>勋 章</strong>
                        </td>
                        <td width="176" class="line">
                            <strong>操 作</strong>
                        </td>
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr align="center">
                                <td height="22" class="line">
                                    <input name="xz" type="checkbox" id="xz" value="71007" />
                                </td>
                                <td height="22" class="line">
                                    <%#Eval("MedalName") %>
                                </td>
                                <td height="22" class="line">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#GgetUrl(Eval("MedaUrlPic","{0}")) %>'
                                        Height="50px" Width="50px" />
                                </td>
                                <td height="22" class="line">
                                    <a href="GuildMealEdit.aspx?id=<%#Eval("MedalId") %>"class="link1">编辑</a> | <a
                                        href="GuildMeal.aspx?Did=<%#Eval("MedalId") %>" class="link1">删除</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr align="center">
                        <td height="22" colspan="4" align="left">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <%--<td width="45%" height="30">
                                        把以上选择的勋章颁发给
                                        <input name="username" type="text" id="username" size="12" />
                                    </td>
                                    <td width="55%">
                                        <input type="submit" name="Submit2" value="确定" />
                                        <input name="action" type="hidden" id="action" value="set" />
                                        注：只有会长才能操作．
                                    </td>--%>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <table width="80%" border="0" align="center" cellpadding="2" cellspacing="1">
                    <tr>
                        <td height="25" colspan="2" align="left" class="line">
                            &nbsp;<b>添加勋章</b>
                        </td>
                    </tr>
                    <tr>
                        <td width="91" height="25" align="center">
                            勋章名称
                        </td>
                        <td width="431" height="25" align="left">
                            <input name="jb_name" type="text" id="jb_name" size="15" maxlength="8" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td height="25" align="center">
                            徽章地址
                        </td>
                        <td height="25" align="left">
                            <asp:TextBox ID="Clearimg" runat="server" Width="300px" size="40"
                                MaxLength="200" />
                            <iframe id="bigimgs" style="top: 2px" src="../../User/fileupload.aspx?menu=Clearimg"
                                width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
                                </iframe>
                        </td>
                    </tr>
                </table>
                <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="40" align="center">
                            <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
                <div class="clearfix">
                </div>
            </ul>
        </div>
        </asp:Content>

