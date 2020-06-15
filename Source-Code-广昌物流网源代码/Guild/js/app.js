function xHTTP(){var a=null;if(window.ActiveXObject){a=new ActiveXObject("Msxml2.XMLHTTP");if(!a){a=new ActiveXObject("Microsoft.XMLHTTP")}}else if(window.XMLHttpRequest){a=new XMLHttpRequest()}return a}
var asp="manage/save.aspx";
//初始化一些变量
if(Browser.isMozilla)
{
	Event.prototype.__defineGetter__("srcElement", function () {
		var node = this.target;
		while (node.nodeType != 1) node = node.parentNode;
		return node;
	});
}
var aF=navigator.userAgent.indexOf("Safari")>=0;
var area_ary = [];//左中右三块集合的数组,left(左),center(中),right(右)
var cur_block=null;  //当前移动的块的复制品，中间作用
var ap = 0;
var block={ //初始化一个块
	"obj":null,
	"init":function(_block_head){
		_block_head.style.cursor = "move";
		_block_head.onmousedown=block.start;
		if(isNaN(parseInt(setBlockCSS().style.left)))
			setBlockCSS().style.left="0px";
		if(isNaN(parseInt(setBlockCSS().style.top)))
			setBlockCSS().style.top="0px";
	},
	"start":function(window_event){
		var _block=block.obj=this;
		window_event=block.fixE(window_event);
		if(window_event.srcElement!=this)
		{
			var t_block_id = this.id.split("_")[0];
			switch(window_event.srcElement.id)
			{
				case t_block_id+"_minimize":
					minimize(t_block_id,true);
					window_event.srcElement.style.display="none";
					_gObj(t_block_id+"_resume").style.display="inline";
					break;
				case t_block_id+"_resume":
					minimize(t_block_id,false);
					window_event.srcElement.style.display="none";
					_gObj(t_block_id+"_minimize").style.display="inline";
					break;
				case t_block_id+"_close":
					_del(t_block_id,null);
					break;
				default:
			}
			return;
		}
		var _block_top=parseInt(setBlockCSS().style.top);
		var _block_left=parseInt(setBlockCSS().style.left);
		_block.onDragStart(_block_top,_block_left,window_event.clientX,window_event.clientY);
		_block.lastMouseX=window_event.clientX;
		_block.lastMouseY=window_event.clientY;
		
		document.onmousemove=block.drag;
		document.onmouseup=block.end;
		return false
	},
	"drag":function(window_event){
		window_event=block.fixE(window_event);
		var _block=block.obj;
		var _block_y=window_event.clientY;
		var _block_x=window_event.clientX;
		var _block_top=parseInt(setBlockCSS().style.top);
		var _block_left=parseInt(setBlockCSS().style.left);
		var af,ag;
		af=_block_left+_block_x-_block.lastMouseX;
		ag=_block_top+_block_y-_block.lastMouseY;
		setBlockCSS().style.left=af+"px";
		setBlockCSS().style.top=ag+"px";
		_block.lastMouseX=_block_x;
		_block.lastMouseY=_block_y;
		_block.onDrag(af,ag,window_event.clientX,window_event.clientY);
		return false
	},
	"end":function(){
		document.onmousemove=null;
		document.onmouseup=null;
		block.obj.onDragEnd(parseInt(setBlockCSS().style.left),parseInt(setBlockCSS().style.top));
		block.obj=null
	},
	"fixE":function(window_event){
		if(typeof window_event=="undefined")
			window_event=window.event;
		if(typeof window_event.layerX=="undefined")
			window_event.layerX=window_event.offsetX;
		if(typeof window_event.layerY=="undefined")
			window_event.layerY=window_event.offsetY;
		return window_event
	}
}

function setSHP(bn)
{
	try
	{
		var cf = eval(bn+"_setDisplay()");
		eval(cf); //调用模块显示调整函数
	}
	catch(e)
	{
		//alert(e.description);
	}
}

function setBRP(bn)
{
	//alert("setBRP:"+bn + " " +_gObj(bn+"_head").offsetWidth);
	try
	{
		var cf = eval(bn+"_resizePlayer");
		cf(_gObj(bn+"_head").offsetWidth); //调用模块显示调整函数
	}
	catch(e)
	{
		//alert(e.description);
	}
}

function setMoveBlock(af,ag)
{
	clearInterval(ap);
	var src_block=this.module;
	var src_block_title = this.modulet;
	setOffset(src_block);
	src_block.origNextSibling=src_block.nextSibling;
	var _block=setBlockCSS();
	with(_block.style)
	{
		left=getOffset(src_block,true);
		top=getOffset(src_block,false);
		height=src_block.offsetHeight;
		width=src_block.offsetWidth;
		display="block";
		filter="alpha(opacity=20)";
	}
	
	setSHP(this.module.id); //模块显示调整
	//_block.innerHTML=src_block.innerHTML;  
	_block.innerHTML= "<div class='outside'><h5>"+src_block.childNodes[0].innerHTML+"</h5></div>";
	_block.className=src_block.className;
	this.dragged=false
}

function dragBlock(af,ag)
{
	aG(this.module,af,ag);
	this.dragged=true
}

function endDragBlock(af,ag)
{
	if(this.dragged)
	{
		setBlockCSS().style.width = this.module.offsetWidth;
		setBlockCSS().style.height = this.module.offsetHeight;
		ap=aD(this.module,150,3);
	}
	else
	{
		setBlockCSS().style.display="none"; //关闭复制的块
	}
	this.dragged=false;
	setBRP(this.module.id); //模块显示调整
	if(this.module.nextSibling!=this.module.origNextSibling) aI();//如果位置有改变向服务器发送改变信息
}
//--------
function hbar()
{
	_gObj("barHide").style.display="";
	_gObj("barTop").style.display="none";
}
function sbar()
{
	_gObj("barHide").style.display="none";
	_gObj("barTop").style.display="";
}
function highLight(obj)
{
	var o = (obj!=null)?obj:this;
	o.title = "点击修改";
	with(o.style)
	{
		backgroundColor = "#FFFFFF";
		//border = "1px dashed #0099ff";
		cursor= "pointer";
	}
}

function unHighLight(obj)
{
	var o = (obj!=null)?obj:this;
	o.title = "";
	with(o.style)
	{
		backgroundColor = "transparent";
		//border = "0px";
	}
}

function SearchEvent() //搜索事件对象
{
	//IE
	if(document.all)
		return window.event;
		
	func=SearchEvent.caller;
	while(func!=null)
	{
		var arg0=func.arguments[0];
		if(arg0)
		{
			if(arg0.constructor==Event)
				return arg0;
		}
		func=func.caller;
	}
	return null;
}

function mt_key(obj)
{
	evt = SearchEvent();
	if(evt.keyCode==13)
	{
		obj.blur();
		unHighLight(obj.parentNode);
	}
	if(evt.keyCode==27)
	{
		obj.value = obj.parentNode.old_value;
		obj.blur();
		unHighLight(obj.parentNode);
	}
}

function cancelModuleTitle(obj)
{
	obj.innerHTML = obj.old_value.escapeForXML();
	o.onclick = changeModuleTitle;
}

function saveModuleTitle(obj_id, n_v)
{
	//alert(obj_id + " " + o_v+ " " + n_v);
	var o = _gObj(obj_id);
	//o.style.padding = "4px";
	if (n_v=="") n_v = o.old_value.escapeForXML();
	o.innerHTML = n_v.escapeForXML();
	o.onclick = changeModuleTitle;
	
	if (n_v!= o.old_value)
	{
		loading('open');
		switch(obj_id)
		{
			case "m_title1":
			case "m_title2":
				_sendx(asp+"?act=edittitle&title="+n_v+"&block="+obj_id,function (par,return_v){ loading('close'); if(par=="m_title1") document.title=n_v+ " - 游就游吧 WWW.U9U8.COM"; },obj_id);
				break;
			
			default:
				_sendx(asp+"?act=edittitle&title="+n_v+"&block="+obj_id.split("_")[0],reModuleTitle,obj_id);
		}
	}
}

function changeModuleTitle(obj)
{
	//alert(this.id);
	//this.style.padding = "0px";
	var o = (obj!=null)?obj:this;
	var v = (o.innerText)?o.innerText:o.textContent;
	o.old_value = v;
	//<input type='hidden' id='_mn' value='"+this.id.split("_")[0]+"' />
	this.innerHTML = "<input type='text' id='_mt' style='border:1px dashed #0099ff;font-size:14px;' value='"+v+"' size='20' maxlength='20' onblur='saveModuleTitle(\""+o.id+"\",this.value);' onkeydown='mt_key(this);'/>";
	_gObj('_mt').focus();
	_gObj('_mt').select();
	o.onclick="";
}

function reModuleTitle(par,return_v)
{
	loading('close');
	//alert(return_v);
	if (return_v=="lost")
	{
		var o = _gObj(par);
		o.innerHTML = o.old_value;
	}
}
//-----

var area_num=0; //区域数
function init()
{
    var mycars=new Array("left","center","right");
	var arr = new Array();
	for(i=0;i<3;i++)
	{
		var o = _gObj(mycars[i]);
		if(o!=null)
		{
			arr[i] = o;
			area_num++;
		}
	}
	CreateBlock(arr);
}

function CreateBlock(_area_ary)
{
	area_ary = _area_ary;
	
	for(var i=0;i<_area_ary.length;i++){
	
		for(var j = 0; j<_area_ary[i].childNodes.length ; j++){
			var _block=_area_ary[i].childNodes[j];
			var _block_head=_gObj(_block.id+"_head");
			
			if(!_block_head)
				continue;
			
			setBRP(_block.id); //调整模块显示
			block.init(_block_head);
			_block_head.module=_block;
			_block_head.onDragStart = setMoveBlock;
			_block_head.onDrag = dragBlock;
			_block_head.onDragEnd = endDragBlock;
			var _block_title = _gObj(_block.id+"_title");
			
//			if (_block_title!=null)
//			{
//				//alert(_block.id+"_title " + _block_title.id);
//				_block_title.onmouseover = highLight;
//				_block_title.onmouseout = unHighLight;
//				_block_title.onclick = changeModuleTitle;
//			}
		}
	}
}

//向服务器发送改变信息
function aI()
{
	loading('open');
	var a="";
	var p = "";
	
	for(var aa=0;aa<area_ary.length;aa++)
	{
		var ln = area_ary[aa].childNodes.length;
		p = "";
		for(var ab=0;ab<ln;ab++)
		{ 
			var o = area_ary[aa].childNodes[ab];
			if(typeof(o.id)=="undefined" || o.id=="" || o.tagName.toLowerCase()!="div")
			{
				continue;
			}
			else
			{
				var ac=area_ary[aa].childNodes[ab].id;
				if(ac!="") p+=((p!="")?",":"")+ac;
			}
		}
		a+=p;
		a+="|";
		p="";
	}

        var scTop;    
        if (typeof window.pageYOffset != 'undefined') {
            scTop = window.pageYOffset;          }
        else if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') { 
            scTop = document.documentElement.scrollTop;  } 
        else if (typeof document.body != 'undefined') { 
            scTop = document.body.scrollTop;   }


	var ajax = new AJAXRequest();
	ajax.get(
//请求的URL
asp+"?act=move&ID="+host_id+"&i="+escape(a),
//回调函数
function(obj) {
if(obj.responseText=='OK')
{
    window.location.href="?ID="+host_id+"&top="+scTop;
}
 if(v=="nowelcome") window.status = "操作取消"; loading('close'); 
}
);
	
	
	//_sendx(asp+"?act=move2&i="+escape(a)+"&ID="+host_id,function(p,v){ if(v=="nowelcome") window.status = "操作取消"; loading('close'); },null);
}

//复制块移动到原块上的动态效果
function aD(_block,aa,ab){
	//a  __block
	var block_left=parseInt(setBlockCSS().style.left);
	var block_top=parseInt(setBlockCSS().style.top);
	var block_width=(block_left-getOffset(_block,true))/ab;
	var block_height=(block_top-getOffset(_block,false))/ab;
	return setInterval(function(){
		if(ab<1){
			clearInterval(ap);
			setBlockCSS().style.display="none";
			return
		}
		ab--;
		block_left-=block_width;
		block_top-=block_height;
		setBlockCSS().style.left=parseInt(block_left)+"px";
		setBlockCSS().style.top=parseInt(block_top)+"px"
	},aa/ab)
}

//检查并设置块的显示属性，判断是否需要移动块
function aG(src_block,aa,ab){
	//*
	var h=null;
	var max_block_size=100000000;
	for(var i=0;i<area_ary.length;i++){
		for(var j=0;j<area_ary[i].childNodes.length;j++){
			var _block=area_ary[i].childNodes[j];
			if(_block==src_block)
				continue;
			var block_size=Math.sqrt(Math.pow(aa-_block.pagePosLeft,2)+Math.pow(ab-_block.pagePosTop,2));
			if(isNaN(block_size))
				continue;
			if(block_size<max_block_size){
				max_block_size=block_size;
				h=_block;
			}
		}
	}
	if(h!=null&&src_block.nextSibling!=h){
		h.parentNode.insertBefore(src_block,h);
		src_block.parentNode.style.display="none";
		src_block.parentNode.style.display="";
	}
	//*/
}

//设置原始块的位置
function setOffset(src_block){
	for(var i=0;i<area_ary.length;i++){
		var h=0;//设置高度
		for(var j=0; j<area_ary[i].childNodes.length;j++){
			var _block=area_ary[i].childNodes[j];
			if(_block==src_block)
				h=_block.offsetHeight;
			_block.pagePosLeft=getOffset(_block,true);
			_block.pagePosTop=getOffset(_block,false)-h;
		}
	}
}

//取绝对位置（可能）
function getOffset(_block,flag){
	var h=0;
	while(_block!=null){
		h+=_block["offset"+(flag?"Left":"Top")];
		_block=_block.offsetParent;
	}
	return h
}
//设置块的CSS属性
function setBlockCSS(){
	if(!cur_block){
		cur_block=document.createElement("DIV");
		cur_block.style.display="none";
		cur_block.style.textAlign="left";
		cur_block.style.position="absolute";
		cur_block.style.cursor="move";
		cur_block.style.backgroundColor="#ffffff";
		cur_block.style.paddingBottom="0px";
		document.body.appendChild(cur_block);
	}
	return cur_block; //返回设置完成的块
}

//ajax传送修改信息
function _sendx(a,aa,x){
	var ab=xHTTP();
	
	if((!ab||aF)&&!aa){
		var ll = new Image();
		ll.src=a;
		ll.onload = function(){aa(x,ab.responseText)};

	}else{
		ab.open("GET",a,true);
		if(aa){
			ab.onreadystatechange=function(){if(ab.readyState==4){aa(x,ab.responseText)}}
		}
		ab.send(null)
	}
}

function minimize(obj_id, state) //最小化
{
	var sh = (state)?"none":"block";
	var o = _gObj(obj_id+"__c").style.display = sh;
}

var ima = true; //最小化状态
function minimize_all(state) //全部最小化
{
	_area_ary = [_gObj("left"),_gObj("center"),_gObj("right")];
	for(var i=0;i<_area_ary.length;i++)
	{
		if(_area_ary[i]!=null)
		{
			for(var j = 0; j<_area_ary[i].childNodes.length-1 ; j++)
			{
				var _block = _area_ary[i].childNodes[j];
				var _blockname=_block.id
				var _block_minimize = _gObj(_block.id+"_minimize");
				var _block_resume = _gObj(_block.id+"_resume");
				if((!_block_minimize) || (!_block_resume))
					continue;

				if(state) {
					_block_minimize.style.display = "none";
					_block_resume.style.display = "inline";
				}else {
					_block_minimize.style.display = "inline";
					_block_resume.style.display = "none";
				}
				minimize(_block.id,state);
			}
		}
	}
	ima = !state;
	_gObj('ima_c').innerHTML = (state)?"模块展开视图":"模块缩小视图";
	return false;
}

//添加新的rss
function _new(x)
{
	loading('open');
	_sendx(asp+"?act=new&bname="+x, function(){ window.location.reload();},null);
}

//恢复默认设置
function openreset()
{
	flag = confirm("提示：您确定恢复刚开始的默认设置吗？");
	if(flag)
	{
		loading('open');
		_sendx(asp+"?act=reset", function(){ window.location.reload();},null);
	}
	return false;
}

//报错处理
function syserror()
{
	flag = confirm("提示：您是否提交您的错误？\n\n错误处理包括您的版面错误，统计不正确等。");
	if(flag)
	{
		loading('open');
		_sendx("usererror.asp",syserrorclose,null);
	}
	return false;
}
function syserrorclose(){
	loading('close');
	alert("您的错误已经提交，请等待处理！");
}

//关闭栏目
function _del(x,obj)
{
	flag = confirm("您确定要隐藏这个模块吗？\n\n您可以在\"设置模块\"菜单中恢复此模块的显示。");
	if(flag)
	{
		loading('open');
		if(_gObj("m_"+x)!=null) _gObj("m_"+x).innerHTML = "正在隐藏";
		var o = _gObj(x);
		if(o!=null) o.style.display = "none";
		_sendx(asp+"?act=close&bname="+x,_close,x);
	}
	return false;
}
function _close(x,e)
{
	if(_gObj("m_"+x)!=null) 
	{
		_gObj("m_"+x).innerHTML = "恢复";
		_gObj("m_"+x).className="reset";
	}
	var o = _gObj(x);
	if(o!=null) o.removeNode(true);
	loading('close');
}

function _cb(obj,x)
{
	if(obj.innerHTML=="恢复")
	{
		obj.innerHTML = "正在恢复";
		_new(x);
	}
	else
	{
		_del(x,obj);
	}
	return false;
}

//增加显示项
function editnum(bn)
{
	loading('open');
	var num_obj = _gObj(bn+"_sel_num");
	num = (num_obj!=null)?num_obj.value:20;
	var showtype_obj = _gObj(bn+"_sel_showtype");
	var showtype = "";
	if (showtype_obj!=null) showtype = "&showtype="+showtype_obj.value;
	_sendx("readblock.asp?bn="+bn+"&num="+num+showtype,loadBlock,bn);
}

function _update(x,e){
	loading('close');
	if(e!="")
	{
		window.location.reload();
	}
}

var opp;
function openp(pn,o)
{
	opp = pn;
	obj = _gObj("ppool");
	obj2 = _gObj(pn);
	obj.innerHTML = obj2.innerHTML;
	obj.className = obj2.className;
	obj.style.display = "";
	obj.style.top = o.offsetTop + 25;
	//obj.style.left = getOffset(o,true) - (obj.offsetWidth - o.offsetWidth)/2;
	obj.style.left = getOffset(o,true);
	document.onmousedown = function (){doc_mousedown()};
	return false;
}

function closep()
{
	var obj = _gObj("ppool");
	try
	{
		if(opp!="pop_menu" && opp!="pop_menu3"&& opp!="pop_menu4" && opp!="pop_menu5") _gObj(opp).innerHTML = obj.innerHTML;
	}
	catch(e)
	{
	}
	opp = "";
	obj.innerHTML = "";
	obj.className = "";
	obj.style.display = "none";
	var lv2 = _gObj('pop_menu_lv2');
	if(lv2!=null) lv2.style.display = "none";
	document.onmousedown = function(){};
	return false;
}


function countMsgTitle(i,data)
{
	document.getElementById("newpmsgcount").innerHTML = data;
	return false;
}

//重新统计数据
function tongji()
{
	loading('open');
	_sendx("tongji.aspx",_chgTemplate,null);
	return false;
}

function chgflying(fid,product)
{
	loading('open');
	_sendx(asp+"?act=editfly&fid="+fid,prevpiaofu,product);
	return false;
}
function cancelfly()
{
	loading('open');
	_sendx(asp+"?act=cancelfly",quxiaofly,null);
	return false;
}

function chgTemplate(o)
{
	loading('open');
	_sendx(asp+"?act=edittemplate&template="+o,_chgTemplate,null);
	return false;
}

function _chgTemplate()
{
	loading('close');
	closep();
	window.location.reload();
}



function chgBackgroud(u)
{
	document.getElementById("body_bg_img_temp").value = u;
	setBGT(document.body,"body",u);
}
function chgBackgroudOK()
{
	var imgtemp=document.getElementById("body_bg_img_temp").value;
	if (imgtemp!=""){
	document.getElementById("body_bg_img").value=imgtemp;
	setBG(document.body,"body");
	}
	var lv2 = _gObj('pop_menu_lv2');
	if(lv2!=null) lv2.style.display = "none";
}
function chgBackgroudCancel()
{
	var lv2 = _gObj('pop_menu_lv2');
	if(lv2!=null) lv2.style.display = "none";
	setBG(document.body,"body");
}

function chgBanner(u)
{
	document.getElementById("banner_bg_img_temp").value = u;
	setBannerBGT(u);
}
function chgBannerOK()
{
	var imgtemp=document.getElementById("banner_bg_img_temp").value;
	if (imgtemp!=""){
	document.getElementById("banner_bg_img").value=imgtemp;
	setBannerBG();
	}
	var lv2 = _gObj('pop_menu_lv2');
	if(lv2!=null) lv2.style.display = "none";
}
function chgBannerCancel()
{
	var lv2 = _gObj('pop_menu_lv2');
	if(lv2!=null) lv2.style.display = "none";
	setBannerBG();
}

function chgTitleBg(u)
{
	document.getElementById("title_bg_img_temp").value = u;
	setTitleBGT(u);
}
function chgTitleBgOK()
{
	var imgtemp=document.getElementById("title_bg_img_temp").value;
	if (imgtemp!=""){
	document.getElementById("title_bg_img").value=imgtemp;
	setTitleBG();
	}
	var lv2 = _gObj('pop_menu_lv2');
	if(lv2!=null) lv2.style.display = "none";
}
function chgTitleBgCancel()
{
	var lv2 = _gObj('pop_menu_lv2');
	if(lv2!=null) lv2.style.display = "none";
	setTitleBG();
}


function doc_mousedown(window_event){
	//*
	obj = _gObj("ppool");
	if(typeof(window_event)=="undefined")
		window_event = window.event
	_x = window_event.x ? window_event.x : window_event.pageX;
	_y = window_event.y ? window_event.y : window_event.pageY;

	_x1 = obj.offsetLeft;
	_x2 = obj.offsetLeft+obj.offsetWidth;
	_y1 = obj.offsetTop;
	_y2 = obj.offsetTop+obj.offsetHeight;
	//alert(_x+"|"+_x1+"|"+_x2+"|"+_y+"|"+_y1+"|"+_y2);

	var in_lv2 = false;
	var lv2 = _gObj('pop_menu_lv2');
	if(lv2.style.display=="block")
	{
		_x21 = lv2.offsetLeft;
		_x22 = lv2.offsetLeft+lv2.offsetWidth;
		_y21 = lv2.offsetTop;
		_y22 = lv2.offsetTop+lv2.offsetHeight;
		if((_x>_x21)&&(_x<_x22)&&(_y>_y21)&&(_y<_y22))
		{
			in_lv2 = true;
		}
	}

	if((_x>_x1)&&(_x<_x2)&&(_y>_y1)&&(_y<_y2) || in_lv2) {
		document.onmousedown = doc_mousedown;
	}else{
		closep();
	}
	
	//*/
}

function loading(act)
{
	if(act=='open')
	{
		_gObj('Loading').style.display="block";
		_gObj('Loading').style.top = 0;
		_gObj('Loading').style.right = (document.body.offsetWidth-200)/2;
	}
	if(act=='close')
	{
		_gObj('Loading').style.display="none";
	}
}

function loadBlock(bn,x)
{
	var o = _gObj(bn+"_replace");
	if(o!=null) o.innerHTML = x;
	loading('close');
	return false;
}

function selIt(obj_id,v)
{
	var o = _gObj(obj_id);
	if (o==null) return;
	o.value = v;
}

function setTitle(t1_id, t2_id) //title
{
	var t1 = _gObj(t1_id);
	var t2 = _gObj(t2_id);
	t1.onmouseover = highLight;
	t1.onmouseout = unHighLight;
	t1.onclick = changeModuleTitle;
	t2.onmouseover = highLight;
	t2.onmouseout = unHighLight;
	t2.onclick = changeModuleTitle;
}

function editTitle(obj_id,obj_id2)
{
	_gObj(obj_id).onclick = changeModuleTitle;
	_gObj(obj_id).click();
	_gObj('_mt').onblur = function() { saveModuleTitle(obj_id,_gObj('_mt').value); editTitleoOk(obj_id,obj_id2); }
	_gObj(obj_id2).src = "http://hi.u9u8.com/my/images/ok.gif";
	_gObj(obj_id2).onclick = function(){ editTitleoOk(obj_id,obj_id2) };
}

function editTitleoOk(obj_id, obj_id2)
{
	_gObj(obj_id2).src = "http://hi.u9u8.com/my/images/edit.gif";
	_gObj(obj_id2).onclick = function(){ editTitle(obj_id, obj_id2) };
}

var editModuleTitle_time = 0;
var editModuleTitle_div = ""; 
function editModuleTitle(obj_id,obj_id2)
{
	var d = new Date();
	//alert(d.getTime()-editModuleTitle_time);
	if(d.getTime() - editModuleTitle_time < 500 && obj_id == editModuleTitle_div)
	{
		return false;
	}
	editModuleTitle_time = d.getTime();
	editModuleTitle_div = obj_id;
	
	_gObj(obj_id).onclick = changeModuleTitle;
	_gObj(obj_id).click();
	_gObj('_mt').onblur = function() 
							{ 
								saveModuleTitle(obj_id,_gObj('_mt').value); 
								editModuleTitleoOk(obj_id,obj_id2); 
								var d = new Date();
								editModuleTitle_time = d.getTime();
								editModuleTitle_div = obj_id;
								return false;
							}
	_gObj(obj_id2).src = "http://hi.u9u8.com/my/images/ok.gif";
	_gObj(obj_id2).onclick = function(){ editModuleTitleoOk(obj_id,obj_id2);return false; };
}

function editModuleTitleoOk(obj_id, obj_id2)
{
		_gObj(obj_id2).src = "http://hi.u9u8.com/my/images/edit.gif";
		_gObj(obj_id2).onclick = function(){ editModuleTitle(obj_id, obj_id2) };
		_gObj(obj_id2).blur();
		return false;
	
}


//菜单-------
function refill_pop_menu(cate,p)
{
	var other_par = "";
	if(arguments.length>2) other_par = arguments[2];

	if(other_par=="")
	{
		if(cate=="mystyle")
			_sendx("menu_mystyle.aspx", fill_pop_menu, null);
		else if(cate=="share")
			_sendx("menu_share.aspx?p="+p, fill_pop_menu, null);
		else
			_sendx("menu.aspx?cate="+cate+"&p="+p, fill_pop_menu, null);
	}
	else
	{
		if(other_par==1)
		   _sendx("cursor_menu.aspx?cate="+cate+"&p="+p, fill_pop_menu, null);
		else if(other_par==2)   //系统背景图
			_sendx("backgroud.aspx?p="+p, fill_pop_menu, null);
		else if(other_par==3)   //系统Banner图
			_sendx("banner.aspx?p="+p, fill_pop_menu, null);
		else if(other_par==4)   //系统标题背景图
			_sendx("menubg.aspx?p="+p, fill_pop_menu, null);	
		else if(other_par==5)   //读取漂浮特效
			_sendx("fly.aspx?p="+p, fill_pop_menu, null);		
		else
		   _sendx("flash_menu.aspx?cate="+cate+"&p="+p, fill_pop_menu, null);

	}
	return false;
}

function fill_pop_menu(i,data)
{
	var lv2 =_gObj('pop_menu_lv2');
	lv2.innerHTML = data;
	return false;
}

var previous_select_menu_item;
function show_pop_lv2(o,cate)
{
	if(previous_select_menu_item!=null) previous_select_menu_item.className = "";
	previous_select_menu_item = o;
	o.className = "setbg";
	var lv2 =_gObj('pop_menu_lv2');
	lv2.style.left = findPosX(o)+o.offsetWidth+4;
	lv2.style.top = findPosY(o);
	lv2.innerHTML = "<div class='set_loading'><img src='http://hi.u9u8.com/my/images/loading.gif' border='0' align='absmiddle'/>&nbsp;&nbsp;数据加载中,请稍候...</div>";
	lv2.style.display = "block";
	refill_pop_menu(cate,1,(typeof(arguments[2])=="undefined")?"":arguments[2]);

	return false;
}
//-------

//菜单一-------
function scw(k,data)
{
	//alert(data);
	if(!isNull(data))
	{
		document.body.style.cursor = "url("+data+")";
	}
    loading('close');
	closep();
    return false; 
}
function scwm(k,data)
{
	//alert(data);
	if(!isNull(k))
	{
		document.body.style.cursor = "url("+k+")";
	}
    loading('close');
	closep();
    return false; 
}

function chgMouse(o)
{
	try
	{
	   	loading('open');
		_sendx(asp+"?act=editmouse&style="+o,scwm,o);
	}

	catch(e)
	{
		//alert(e.description);
		closep();
		loading('close');
	}
	return false;
}
function cancelMouse()
{       
	    loading("open");
		document.body.style.cursor = "default";
		_sendx(asp+"?act=cancelMouse",endhandle,null);
        return false; 
}

//鼠标文件地址的验证
function post_url()
{
	s = trim(_gObj("cursor_url").value);
	if(isNull(s))
	{
		alert("请把鼠标地址填写完整啊！");
		return false;
	}
	var s = new String(s)
	s = s.toLowerCase();
	var a = s.match(/http:\/\/([\w-]+\.)+[\w-]+(\/[\w- ./\?%&=]*)?/); 
	if (a == null) 
	{
		alert("不正确的网址啊！");
		return false;
	}
	else
	{
		if (s.search(/^http:\/\/.+(\/.+\.ani|\.cur)$/)==-1) 
		{  
			alert("鼠标地址格式错误了！");
			return false;
		}
	}
	try
	{
		loading('open');
		_sendx("save.aspx?act=editmouse&style="+s,scw(s),null);
	}
	catch(e)
	{
		loading('close');
	}
	return false;
}

function show_pop_lv8(o)
{
	var lv2 =_gObj('pop_menu_lv2');
	lv2.style.left = findPosX(o)+o.offsetWidth+4;
	lv2.style.top = findPosY(o);
	lv2.innerHTML = _gObj("dialogBox").innerHTML;
	lv2.style.display = "block";
	return false;
}