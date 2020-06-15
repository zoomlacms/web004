<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.User.Content.AddContentpage, App_Web_y3ifdjqg" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加内容</title>
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/style.css" />
<link href="../../../Skin/gcwuliu/global.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../Common/Common.js" type="text/javascript"></script>
<script src="../../Common/RiQi.js" type="text/javascript"></script>
<script type="text/javascript">
function SelectKey() {
	window.open('/Common/KeyList.aspx?OpenerText=<%=TxtTagKey.ClientID %>', '', 'width=600,height=450,resizable=0,scrollbars=yes');
}

function SelectValues(id) {
	window.open('/Common/OptionManage.aspx?id=' + id, '', 'width=600,height=450,resizable=0,scrollbars=yes');
}

function shows() {
	if (document.getElementById("IsBid").checked) {
		// id="bidmoneytable" style="display:none"
		document.getElementById("bidmoneytable").style.display = "";
		document.getElementById("bidmoneytable1").style.display = "";
	}
	else {
		document.getElementById("bidmoneytable").style.display = "none";
		document.getElementById("bidmoneytable1").style.display = "none";
	}
}

function changevalue(selectvalue) {
	if (selectvalue == "2") {
		document.getElementById('changeins').style.display = '';
	}
	else {
		document.getElementById('changeins').style.display = 'none';
	}
}

function getstrKeys() {
	document.getElementById("TxtTagKey").value = "";
	var strKeys = "";
	var strkey = "<%=getKey()%>";
	var strTitle = document.getElementById("txtTitle").value;
	var keys = new Array();
	keys = strkey.split(",");
	for (var i = 0; i < keys.length; i++) {
		if (!(strTitle.indexOf(keys[i]) < 0)) {
			if (i == 0) {
				strKeys = keys[i];
			}
			else {
				strKeys = strKeys + " " + keys[i];
			}
		}
	}
	var strtxt = document.getElementById("TxtTagKey").value;
	document.getElementById("TxtTagKey").value = strtxt + strKeys;
}                        
				
</script>  
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script src="/Common/Common.js" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script>
function scrollDoor(){
}
scrollDoor.prototype = {
	sd : function(menus,divs,openClass,closeClass){
		var _this = this;
		if(menus.length != divs.length)
		{
			alert("菜单层数量和内容层数量不一样!");
			return false;
		}				
		for(var i = 0 ; i < menus.length ; i++)
		{	
			_this.$(menus[i]).value = i;				
			_this.$(menus[i]).onclick = function(){
					
				for(var j = 0 ; j < menus.length ; j++)
				{						
					_this.$(menus[j]).className = closeClass;
					_this.$(divs[j]).style.display = "none";
				}
				_this.$(menus[this.value]).className = openClass;	
				_this.$(divs[this.value]).style.display = "block";				
			}
		}
		},
	$ : function(oid){
		if(typeof(oid) == "string")
		return document.getElementById(oid);
		return oid;
	}
}
window.onload = function(){
	var SDmodel = new scrollDoor();
SDmodel.sd(["m01","m02","m03","m04"],["c01","c02","c03","c04"],"sd01","sd02");
}
</script>
<style>
	#tianjia{ width:980px; margin:auto; border:1px solid #C6E3F7; overflow:hidden; height:100%;}
</style>
</head>
<body style="background:url(/App_Themes/AdminDefaultTheme/images/top_bg.jpg) repeat-x;">
<form id="form1" runat="server">
<div style="height:24px; line-height: 24px; display:none;">        
    <asp:Label ID="lblNodeName" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblAddContent" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TxtTagKey" runat="server" Text='' Width="50%"></asp:TextBox>
</div>
<div id="tianjia">
    <ul>
        <li style="width:100%;"> 
        <table width="100%;">
            <tr class="tdbg">
                <td colspan="2" style=" background:#CBE6FC; height:30px; line-height:30px; text-align:center; color:#185D84; font-weight:bold;">
                <span style=" display:none;"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>添加<%Call.Label("{ZL.Label id=\"根据节点ID输出节点名\"/}"); %></td>
            </tr>
            <tr class="tdbg">
                <td align="right" style=" width:20%;" class="tdbgleft">所属节点</td>
                <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft">内容标题</td>
                <td><asp:TextBox ID="txtTitle" runat="server" onblur="getstrKeys()" Text='' size="35" MaxLength="30"></asp:TextBox>
                <span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTitle">内容标题必填</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        </li>  
        <li style=" width:100%;">           
            <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>                   
        </li>
        <li style="width:100%; line-height: 30px; text-align:center">
        <asp:HiddenField ID="HdnNode" runat="server" />
        <asp:HiddenField ID="HdnModel" runat="server" />
        <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none"></asp:TextBox>
        <asp:Button ID="EBtnSubmit" Text="添加项目" OnClick="EBtnSubmit_Click" runat="server" class="i_bottom" />             
        <input type="button" id="BtnBack" class="i_bottom" value="返　回" onclick="javascript:location.href='MyContent.aspx?NodeID=<%=NodeID %>'" />
        </li>
    </ul>
</div>
</form>
</body>
</html>
