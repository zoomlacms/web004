<%@ page language="C#" autoeventwireup="true" inherits="Guild_bbs_Addbanbbs, App_Web_54emdjko" masterpagefile="~/Guild/manage/GuildManagePage.master" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script language="JavaScript" type="text/JavaScript">
        function ShowInterference(i) {
            switch (i) {
                case 1:
                    document.getElementById("tableInterference").style.display = "";
                    document.getElementById("Panel2").style.display = "";
                    document.getElementById("Panel1").style.display = "none";
                    break;
                case 2:
                    document.getElementById("tableInterference").style.display = "";
                    document.getElementById("Panel1").style.display = "";
                    document.getElementById("Panel2").style.display = "none";

                    break;
                case 3:
                    document.getElementById("tableInterference").style.display = "";
                    document.getElementById("Panel2").style.display = "";
                    document.getElementById("Panel1").style.display = "none";
                    break;
            }
        }
        function changemaster() {
            if (document.form1.bbs_user.options[document.form1.bbs_user.selectedIndex].value != "") {

                if (document.form1.bbs_bz.value != "")
                    document.form1.bbs_bz.value = document.form1.bbs_bz.value + ',' + document.form1.bbs_user.options[document.form1.bbs_user.selectedIndex].value
                else
                    document.form1.bbs_bz.value = document.form1.bbs_user.options[document.form1.bbs_user.selectedIndex].value
            }
        }

    </script>

    <h5>
        <div id="Div1">
            添加版块</div>
    </h5>
      <table style="margin-left:200px;margin-top:100px;">
           <tr>
                <td>论坛版块名称</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
           </tr>
           <tr>
              <td>排序方式：</td>
              <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>0为隐藏
             </td>
           </tr>
           <tr>
              <td>版块说明:</td>
              <td><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox></td>
           </tr>
           <tr><td>&nbsp;</td></tr>
           <tr><td>&nbsp;</td></tr>
           <tr><td></td><td style="text-align:right;"><asp:Button ID="Button1" runat="server" 
                   Text="添加" onclick="Button1_Click1" /></td></tr>
        </table>
</asp:Content>
