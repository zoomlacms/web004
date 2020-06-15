<%@ page language="C#" autoeventwireup="true" inherits="MultiVideo_VideoHall, App_Web_jteulmhj" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>聊天室房间</title>
    <link href="../App_Themes/AdminDefaultTheme/VideoStyle.css" rel="stylesheet" type="text/css" />
</head>
<style type="text/css" > 

A{
  text-transform:none;

 text-decoration: none ;} 

a:hover { text-decoration:none } 

</style>
<body style="background-color: transparent; background-image: none;">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="smVideoRoom" runat="server">
    </asp:ScriptManager>
    <!--主体区-->
    <table style=" width:600px;">
        <tr>
            <td>
                <asp:Repeater ID="repVideoRoom" runat="server">
                    <ItemTemplate>
                        <table style="float:left">
                            <tr>
                                <td style="padding-left: 10px">
                                    <div class="hotelPic">
                                        <a href="#" target="_blank">
                                            <img src="" width="80" height="90" /></a></div>
                                </td>
                                <td align="center" style="padding-left: 10px">
                                    <asp:Label ID="LblPersonNum" runat="server">22</asp:Label>/<asp:Label ID="LblMaxPerson"
                                        runat="server"><%#Eval("MaxPerson") %></asp:Label>
                                    <br />
                                    <asp:Label ID="LblRoomNum" runat="server"><%#Eval("RoomNum") %></asp:Label>
                                    <br />
                                    <span class="star1"></span>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding-left: 10px">
                                    <b><a style='color: red' href="#">
                                        <%#Eval("RoomName") %></a></b>
                                </td>
                                <td align="right" style="padding-left: 10px">
                                    <span class="join_btn">
                                        <img src="/App_Themes/AdminDefaultTheme/images/Video/join_btn.jpg" /></span>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
                <div style="clear:left;"></div>
            </td>
        </tr>
        <tr>
            <td height="22" colspan="3" style="position: relative;" align="center">
                <asp:Label ID="Toppage" runat="server" Text="" style=" background-image:url('topPage.png'); width:18px; height:18px" />
                <asp:Label ID="Nextpage" runat="server" Text="" style=" background-image:url('nextPage.png'); width:18px; height:18px" />
                <asp:Label ID="Downpage" runat="server" Text="" style=" background-image:url('downPage.png'); width:18px; height:18px"  />
                <asp:Label ID="Endpage" runat="server" Text="" style=" background-image:url('lastPage.png'); width:18px; height:18px"  />
                &nbsp;转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页
                </td>
        </tr>
    </table>
    </form>
</body>
</html>
