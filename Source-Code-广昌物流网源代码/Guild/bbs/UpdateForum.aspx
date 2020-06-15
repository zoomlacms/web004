<%@ page title="" language="C#" masterpagefile="~/Guild/manage/GuildManagePage.master" autoeventwireup="true" inherits="Guild_manage_Default2, App_Web_54emdjko" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<script>
    window.onload = function lo() {
        var ur = window.location.href;
        var u = ur.indexOf("parentid");
        var num = ur.substring((u + 9), u + 10);
        if (num == 1) {
            document.getElementById("son").style.display = "";
            document.getElementById("fa").style.display = "none";
        } else {
            document.getElementById("son").style.display = "none";
            document.getElementById("fa").style.display = "block";
        }

    }
</script>

    <div class="main_l_k" style="padding-left: 150px; padding-top: 50px;">
        <span id="fa">
<table border="0" style="margin-left:100px; margin-top:50px;">
  <tr>
    <td>论坛组名称</td>
    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>排序</td>
    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>论坛组版主</td>
    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>论坛组描述</td>
    <td><asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td>
  </tr>
  <tr>
    <td>论坛横排</td>
    <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td colspan="2" align="right"><asp:Button ID="Button1" runat="server" Text="修改" 
            onclick="Button1_Click" /></td>
  </tr>
</table>
</span>
<span id="son" style="display:none;">
  <table border="0" style="margin-left:100px; margin-top:50px;">
  <tr>
    <td>论坛名称</td>
    <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>排序</td>
    <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>版主</td>
    <td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>帖子类别</td>
    <td><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>描述</td>
    <td><asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine"></asp:TextBox></td>
  </tr>
  <tr>
    <td>父版块</td>
    <td><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
  </tr>
  <tr>
    <td>规则和导读</td>
    <td><asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine"></asp:TextBox></td>
  </tr>
  <tr>
    <td>版面链接</td>
    <td><asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>论坛横排</td>
    <td><asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
  </tr>
  <tr>
    <td>启用这个论坛</td>
    <td><input type="radio" runat="server" name="a" id="Radio2" checked=true/>是<input id="Radio3" type="radio" runat="server" name="a" />否</td>
  </tr>
  <tr>
    <td colspan="2" align="right"><asp:Button ID="Button2" runat="server" Text="修改" 
            onclick="Button1_Click" /></td>
  </tr>
</table>
</span>
</div>
</asp:Content>
