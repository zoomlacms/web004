<%@ page title="" language="C#" masterpagefile="~/Guild/GuildPage.master" autoeventwireup="true" inherits="Guild_MoveDefault, App_Web_t4un4b3b" viewStateEncryptionMode="Never" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headCon" runat="Server">

    <script type="text/javascript" language="javascript" src="/JS/ajaxrequest.js"></script>
    <script type="text/javascript" language="javascript" src="js/global.js"></script>
    <script type="text/javascript" language="javascript" src="js/app.js"></script>
    <script type="text/javascript">
        var host_id = '<%=Request.QueryString["ID"] %>';
        function start() {
            var scTop ='<%=Request.QueryString["top"] %>';
  
            if (scTop != null && scTop != "") {
                window.scroll(0, scTop);
            }
            else {
                window.scroll(0, document.body.scrollHeight);
            }
            init();
        }
        function GetVote() {
            var s = document.getElementsByName('VConfig');
            
            var che = "";
            var gid = '<%=Request.QueryString["ID"] %>';
            var vid = document.getElementById('vids').value;
            
            for (var i = 0; i < s.length; i++) {
                if (s[i].type == 'checkbox') {
                    if (s[i].checked) {
                        che+=s[i].value+",";
                     }
                 }
             }
             if (che != "") {
                 var url = "manage/save.aspx?act=Vote&id=" + parseInt(gid) + "&s=" + escape(che) + "&i=" + parseInt(vid);
                 window.location.href = url;
             }
             else { 
                
             }
         }
        
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Loading" style="display: none;z-index: 200;"></div>
<asp:Literal ID="Literal1" runat="server"></asp:Literal>
<div style="clear:both"></div>
</asp:Content>
