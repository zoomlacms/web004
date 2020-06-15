
var tPrev;

var ttbPrev;

function them(time,obj){

	if(tPrev==null){

		tPrev=document.getElementById("tbt").getElementsByTagName("li")[0]

	}

	if(ttbPrev==null){

		ttbPrev=document.getElementById("ttb").getElementsByTagName("div")[0]

	}

	tPrev.className="";	

	ttbPrev.style.display="none";

	obj.className="topnav_01_";

	document.getElementById(time).style.display="block";

	tPrev=obj;

	ttbPrev=document.getElementById(time);

}

<!--- 分公司培训下拉导航 首页 --->

 var onecount; 
  onecount=0; 
  subcat = new Array(); 
  subcat[0] = new Array("合肥分公司","01","http://hefei.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[1] = new Array("北京分公司","02","http://beijing.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[2] = new Array("重庆分公司","03","http://chongqing.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[3] = new Array("厦门分公司","04","http://xiamen.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[4] = new Array("福州分公司","04","http://fuzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[5] = new Array("泉州分公司","04","http://quanzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[6] = new Array("广州分公司","05","http://guangzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[7] = new Array("深圳分公司","05","http://shenzhen.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[8] = new Array("惠州分公司","05","http://huizhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[9] = new Array("汕头分公司","05","http://shantou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[10] = new Array("龙岗分公司","05","http://longgang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[11] = new Array("宝安分公司","05","http://baoan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[12] = new Array("东莞分公司","05","http://dongguan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[13] = new Array("虎门分公司","05","http://humen.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[14] = new Array("佛山分公司","05","http://foshan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[15] = new Array("顺德分公司","05","http://shunde.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[16] = new Array("中山分公司","05","http://zhongshan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[17] = new Array("江门分公司","05","http://jiangmen.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[18] = new Array("珠海分公司","05","http://zhuhai.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[19] = new Array("樟木头分公司","05","http://zhangmutou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[20] = new Array("南宁分公司","06","http://nanning.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[21] = new Array("贵阳分公司","07","http://guiyang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[22] = new Array("长沙分公司","08","http://changsha.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[23] = new Array("武汉分公司","09","http://wuhan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[24] = new Array("宜昌分公司","09","http://yichang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[25] = new Array("襄樊分公司","09","http://xiangfan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[26] = new Array("郑州分公司","10","http://zhengzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[27] = new Array("洛阳分公司","10","http://luoyang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html"); 
  subcat[28] = new Array("石家庄分公司","11","http://shijiazhuang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[29] = new Array("唐山分公司","11","http://tangshan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[30] = new Array("保定分公司","11","http://baoding.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[31] = new Array("哈尔滨分公司","12","http://haerbin.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[32] = new Array("南京分公司","13","http://nanjing.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[33] = new Array("常州分公司","13","http://changzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[34] = new Array("无锡分公司","13","http://wuxi.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[35] = new Array("南通分公司","13","http://nantong.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[36] = new Array("江阴分公司","13","http://jiangyin.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[37] = new Array("扬州分公司","13","http://yangzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[38] = new Array("苏州分公司","13","http://suzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[39] = new Array("昆山分公司","13","http://kunshan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[40] = new Array("张家港分公司","13","http://zhangjiagang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[41] = new Array("徐州分公司","13","http://xuzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[42] = new Array("长春分公司","14","http://changchun.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[43] = new Array("南昌分公司","15","http://nanchang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[44] = new Array("大连分公司","16","http://dalian.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[45] = new Array("沈阳分公司","16","http://shenyang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[46] = new Array("锦州分公司","16","http://jinzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[47] = new Array("包头分公司","17","http://baotou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[48] = new Array("浦东分公司","18","http://shanghaipd.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[49] = new Array("浦西分公司","18","http://shanghaipx.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[50] = new Array("青岛分公司","19","http://qingdao.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[51] = new Array("济南分公司","19","http://jinan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[52] = new Array("烟台分公司","19","http://yantai.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[53] = new Array("威海分公司","19","http://weihai.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[54] = new Array("淄博分公司","19","http://zibo.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[55] = new Array("潍坊分公司","19","http://weifang.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[56] = new Array("临沂分公司","19","http://linyi.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[57] = new Array("东营分公司","19","http://dongying.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[58] = new Array("太原分公司","20","http://taiyuan.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[59] = new Array("成都分公司","21","http://chengdu.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[60] = new Array("西安分公司","22","http://xian.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[61] = new Array("天津分公司","23","http://tianjin.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[62] = new Array("昆明分公司","24","http://kunming.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[63] = new Array("杭州分公司","25","http://hangzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[64] = new Array("宁波分公司","25","http://ningbo.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[65] = new Array("金华分公司","25","http://jinhua.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[66] = new Array("义乌分公司","25","http://yiwu.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[67] = new Array("嘉兴分公司","25","http://jiaxing.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[68] = new Array("绍兴分公司","25","http://shaoxing.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[69] = new Array("温州分公司","25","http://wenzhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
  subcat[70] = new Array("台州分公司","25","http://taizhou.ce.net.cn/newEbiz1/EbizPortalFG/portal/html/pxzq.html");
onecount=71; 
function redirect(locationid){ 
document.myform.smalllocation.length = 0; 
var locationid=locationid; 
var i; 
document.myform.smalllocation.options[0] = new Option('请选择分公司...',''); 
for (i=0;i < onecount; i++){ 
if (subcat[i][1] == locationid){ 
document.myform.smalllocation.options[document.myform.smalllocation.length] = new Option(subcat[i][0], subcat[i][2]); }}} 
  //--> 
  
<!--- 首页下方 栏目切换 --->

<!-- 
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
// -->
 
function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}
 
function MM_showHideLayers() { //v3.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->



<!--- 分公司服务网络下拉导航 --->

<!-- 
 


  var onecount2; 
  onecount2=0; 
  subcat2 = new Array(); 
   subcat2[0] = new Array("合肥分公司","01","http://hefei.ce.net.cn"); 
  subcat2[1] = new Array("北京分公司","02","http://beijing.ce.net.cn"); 
  subcat2[2] = new Array("重庆分公司","03","http://chongqing.ce.net.cn"); 
  subcat2[3] = new Array("厦门分公司","04","http://xiamen.ce.net.cn"); 
  subcat2[4] = new Array("福州分公司","04","http://fuzhou.ce.net.cn"); 
  subcat2[5] = new Array("泉州分公司","04","http://quanzhou.ce.net.cn"); 
  subcat2[6] = new Array("广州分公司","05","http://guangzhou.ce.net.cn"); 
  subcat2[7] = new Array("深圳分公司","05","http://shenzhen.ce.net.cn"); 
  subcat2[8] = new Array("惠州分公司","05","http://huizhou.ce.net.cn"); 
  subcat2[9] = new Array("汕头分公司","05","http://shantou.ce.net.cn"); 
  subcat2[10] = new Array("龙岗分公司","05","http://longgang.ce.net.cn"); 
  subcat2[11] = new Array("宝安分公司","05","http://baoan.ce.net.cn"); 
  subcat2[12] = new Array("东莞分公司","05","http://dongguan.ce.net.cn"); 
  subcat2[13] = new Array("虎门分公司","05","http://humen.ce.net.cn"); 
  subcat2[14] = new Array("佛山分公司","05","http://foshan.ce.net.cn"); 
  subcat2[15] = new Array("顺德分公司","05","http://shunde.ce.net.cn"); 
  subcat2[16] = new Array("中山分公司","05","http://zhongshan.ce.net.cn"); 
  subcat2[17] = new Array("江门分公司","05","http://jiangmen.ce.net.cn"); 
  subcat2[18] = new Array("珠海分公司","05","http://zhuhai.ce.net.cn"); 
  subcat2[19] = new Array("樟木头分公司","05","http://zhangmutou.ce.net.cn"); 
  subcat2[20] = new Array("南宁分公司","06","http://nanning.ce.net.cn"); 
  subcat2[21] = new Array("贵阳分公司","07","http://guiyang.ce.net.cn"); 
  subcat2[22] = new Array("长沙分公司","08","http://changsha.ce.net.cn"); 
  subcat2[23] = new Array("武汉分公司","09","http://wuhan.ce.net.cn"); 
  subcat2[24] = new Array("宜昌分公司","09","http://yichang.ce.net.cn"); 
  subcat2[25] = new Array("襄樊分公司","09","http://xiangfan.ce.net.cn"); 
  subcat2[26] = new Array("郑州分公司","10","http://zhengzhou.ce.net.cn"); 
  subcat2[27] = new Array("洛阳分公司","10","http://luoyang.ce.net.cn"); 
  subcat2[28] = new Array("石家庄分公司","11","http://shijiazhuang.ce.net.cn");
  subcat2[29] = new Array("唐山分公司","11","http://tangshan.ce.net.cn");
  subcat2[30] = new Array("保定分公司","11","http://baoding.ce.net.cn");
  subcat2[31] = new Array("哈尔滨分公司","12","http://haerbin.ce.net.cn");
  subcat2[32] = new Array("南京分公司","13","http://nanjing.ce.net.cn");
  subcat2[33] = new Array("常州分公司","13","http://changzhou.ce.net.cn");
  subcat2[34] = new Array("无锡分公司","13","http://wuxi.ce.net.cn");
  subcat2[35] = new Array("南通分公司","13","http://nantong.ce.net.cn");
  subcat2[36] = new Array("江阴分公司","13","http://jiangyin.ce.net.cn");
  subcat2[37] = new Array("扬州分公司","13","http://yangzhou.ce.net.cn");
  subcat2[38] = new Array("苏州分公司","13","http://suzhou.ce.net.cn");
  subcat2[39] = new Array("昆山分公司","13","http://kunshan.ce.net.cn");
  subcat2[40] = new Array("张家港分公司","13","http://zhangjiagang.ce.net.cn");
  subcat2[41] = new Array("徐州分公司","13","http://xuzhou.ce.net.cn");
  subcat2[42] = new Array("长春分公司","14","http://changchun.ce.net.cn");
  subcat2[43] = new Array("南昌分公司","15","http://nanchang.ce.net.cn");
  subcat2[44] = new Array("大连分公司","16","http://dalian.ce.net.cn");
  subcat2[45] = new Array("沈阳分公司","16","http://shenyang.ce.net.cn");
  subcat2[46] = new Array("锦州分公司","16","http://jinzhou.ce.net.cn");
  subcat2[47] = new Array("包头分公司","17","http://baotou.ce.net.cn");
  subcat2[48] = new Array("浦东分公司","18","http://shanghaipd.ce.net.cn");
  subcat2[49] = new Array("浦西分公司","18","http://shanghaipx.ce.net.cn");
  subcat2[50] = new Array("青岛分公司","19","http://qingdao.ce.net.cn");
  subcat2[51] = new Array("济南分公司","19","http://jinan.ce.net.cn");
  subcat2[52] = new Array("烟台分公司","19","http://yantai.ce.net.cn");
  subcat2[53] = new Array("威海分公司","19","http://weihai.ce.net.cn");
  subcat2[54] = new Array("淄博分公司","19","http://zibo.ce.net.cn");
  subcat2[55] = new Array("潍坊分公司","19","http://weifang.ce.net.cn");
  subcat2[56] = new Array("临沂分公司","19","http://linyi.ce.net.cn");
  subcat2[57] = new Array("东营分公司","19","http://dongying.ce.net.cn");
  subcat2[58] = new Array("太原分公司","20","http://taiyuan.ce.net.cn");
  subcat2[59] = new Array("成都分公司","21","http://chengdu.ce.net.cn");
  subcat2[60] = new Array("西安分公司","22","http://xian.ce.net.cn");
  subcat2[61] = new Array("天津分公司","23","http://tianjin.ce.net.cn");
  subcat2[62] = new Array("昆明分公司","24","http://kunming.ce.net.cn");
  subcat2[63] = new Array("杭州分公司","25","http://hangzhou.ce.net.cn");
  subcat2[64] = new Array("宁波分公司","25","http://ningbo.ce.net.cn");
  subcat2[65] = new Array("金华分公司","25","http://jinhua.ce.net.cn");
  subcat2[66] = new Array("义乌分公司","25","http://yiwu.ce.net.cn");
  subcat2[67] = new Array("嘉兴分公司","25","http://jiaxing.ce.net.cn");
  subcat2[68] = new Array("绍兴分公司","25","http://shaoxing.ce.net.cn");
  subcat2[69] = new Array("温州分公司","25","http://wenzhou.ce.net.cn");
  subcat2[70] = new Array("台州分公司","25","http://taizhou.ce.net.cn");
  onecount2=71; 
function redirects(locationid2){ 
document.myform2.smalllocation2.length = 0; 
var locationid2=locationid2; 
var s; 
document.myform2.smalllocation2.options[0] = new Option('请选择分公司...',''); 
for (s=0;s < onecount2; s++){ 
if (subcat2[s][1] == locationid2){ 
document.myform2.smalllocation2.options[document.myform2.smalllocation2.length] = new Option(subcat2[s][0], subcat2[s][2]); }}} 
  //--> 


<!--- 首页案例--颜色风格 --->

<!-- 
 

  var onecount3; 
  onecount3=0; 
  subcat3 = new Array(); 
   subcat3[0] = new Array("黑色","01","cases_1.html?pId=3&sId=3"); 
  subcat3[1] = new Array("灰色","01","cases_11.html?pId=3&sId=3"); 
  subcat3[2] = new Array("紫红色","01","cases_12.html?pId=3&sId=3"); 
  subcat3[3] = new Array("黄色","01","cases.html_13?pId=3&sId=3"); 
  subcat3[4] = new Array("澄色","01","cases.html_14?pId=3&sId=3"); 
  subcat3[5] = new Array("黄色","02","casesf_1.html?pId=3&sId=3"); 
  subcat3[6] = new Array("灰色","02","cases_1.html?pId=3&sId=3"); 
  subcat3[7] = new Array("黑色","03","cases_fw.html?pId=3&sId=3"); 
  subcat3[8] = new Array("黄色","03","cases_fw.html?pId=3&sId=3"); 
  subcat3[9] = new Array("黑色","04","cases_other1.html?pId=3&sId=3"); 
  subcat3[10] = new Array("黄色","04","cases_other2.html?pId=3&sId=3"); 
  subcat3[11] = new Array("灰色","04","cases_other3.html?pId=3&sId=3"); 
  subcat3[12] = new Array("蓝色","04","cases_other3.html?pId=3&sId=3"); 
  subcat3[13] = new Array("澄色","04","cases_other4.html?pId=3&sId=3"); 
  onecount3=14; 
function redirecta(locationid3){ 
document.myform3.smalllocation3.length = 0; 
var locationid3=locationid3; 
var a; 
document.myform3.smalllocation3.options[0] = new Option('请选择颜色风格...',''); 
for (a=0;a < onecount3; a++){ 
if (subcat3[a][1] == locationid3){ 
document.myform3.smalllocation3.options[document.myform3.smalllocation3.length] = new Option(subcat3[a][0], subcat3[a][2]); }}} 
  //--> 

<!--flash--->
function writeflashhtml( arg )

{

var parm = []

var _default_version = "8,0,24,0";

var _default_quality = "high";

var _default_align = "middle";

var _default_menu = "false";



for(i = 0; i < arguments.length; i ++)

{

parm[i] = arguments[i].split(' ').join('').split('=')

for (var j = parm[i].length-1; j > 1; j --){

parm[i][j-1]+="="+parm[i].pop();

}

switch (parm[i][0])

{

case '_version' : var _version = parm[i][1] ; break ; 

case '_swf' : var _swf = parm[i][1] ; break ; 

case '_base' : var _base = parm[i][1] ; break ; 

case '_quality' : var _quality = parm[i][1] ; break ; 

case '_loop' : var _loop = parm[i][1] ; break ; 

case '_bgcolor' : var _bgcolor = parm[i][1] ; break ; 

case '_wmode' : var _wmode = parm[i][1] ; break ; 

case '_play' : var _play = parm[i][1] ; break ; 

case '_menu' : var _menu = parm[i][1] ; break ; 

case '_scale' : var _scale = parm[i][1] ; break ; 

case '_salign' : var _salign = parm[i][1] ; break ; 

case '_height' : var _height = parm[i][1] ; break ; 

case '_width' : var _width = parm[i][1] ; break ; 

case '_hspace' : var _hspace = parm[i][1] ; break ; 

case '_vspace' : var _vspace = parm[i][1] ; break ; 

case '_align' : var _align = parm[i][1] ; break ; 

case '_class' : var _class = parm[i][1] ; break ; 

case '_id' : var _id = parm[i][1] ; break ; 

case '_name' : var _name = parm[i][1] ; break ; 

case '_style' : var _style = parm[i][1] ; break ; 

case '_declare' : var _declare = parm[i][1] ; break ; 

case '_flashvars' : var _flashvars = parm[i][1] ; break ; 

default :;

}

}

var thtml = ""

thtml += "<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=" + ((_version)?_version:_default_version) + "'"

if(_width) thtml += " width='" + _width + "'"

if(_height) thtml += " height='" + _height + "'"

if(_hspace) thtml += " hspace='" + _hspace + "'"

if(_vspace) thtml += " vspace='" + _vspace + "'"

if(_align) thtml += " align='" + _align + "'"

else thtml += " align='" + _default_align + "'"

if(_class) thtml += " class='" + _class + "'"

if(_id) thtml += " id='" + _id + "'"

if(_name) thtml += " name='" + _name + "'"

if(_style) thtml += " style='" + _style + "'"

if(_declare) thtml += " " + _declare

thtml += ">"

if(_swf) thtml += "<param name='movie' value='" + _swf + "'>"

if(_quality) thtml += "<param name='quality' value='" + _quality + "'>" 

else thtml += "<param name='quality' value ='" + _default_quality + "'>"

if(_loop) thtml += "<param name='loop' value='" + _loop + "'>"

if(_bgcolor) thtml += "<param name='bgcolor' value='" + _bgcolor + "'>"

if(_play) thtml += "<param name='play' value='" + _play + "'>"

if(_menu) thtml += "<param name='menu' value='" + _menu + "'>"

else thtml += "<param name='menu' value='" + _default_menu + "'>"

if(_scale) thtml += "<param name='scale' value='" + _scale + "'>"

if(_salign) thtml += "<param name='salign' value='" + _salign + "'>"

if(_wmode) thtml += "<param name='wmode' value='" + _wmode + "'>"

if(_base) thtml += "<param name='base' value='" + _base + "'>"

if(_flashvars) thtml += "<param name='flashvars' value='" + _flashvars + "'>"

thtml += "<embed pluginspage='http://www.macromedia.com/go/getflashplayer'"

if(_width) thtml += " width='" + _width + "'"

if(_height) thtml += " height='" + _height + "'"

if(_hspace) thtml += " hspace='" + _hspace + "'"

if(_vspace) thtml += " vspace='" + _vspace + "'"

if(_align) thtml += " align='" + _align + "'"

else thtml += " align='" + _default_align + "'"

if(_class) thtml += " class='" + _class + "'"

if(_id) thtml += " id='" + _id + "'"

if(_name) thtml += " name='" + _name + "'"

if(_style) thtml += " style='" + _style + "'"

thtml += " type='application/x-shockwave-flash'"

if(_declare) thtml += " " + _declare 

if(_swf) thtml += " src='" + _swf + "'"

if(_quality) thtml += " quality='" + _quality + "'"

else thtml += " quality='" + _default_quality + "'"

if(_loop) thtml += " loop='" + _loop + "'"

if(_bgcolor) thtml += " bgcolor='" + _bgcolor + "'"

if(_play) thtml += " play='" + _play + "'"

if(_menu) thtml += " menu='" + _menu + "'"

else thtml += " menu='" + _default_menu + "'"

if(_scale) thtml += " scale='" + _scale + "'"

if(_salign) thtml += " salign='" + _salign + "'"

if(_wmode) thtml += " wmode='" + _wmode + "'"

if(_base) thtml += " base='" + _base + "'"

if(_flashvars) thtml += " flashvars='" + _flashvars + "'"

thtml += "></embed>"

thtml += "</object>"

document.write(thtml)

}



//

//طֹ˾뿪ʼ

function PageQuery(q){if(q.length>1) this.q=q.substring(1,q.length);else this.q=null;this.keyValuePairs=new Array();if(q){var ar=this.q.split("&");for(var i=0;i<ar.length;i+=1){this.keyValuePairs[i]=ar[i];}}this.getKeyValuePairs = function(){return this.keyValuePairs;};this.getValue = function(s) {for(var j=0; j < this.keyValuePairs.length; j++) {var ar1=this.keyValuePairs[j].split("=");if(ar1[0] == s)return ar1[1];}return false;};}



var floatfd = null;function moreddshow() {vl = document.getElementById('vslist');vm = document.getElementById('vsearchmore');if( floatfd != null ){clearTimeout(floatfd);floatfd = null;}vm.href="javascript:void(0);";vl.style.display = 'block';vm.className='on';return false;}function moreddout(){if( floatfd == null ){floatfd = setTimeout( moreddhide, 300 );}}function moreddhide(){vl = document.getElementById('vslist');vm = document.getElementById('vsearchmore');if( vl && vm ){vl.style.display = 'none';vm.className='';}}



var floatfd2 = null;function moreddshowa() {vl2 = document.getElementById('vslist2');vm2 = document.getElementById('vsearchmore2');if( floatfd2 != null ){clearTimeout(floatfd2);floatfd2 = null;}vm2.href="javascript:void2(0);";vl2.style.display = 'block';vm2.className='on';return false;}function moreddouta(){if( floatfd2 == null ){floatfd2 = setTimeout( moreddhidea, 300 );}}function moreddhidea(){vl2 = document.getElementById('vslist2');vm2 = document.getElementById('vsearchmore2');if( vl2 && vm2 ){vl2.style.display = 'none';vm2.className='';}}//طֹ˾

//



var floatfd3 = null;function moreddshowb() {vl3 = document.getElementById('vslist3');vm3 = document.getElementById('vsearchmore3');if( floatfd3 != null ){clearTimeout(floatfd3);floatfd3 = null;}vm3.href="javascript:void3(0);";vl3.style.display = 'block';vm3.className='on';return false;}function moreddouta(){if( floatfd3 == null ){floatfd3 = setTimeout( moreddhideb, 300 );}}function moreddhideb(){vl3 = document.getElementById('vslist3');vm3 = document.getElementById('vsearchmore3');if( vl3 && vm3 ){vl3.style.display = 'none';vm3.className='';}}//طֹ˾
