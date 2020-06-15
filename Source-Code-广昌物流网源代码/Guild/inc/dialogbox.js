var popdialog=new Object();

var ia="ia"; //背景层
var ic="ic"; //对话框id
var pop_msg="pop_content";
var pop_icon="pop_icon";
var pop_title="pop_title";


var sUserAgent=navigator.userAgent;
var isOpera=sUserAgent.indexOf("Opera")>-1;
var zIsIE=sUserAgent.indexOf("compatible")>-1 && sUserAgent.indexOf("MSIE")>-1 &&  (! isOpera);
var dd=zIsIE;//navigator.appVersion.toLowerCase().indexOf('msie')>=0;

var POSITION_CENTER=1;
var POSITION_CUSTOM=2;
var popdialog_position=POSITION_CENTER;
var popdialog_left=300;
var popdialog_top=200;

//得到id
function GO(al)
{
	if(document.getElementById)
	{
		return eval('document.getElementById("'+al+'")');
		
	}else if(document.layers)
	{
		return eval("document.layers['"+al+"']");
		
	}else 
	{
		return eval('document.all.'+al);
		
	}
}

var ci=0;
var cj=0;
var ck=0;
var cl=0;
var cm=true;
var cn=true; //显示在中心位置

//调整位置
function oO()
{
	var co=AL("Width");
	var cp=AL("Height");
	var cq=GO(ia);
	cq.style.height=((document.body.scrollHeight>cp)?document.body.scrollHeight:cp)+"px";
	cq.style.width=((document.body.scrollWidth>co)?document.body.scrollWidth:co)+"px";
	var cr=zgetScroll("Top");

	var ct=GO(ic);
	if(ct.style.display!="none")
	{
		if(cn)
		{
			ck=(cp-ct.offsetHeight)/2;
			cl=(co-ct.offsetWidth)/2;
		}AU(ic,cl,(cr+ck))
	}
}

//得到scrollTop scroolWidth
function zgetScroll(TL){
	var cv=0;
	if(document.documentElement&&document.documentElement.scrollTop)
	{
		cv=eval("document.documentElement.scroll"+TL);
		
	}else if(document.body)
	{
		cv=eval("document.body.scroll"+TL);
		
	}
	return cv;
}

//得到高度宽度
function AL(WH)
{
	var cv=0;
	if(self.innerWidth)
	{
		cv=eval("self.inner"+WH);
		
	}else if(document.documentElement&&document.documentElement.clientWidth)
	{
		cv=eval("document.documentElement.client"+WH);
		
	}else if(document.body)
	{
		cv=eval("document.body.client"+WH);
		
	}else 
	{
		cv=0;
		
	}return cv;
	
}

//显示xx和背景
function AM(myObj)
{
	GO(ia).style.display='block';
	GO(myObj).style.display='block';	
	document.getElementsByTagName('html')[0].style.overflow="hidden";	
	if (popdialog_position==POSITION_CUSTOM){  return }
	oO();
	
}
//隐藏xx和背景
function AN(myObj)
{
	GO(ia).style.display='none';
	GO(myObj).style.display='none';
	document.getElementsByTagName('html')[0].style.overflow="auto";
	
	
}

//显示信息
function AO(msg,closeFlag)
{
	GO(pop_msg).innerHTML=msg;
	AM(ic);
	var dispText=closeFlag?"block":"none";
	//GO("ig").style.display=dispText;
	GO(pop_icon).style.display=dispText;
}

var Obj=null;
var oX=0;
var oY=0;
function AQ(Object,evt)
{
	var evt=(evt)?evt:(window.event)?window.event:"";
	Obj=Object;
	oX=(dd)?evt.offsetX:AR(evt,Obj);
	oY=(dd)?evt.offsetY:AS(evt,Obj);

	document.body.onmousemove=function (event)
	{
		var event=(event)?event:(window.event)?window.event:"";	
		var dragObj = event.srcElement? event.srcElement : event.target;
		if (Obj!=null && (dragObj.id!="Image1") ) //.id==pop_title
		{
			try{document.selection.empty();	}catch (e){ try	{window.getSelection().removeAllRanges();}catch (e)	{}}
			if  (event.button?((event.button==1) || (event.button==1)):((event.which)?(event.which==1):false)) {
				var cz=event.clientX-oX; if (dd){cz+=zgetScroll("Left") ;}
				var da=event.clientY-oY; if (dd){da+=zgetScroll("Top") ;}
				AU(Obj,cz,da);
			}else{
				AT();
			}
		}
		else {
			AT();
		}
	}
	document.body.onmouseup=AT;
	
}
function AR(evt,Object)
{
	var cw=GO(Object);
	var cx=0;
	while(cw.offsetParent&&cw.tagName.toUpperCase()!="BODY")
	{
		cx+=cw.offsetLeft;
		cw=cw.offsetParent;
		
	}return evt.clientX-cx;
	
}
function AS(evt,Object)
{
	var cw=GO(Object);
	var cy=0;
	while(cw.offsetParent&&cw.tagName.toUpperCase()!="BODY")
	{
		cy+=cw.offsetTop;
		cw=cw.offsetParent;
		
	}return evt.clientY-cy;
	
}
function AT()
{
	if(Obj!=null)
	{
		if(Obj==ic)
		{
			ck=parseInt(GO(Obj).style.top.replace('px'))-zgetScroll("Top");
			cl=parseInt(GO(Obj).style.left.replace('px'))-zgetScroll("Left");
			
		}Obj=null;
		document.body.onmouseup=null;
		document.body.onmousemove=null;

		
	}
}
function AU(myObj,cz,da)
{
	if (popdialog_position==POSITION_CUSTOM){
		GO(myObj).style.left=cz+"px";
		GO(myObj).style.top=da+"px";
		if(Obj==ic)
		{
			ck=da;
			cl=cz;
			
		}		
	}else{	
		var db=zgetScroll("Left");
		var de=zgetScroll("Top");
		if(cz<db)cz=db;
		if(da<de)da=de;
		var df=AL("Width")-GO(myObj).offsetWidth+zgetScroll("Left");
		var dg=AL("Height")-GO(myObj).offsetHeight+zgetScroll("Top");
		if(cz>df)cz=df;
		if(da>dg)da=dg;
		GO(myObj).style.left=cz+"px";
		GO(myObj).style.top=da+"px";
		if(Obj==ic)
		{
			ck=da;
			cl=cz;
			
		}
	}
}



//按钮图片切换
function pop_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function pop_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=pop_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function pop_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=pop_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function pop_swapImage() { //v3.0
  var i,j=0,x,a=pop_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=pop_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
pop_preloadImages('/images/closeb02.gif');


/****************************************************
*  对话框调用层
*****************************************************/


	
	var pop_request=false;
	
	popdialog.ajax_params="";
	
	popdialog.position=POSITION_CENTER; //
	
	popdialog.suffix=false;
	
	popdialog.ajax=function(url , onajax_callback ,params)
	{	
			this.ajax_params="";
			if (! (typeof(params)=='undefined')  ){
				this.ajax_params=params;
			}
			if (popdialog.suffix) {
				if (url.indexOf("?")>-1){
					url+="&";
				}else{
					url+="?";
				}
				url+="&sessionrand5468723="+Math.random();
			}
			if(window.XMLHttpRequest)
			{
				pop_request=new XMLHttpRequest();												
				pop_request.onreadystatechange=this.bb;
				if ((typeof onajax_callback)=='function') {
					pop_request.onreadystatechange=onajax_callback;				
				}				
				pop_request.open("GET",url,true);
				pop_request.send(null);
				
			}else if(window.ActiveXObject)
			{
				dd=true;
				pop_request=new ActiveXObject("Microsoft.XMLHTTP");
				if(pop_request)
				{
					pop_request.onreadystatechange=this.bb;
					if ((typeof onajax_callback)=='function') {
						pop_request.onreadystatechange=onajax_callback;				
					}
					pop_request.open("GET",url,true);
					pop_request.send();					
				}
			}		
	}
	popdialog.showloading=function(w,h){
			this.$("pop_content").innerHTML='<div style="width:'+w+'px;height:'+h+'px"><img style="left:50%; top:40%; margin-left:-16px; margin-top:-16px;position:relative;"  src="/images/loading.gif" /></div>';	
	}
	
	
	popdialog.bb=function()
	{
		if(pop_request.readyState==4)
		{
			if(pop_request.status==200)
			{
				var innerHtml=pop_request.responseText;
				document.getElementById("pop_content").innerHTML=innerHtml;	
				pop_request=false;
			}else 
			{
				//this.showmessage("error"+this.req.statusText,true);
				
			}
		}
	}
	
	popdialog.$=function(objID) {
	  return document.getElementById(objID);
	}  
	
	popdialog.open=function(p_title,p_url,p_msg,p_width,p_height,p_closeFlag){
		var w=300;
		var h=200;
		if (p_width){w=p_width};
		if (p_height){h=p_height};   		
		this.$("ic").style.width=w+"px";
		this.$("icc").style.width=w+"px";		
		this.$("icc").style.height=h+"px";
		this.$("pop_title").innerHTML=p_title;
		if (p_url!=""){
			AO("",true);
			this.showloading(w,h);			
			this.ajax(p_url)
		}else{
			if (p_closeFlag==true){
				AO(p_msg,true);	
			}else{
				AO(p_msg,false);	
			}			
		}
		return false;
			
	}
	
	popdialog.close=function(callBackFunction){
		AN('ic');
		this.$("pop_title").innerHTML="";
		this.$("pop_content").innerHTML="";
		if (((typeof callBackFunction)=="function")){
			callBackFunction.call();
		}
	}
	
	popdialog.replaceMsg=function(url){
		this.ajax(url);
	}
	
	//Create html elements
	popdialog.createHtml = function(){
		if (!this.$("ia")) {
			var html = '<div class="gray_background" id="ia" style="DISPLAY: none; WIDTH: 100%; HEIGHT: 100%"><iframe style="position:absolute;visibility:inherit; top:0px; left:0px; width:100%; height:100%; z-index:-1;opacity:.0;filter: alpha( opacity=0 ); -moz-opacity: 0;"></iframe></div>';
				html += '<div class="pop_shadowbox"  style="width:590px;" id="ic" >';
					html += '<div class="pop_dlgbox" id="icc" style="width:600px;" > ';
		    			html += '<div id="pop_header"  onMouseDown="AQ(\'ic\',event)" class="poptitle">			';
							html += '<div id="pop_title" style="margin:0;font-size:14px;	font-weight: bold;" >对话框标题</div>';
							html += '<div class="close" id="pop_icon"><a href="javascript:void(0);" onclick="javascript:AN(\'ic\')" onMouseOut="pop_swapImgRestore()" onMouseOver="pop_swapImage(\'Image1\',\'\',\'/images/closeb02.gif\',1)"><img class="popcss_img" src="/images/closeb01.gif" name="Image1" width="17" height="17" border="0" id="Image1" /></a></div>';
						html += '</div>';
						html += '<div id="pop_content"></div>';	
					html += '</div>';
				html += '</div>';
			var tempDiv = document.createElement('div');
			tempDiv.innerHTML = html;
			var first = document.body.firstChild;
			var newChild = document.body.insertBefore(tempDiv.childNodes[1], first);
			document.body.insertBefore(tempDiv.childNodes[0], newChild);
		}
	}
	
	popdialog.openWithIframe=function(p_title,p_url,p_width,p_height,p_closeFlag){
		this.createHtml();
		var w=300;
		var h=200;		
		if (p_width){w=p_width};
		if (p_height){h=p_height};
		this.$("ic").style.width=w+"px";
		this.$("icc").style.width=w+"px";		
		this.$("icc").style.height=h+"px";
		this.$("pop_title").innerHTML=p_title;
		AO("",true);		
		var pop_iframe='<iframe id="pop_iframe_id" src="" width="'+(w-2)+'px"  height="'+(h-17)+'px" frameborder="0"></iframe>';
		this.$("pop_content").innerHTML=pop_iframe;	
		this.$("pop_iframe_id").src=p_url;
		
	}
	
	popdialog.openPicDialog=function(p_title,p_url,p_width,p_height)
	{
		var w=720;
		var h=610;
		//if (p_width){w=p_width};
		//if (p_height){h=p_height};
       	x = (window.screen.width - w) / 2;
       	y = (window.screen.height - h) / 2;
       	p_title= "title";   
       	parameters = ',menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=yes,resizable=yes';
       	w = window.open(p_url,p_title,'width='+w+',height='+h+',screenX='+x+',screenY='+y+',top='+y+',left='+x+parameters);
		w.focus();	
	}

	popdialog.setTitle=function(p_title){
		this.$("pop_title").innerHTML=p_title;
	}	
	
	popdialog.setPosition=function(p_position){
		this.position=p_position;
		popdialog_position=p_position;
	}
	
	popdialog.setDialogTopLeft=function(_top,_left){
		popdialog_left=_left;
		popdialog_top=_top;
		this.$("ic").style.left=popdialog_left+"px";
		this.$("ic").style.top=popdialog_top+"px";
	}
	
	//在指定位置打开窗口 
	popdialog.openWithIframe2=function(p_title,p_url,p_top,p_left,p_width,p_height,p_closeFlag){		
		popdialog.setPosition(POSITION_CUSTOM);
		popdialog.setDialogTopLeft(p_top,p_left);
		popdialog.openWithIframe(p_title,p_url,p_width,p_height,p_closeFlag);
		
	}
		

