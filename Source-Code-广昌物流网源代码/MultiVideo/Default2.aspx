<%@ page language="C#" autoeventwireup="true" inherits="MultiVideo_Default2, App_Web_jteulmhj" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Tab</title>
    <link rel="stylesheet" href="tabber.css" type="text/css" media="screen" />
    <style>
        .tabItem
        {
            border: 1px solid #778;
            background: #DDE;
            text-decoration: none;
            width: 50px;
            height: 20px;
            padding-top: 3px;
            text-align: center;
        }
        .tabSelected
        {
            background-color: #fff;
            border-bottom: 1px solid white;
        }
        .tabHover
        {
            color: #000;
            background: white;
        }
        .tabbernav
        {
            margin: 0;
            font: bold 12px Verdana, sans-serif;
            vertical-align: bottom;
            width: 10px;
        }
        .tabbernav1
        {
            margin: 0;
            padding: 3px 0;
            border-bottom: 1px solid #778;
            font: bold 12px Verdana, sans-serif;
            width: 5px;
        }
        .tabbernav2
        {
            margin: 0;
            padding: 3px 0;
            border-bottom: 1px solid #778;
            font: bold 12px Verdana, sans-serif;
        }
        .tabcontent
        {
            padding: 5px;
            border: 1px solid #aaa;
            border-top: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td class="tabbernav1">
                                &nbsp;
                            </td>
                            <td class="tabbernav">
                                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                                    <Items>
                                        <asp:MenuItem Text=" 大厅 " Value="0" Selected="True"></asp:MenuItem>
                                        <asp:MenuItem Text=" 吴锋 " Value="1"></asp:MenuItem>
                                    </Items>
                                    <StaticMenuItemStyle CssClass="tabItem" BorderWidth="2px" />
                                    <StaticSelectedStyle CssClass="tabSelected" />
                                    <StaticHoverStyle CssClass="tabHover" />
                                </asp:Menu>
                            </td>
                            <td class="tabbernav2">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="tabcontent">
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="Tab1" runat="server">
                            <table width="600" height="400" cellpadding="0" cellspacing="0">
                                <tr valign="top">
                                    <td class="TabArea" style="width: 600px">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>TAB VIEW 1
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="Tab2" runat="server">
                            <table width="600" height="400" cellpadding="0" cellspacing="0">
                                <tr valign="top">
                                    <td class="TabArea" style="width: 600px">
                                        TA<asp:Button ID="Button1" runat="server" Text="Button" />B VIEW 2
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>
    </center>
    </form>
</body>
</html>
