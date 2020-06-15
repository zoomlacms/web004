<%@ page language="C#" autoeventwireup="true" inherits="MultiVideo_FindFriend, App_Web_jteulmhj" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>查找用户</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style3
        {
            height: 72px;
        }
        .f_input
        {
            border: 1px solid #C0C0C0;
        }
        *
        {
            padding: 0px;
            margin-left: 0px;
            margin-right: 8px;
            margin-top: 0px;
        }
        
        *
        {
            padding: 0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .style5
        {
            height: 58px;
        }
        .style6
        {
            width: 146px;
        }
        .style7
        {
            height: 72px;
            width: 146px;
        }
        .btn1_mouseout
        {
            border: 1px solid #FF9;
            padding-right: 10px;
            padding-left: 10px;
            font-size: 12px;
            cursor: hand;
            color: black;
            padding-top: 2px;
            width: 71px;
        }
        .btn1_mouseover
        {
            border-right: #FC6 1px solid;
            padding-right: 10px;
            border-top: #FC6 1px solid;
            padding-left: 10px;
            font-size: 12px;
            border-left: #FC6 1px solid;
            cursor: hand;
            color: black;
            padding-top: 2px;
            border-bottom: #FC6 1px solid;
        }
        .tdbgmousedown
        {
            background: #FC6;
            padding: 2px;
        }
        .tdbgmouseup
        {
            background: #Ffffff;
            padding: 2px;
        }
        .style16
        {
            width: 32px;
            height: 27px;
        }
        .style17
        {
            width: 36px;
        }
        .style18
        {
            width: 37px;
            height: 27px;
        }
        .style19
        {
            width: 3%;
        }
        .style21
        {
            width: 3%;
        }
        .style22
        {
            width: 9%;
        }
        .style23
        {
            width: 10%;
            height: 12px;
        }
        body
        {
            text-align: center;
        }
        .style24
        {
            width: 71px;
        }
    </style>
    <script type="text/javascript">
        function showTip() {
            document.getElementById("tbFriendList").style.display = "block";
            document.getElementById("tbFindFriend").style.display = "none";
            var disp= document.getElementById("hdShowList").value = "none";
        }
        var select = 0;
        function show(index) {
            var gv = document.getElementById("Egv");
            gv.rows[select].style.backgroundColor = '#ffffff';
            select = index;
            gv.rows[index].style.backgroundColor = '#FC6';
            var code = gv.rows[index].cells[0].innerText;
            var name = gv.rows[index].cells[1].innerText;
        }



    </script>
</head>
<body runat="server">
    <form id="form1" runat="server">
    <div style="border: 2px solid #FC6; width: 410px;">
        <asp:ScriptManager ID="Scriptmanager1" runat="server">
        </asp:ScriptManager>
        <table id="tbFindFriend" style="border-style: none; border-color: inherit; border-width: 0px;
            border-spacing: 0px; width: 410px; height: 331px;">
            <tr>
                <td style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bghead.png'); font-size: 14px" class="style18"
                    colspan="2" align="left">
                    <img alt="" class="style25" src="../App_Themes/AdminDefaultTheme/images/Video/images/logao.png"
                        align="middle" /><b style="font-size: 12px"><asp:Label ID="Label1" runat="server"
                            Text="查找用户"></asp:Label></b>
                </td>
                <td class="style16" style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgright.png')">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgleft.png')" class="style19" rowspan="2">
                    &nbsp
                </td>
                <td style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgtop.png')" class="style23">
                </td>
                <td style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgright.png');" class="style21" rowspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <div id="divFindFriend" style="border: 1px solid #FC6; width: 376px; border-color: #854700;
                        border-style: solid; border-width: 1px; display: block;">
                        <table style="background-image: url('images/bg.png'); width: 376px; height: 230px;">
                            <tr>
                                <td class="style6" style="font-size: 12px; text-align: left;" rowspan="3">
                                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="157px" AutoPostBack="True"
                                        OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                        <asp:ListItem Selected="True" Value="1">看谁在线上</asp:ListItem>
                                        <asp:ListItem Value="2">通过数字账号查找</asp:ListItem>
                                        <asp:ListItem Value="3">按昵称查找</asp:ListItem>
                                    </asp:RadioButtonList>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                                <td class="style5" style="font-size: 12px; text-align: center; height: 40px">
                                </td>
                            </tr>
                            <tr>
                                <td class="style5" style="font-size: 12px; text-align: left; height: 45px">
                                    <asp:TextBox ID="Txt_Number" runat="server" CssClass="f_input" Width="143px" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3" style="font-size: 12px; height: 50px" align="left">
                                    <asp:TextBox ID="Txt_Name" runat="server" CssClass="f_input" Width="143px" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7" style="font-size: 12px; height: 40px" align="left">
                                    &nbsp;
                                </td>
                                <td class="style3" style="font-size: 12px; height: 40px" align="left">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="style22" style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgtop.png')">
                    <table align="right">
                        <tr>
                            <td align="right">
                                <asp:ImageButton ID="IBtnSearch" runat="server" ImageUrl="~/MultiVideo/UserInfo/images/BtnSearch.png"
                                    OnClick="IBtnSearch_Click" Height="25px" OnClientClick="showTip();return false;" />
                            </td>
                            <td>
                                &nbsp;<asp:ImageButton ID="ImgbtnClose" runat="server" ImageUrl="~/MultiVideo/UserInfo/images/BtnCloseFindFriend.png"
                                    OnClick="ImgbtnClose_Click" />
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:HiddenField runat="server" ID="hdShowList" />
        <table id="tbFriendList" style="border-style: none; border-color: inherit; border-width: 0px;
            border-spacing: 0px; width: 410px; height: 331px; display: none">
            <tr>
                <td style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bghead.png'); font-size: 14px" class="style18"
                    colspan="2" align="left">
                    <img alt="" class="style25" src="../App_Themes/AdminDefaultTheme/images/Video/images/logao.png"
                        align="middle" /><b style="font-size: 12px"><asp:Label ID="Label2" runat="server"
                            Text="查找用户"></asp:Label></b>
                </td>
                <td class="style16" style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgright.png')">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgleft.png')" class="style19" rowspan="2">
                    &nbsp
                </td>
                <td style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgtop.png')" class="style23">
                </td>
                <td style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgright.png');" class="style21" rowspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <div id="divFindFriend0" style="border: 1px solid #FC6; width: 376px; height:229px; border-color: #854700;
                        border-style: solid; border-width: 1px; display: block;">
                            <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False"
                                Width="100%" EnableModelValidation="True" 
                                OnRowDataBound="Egv_RowDataBound">
                                <Columns>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>                                        
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="UserID" HeaderText="用户ID" SortExpression="UserID">
                                        <HeaderStyle Width="20%" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="昵称">
                                        <ItemTemplate>
                                            <%#GetFriendName(Eval("UserID","{0}"))%>                                        
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="状态">
                                        <ItemTemplate>
                                            <%#GetFriendStatusByID(Eval("UserID","{0}"))%>
                                        </ItemTemplate>
                                        <HeaderStyle Width="15%" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="性别">
                                        <ItemTemplate>
                                            <%#GetFriendSexByID(Eval("UserID","{0}"))%>
                                        </ItemTemplate>
                                        <HeaderStyle Width="15%" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="省份">
                                        <ItemTemplate>
                                            <%#GetFriendProvinceByID(Eval("UserID","{0}"))%>
                                        </ItemTemplate>
                                        <HeaderStyle Width="15%" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <table id="tbChangePage">
                                <tr>
                                    <td>
                                        <span style="text-align: center">
                                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" 
                                             Width="16px"
                                                Height="16px" Visible="False"></asp:TextBox>
                                            <asp:Label ID="Nextpage" runat="server" Text="" />
                                            <asp:Label ID="Downpage" runat="server" Text="" />
                                            <asp:DropDownList ID="DropDownList3" runat="server" Visible="False">
                                            </asp:DropDownList>
                                        </span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="style22" style="background-image: url('../App_Themes/AdminDefaultTheme/images/Video/images/bgtop.png')">
                    <table align="right">
                        <tr>
                            <td align="right">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/MultiVideo/UserInfo/images/IBtnBack.png" />
                            </td>
                            <td align="right" class="style24">
                                <asp:ImageButton ID="IBtnGetFriend" runat="server" 
                                    ImageUrl="~/MultiVideo/UserInfo/images/TobeFriend.png"
                                     />
                            </td>
                            <td>
                                &nbsp;<asp:ImageButton ID="ImgbtnClose0" runat="server" ImageUrl="~/MultiVideo/UserInfo/images/BtnCloseFindFriend.png"
                                    OnClick="ImgbtnClose_Click"  />
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
