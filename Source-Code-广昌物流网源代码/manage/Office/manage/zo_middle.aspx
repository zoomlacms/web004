<%@ page language="C#" autoeventwireup="true" inherits="OA_manage_zo_middle, App_Web_txjcnk32" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>Hello Zoomla!CMS</title>

    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
</head>
<script type="text/javascript">
var displayBar=true;
function switchBar(obj) {
if (displayBar) {
parent.frame2.cols='0,10,*';
obj.src='i/butOpen.gif';
obj.title='打开左边管理导航菜单';
displayBar=false; 
}else {
parent.frame2.cols='199,10,*';
obj.src='i/butClose.gif';
obj.title='关闭左边管理导航菜单';
displayBar=true;  
}
}
</script>
<body>
    <form id="form1" runat="server">
 <div><img onclick="switchBar(this);" src="i/butClose.gif" style="display:blcok;	cursor:pointer;" title="关闭左边管理导航菜单" /></div>
    </form>
</body>
</html>
