<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Guild/manage/GuildManagePage.master" inherits="Guild_bbs_EditGuildbbsEdit, App_Web_54emdjko" viewStateEncryptionMode="Never" %>



   
       
      <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div id="center1">
                <h5>
                    <div id="Div1">
                        论坛版块编辑</div>
                    <h5>
                    </h5>
                    <ul>
                
                    <table id="tableInterference"  align="center" border="0"  cellpadding="2" cellspacing="1" width="80%">
                            
         
                            <tr>
                                <td align="center" height="25">
                                    所在分类
                                </td>
                                <td align="left" height="25">
                              
                                    <asp:DropDownList ID="TypePang" runat="server" Height="17px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" height="25">
                                    <span id="flfl">版块名称</span>
                                </td>
                                <td align="left" height="25" width="415">
                                    <input id="bbs_name" name="bbs_name" size="35" type="text" runat="server"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" height="25">
                                    设置顺序
                                </td>
                                <td align="left" class="hui" height="25">
                                    <input id="bbs_px" name="bbs_px" size="4" type="text" runat="server"/>
                                    (只能填写数字，越小越靠前)
                                </td>
                            </tr>
                            <tr id="tb1">
                                <td align="center" height="25">
                                    开放级别
                                </td>
                                <td align="left" class="hui" height="25">
                                    <select id="bbs_qx" name="bbs_qx" runat="server">
                                        <option value="游客">游客</option>
                                        <option value="系统会员">系统会员</option>
                                        <option value="预备会员">预备会员</option>
                                        <option value="正式会员">正式会员</option>
                                    </select>
                                    <br />
                                    游客：不用解释了吧<br />
                                    u9u8会员：本站注册会员<br />
                                    预备会员：加入公会后未审核的会员<br />
                                    正式会员：本公会正式会员
                                </td>
                            </tr>
                            <tr id="tb2">
                                <td align="center" height="25">
                                    版块图片
                                </td>
                                <td align="left" class="hui" height="25">
                                    <input id="bk_pic" name="bk_pic" size="30" type="text" value="http://" runat="server"/>
                                    只提供链接 大小 120*50
                                </td>
                            </tr>
                            <tr id="tb3">
                                <td align="center">
                                    选择版主
                                </td>
                                <td align="left" class="hui" height="25">
                                    <select id="bbs_user" name="bbs_user" onchange="changemaster()" runat="server">
                                        <option></option>
                                        <option value="jnngs">jnngs</option>
                                    </select>
                                    会长和论坛管理员直接论坛前台进行管理.
                                </td>
                            </tr>
                            <tr id="tb4">
                                <td align="center">
                                    &nbsp;
                                </td>
                                <td align="left" class="hui" height="25">
                                    <textarea id="bbs_bz" cols="50" name="bbs_bz" rows="3" runat="server"></textarea>
                                </td>
                            </tr>
                            <tr id="tb5">
                                <td align="center" height="25">
                                    版块说明
                                </td>
                                <td align="left" class="hui" height="25">
                                    <textarea id="bbs_sm" cols="50" name="bbs_sm" rows="6" runat="server"></textarea>
                                </td>
                            </tr>
                                
                            <tr><td colspan="2" align="center">
                            <asp:Button ID="Button1" runat="server" Text="修 改" onclick="Button1_Click"  />
                            </td></tr>
                     </tbody>  
                           
                        </table>
              
                
                        <div class="clearfix">
                        </div>
                    </ul>
                   
            </div>
          
            <div class="clearfix">
            </div>
</asp:Content>
