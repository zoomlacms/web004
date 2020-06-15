<%@ page language="C#" autoeventwireup="true" inherits="User_Main, App_Web_aovcpxcb" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function Load(r1, r2) {
    parent.document.getElementById("left").src = r1;
    parent.document.getElementById("main_right").src = r2;
}

function goforum_program() {
    Load('Content/ContentLeft.aspx', '../manage/AddOn/ProjectsList.aspx')
    Showtib(1);
}

function goforum_myinifo0_2() {
    Load('Left.aspx', 'MySubscription.aspx')
    Showtib(0);
}

function goforum_myinfo0_4() {
    Load('Left.aspx', 'Info/UserInfo.aspx')
    Showtib(0);
}

function goforum_contentmanage1_6() {
    Load('Content/ContentLeft.aspx', '/User/Content/MyContent.aspx?NodeID=14')
    Showtib(1);
}

function goforum_contentmanage1_15() {
    Load('Content/ContentLeft.aspx', '/user/iServer/FiServer.aspx')
    Showtib(1);
}

function goforum_contentmanage1_16() {
    Load('Content/ContentLeft.aspx', '../CN/nite/Content/ResumeManage.aspx')
    Showtib(1);
}

function goforum_shop2_1() {
    Load('Sera_shopLeft.aspx', 'PreViewOrder.aspx?menu=Cartinfo')
    Showtib(2);
}

function goforum_shop2_3() {
    Load('Left.aspx', 'Info/listprofit.aspx')
    Showtib(2);
}

function goforum_shop2_7() {
    Load('Sera_shopLeft.aspx', 'Info/DredgeVip.aspx')
    Showtib(2);
}

function goforum_shop2_11() {
    Load('Sera_shopLeft.aspx', 'CashCoupon/ArriveManage.aspx')
    Showtib(2);
}

function goforum_shop2_12() {
    Load('Sera_shopLeft.aspx', 'Info/DredgeVip.aspx')
    Showtib(2);
}

function goforum_interaction3_13() {
    Load('Guild/CommunityLeft.aspx', 'UserZone/Default.aspx')
    Showtib(3);
}

function goforum_interaction3_17() {
    Load('Guild/CommunityLeft.aspx', 'Survey/SurveyAll.aspx')
    Showtib(3);
}

function goforum_mycollection4_10() {
    Load('UserShop/ShopLeft.aspx', '../Space/SpaceManage.aspx')
    Showtib(4);
}

function goforum_mycollection5_5() {
    Load('StationGuid.aspx', '/manage/iServer/FiServer.aspx')
    Showtib(5);
}

function goforum_mycollection5_8() {
    Load('StationGuid.aspx', 'Pages/Default.aspx')
    Showtib(5);
}

function goForumFlex() {
    Load('Sera_shopLeft.aspx', 'PrintServer/ImageList.aspx');
}

function Showtib(num) {
    for (var i = 0; i < 6; i++) {
        if (i == num) {
            parent.document.getElementById("_Menu_" + num).className = "liOver";
         }
         else {
            parent.document.getElementById("_Menu_" + i).className = "liOut";
        }
    }
}
</script>
<style type="text/css">
body{ color:#333}
.info li{ line-height:25px;}
.usergg{margin: 20px 0pt; border: 1px solid #ccc; padding: 10px 20px; background-color:#EFEFEF; line-height:25px}
.usergg h1{ text-align:center; font-size:18px; color:#9F821D}
.bank li{ line-height:20px}
.bank span{ line-height:30px; font-weight:bold}

.FormWrap {  border:1px solid #D5D5D5; background:#f0f0f0; padding:7px; }
.division { background:#fff; border:1px solid #E1E1E1; padding:7px; margin-bottom:7px; display:block; overflow:hidden; }
ul.list { margin:10px 0; }
ul.list li { background:url(/skin/shop/images/ra.gif) no-repeat 0 8px; padding-left:15px; color:#666; display:block; border-bottom:1px solid #efefef; line-height:25px;  }
.news li{ width:345px; float:left}
.span_4{ float:left; margin-right:10px;width:150px}
.font16px{font-size:16px;}
.fontcolorOrange {color:#f90;}
.fontcolorRed{ color:#c00}
.FormWrap h3{ line-height:30px;}
.xx{ background:#f4f4f4;}
</style>
</head>

<body>
<form id="form1" runat="server">
<div id="wrap">
<div class="FormWrap">
<h3>最新车源信息</h3>
<div class="division">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" style=" text-align:center;">
    	<tr style=" height:30px; background:#e6e4e4;">
        	<th width="10%">货车类型</th>
            <th width="15%">出发地</th>
            <th width="15%">目的地</th>
            <th width="45%">介绍</th>
            <th width="15%">发车时间</th>
        </tr>
        <%Call.Label(" {ZL.Label id=\"最新车源货源信息\" NodeID=\"14\" ShowNum=\"8\" /}"); %>
    </table>
</div>
<h3>最新货源信息</h3>
<div class="division">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" style=" text-align:center;">
    	<tr style=" height:30px; background:#e6e4e4;">
        	<th width="10%">货物类型</th>
            <th width="15%">出发地</th>
            <th width="15%">目的地</th>
            <th width="45%">介绍</th>
            <th width="15%">发车时间</th>
        </tr>
        <%Call.Label(" {ZL.Label id=\"最新车源货源信息\" NodeID=\"15\" ShowNum=\"8\" /}"); %>
    </table>
</div>
</div>
</div>
<div style=" display:none;"><asp:Label ID="lblexp" runat='server' Visible="false"></asp:Label></div>
</form>
</body>
</html>