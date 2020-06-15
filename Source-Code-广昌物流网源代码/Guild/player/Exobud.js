var objMmInfo = null;
var intMmCnt = 0;
var intSelMmCnt=0;
var intActMmCnt=0;
var cActIdx=0;
var cActTit="nAnT";
var strMmInfo ="Infomation";

var blnfpl=false;
var blnEnabled= false;
var blnEOT=false;
var arrSelMm=null;
var arrActMm=null;
var intExobudStat =0;
var tidTLab=null;
var tidErr=null;
var tidMsg=null;
var intErrCnt=0;
var blnRept=false;

var blnAutoProc = true;
var blnElaps=true; 
var intDelay =500;

//window.onerror = killerror;
document.onkeydown = processKey;
function killerror() {return true;}
function processKey() { 
if ( event.keyCode == 90 || event.keyCode == 0x25) {playPrev();this.blur();}
 else if ( event.keyCode == 67 ) {wmpStop();this.blur();}
 else if ( event.keyCode == 86 || event.keyCode == 80) {startExobud();this.blur();}
 else if ( event.keyCode == 88 ) {wmpPP();this.blur();}
 else if ( event.keyCode == 66 || event.keyCode == 0x27) {playNext();this.blur();}
 else if ( event.keyCode == 84 ) {chgTimeFmt();this.blur();}
 else if ( event.keyCode == 65 ) {wmpMute();this.blur();}
 else if ( event.keyCode == 83 || event.keyCode == 82) {chgPMode();this.blur();}
 else if ( event.keyCode == 76 ) {chkRept();this.blur();}
 else if ( event.keyCode == 77 ) {openPlist();this.blur();}
 else if ( event.keyCode == 0x28 ) {wmpVolDn();this.blur();}
 else if ( event.keyCode == 0x26 ) {wmpVolUp();this.blur();}
 else if ( event.keyCode == 73 ) {alert(strMmInfo);}
} 

function wmpInit(){
 var wmps = Exobud.settings;
 var wmpc = Exobud.ClosedCaption;

 wmps.autoStart=true;
 wmps.balance=0;
 wmps.enableErrorDialogs=false;
 wmps.invokeURLs = false;
 wmps.mute=false;
 wmps.playCount=1;
 wmps.rate=1;
 wmps.volume = 100;
 if(blnUseSmi){wmpc.captioningID="capText"; capText.style.display="";}
 Exobud.enabled=true;
}

function mkMmPath(u, t, f,s){
 this.mmUrl = u;
 this.mmTit =t;
 this.mmDur =0;
 this.selMm=f;
 this.actMm=f;
 if(blnUseSmi){this.mmSmi=s;}
}


function mkList(u,t,s,f){
 var cu=u;
 var ct=t;
 var cs=s;
 var cf=f;
 var idx=0;

 if(objMmInfo == null){ objMmInfo=new Array(); idx=0;}
 else{ idx=objMmInfo.length;}
 if(u=="" || u==null){cu="mms://";}
 if(t=="" || t==null){ct="未知歌曲";}
 if(f=="f" || f=="F"){cf="f";}
 else{cf="t"; intSelMmCnt=intSelMmCnt+1;}

 if(blnUseSmi){ objMmInfo[idx]=new mkMmPath(cu,ct,cf,cs);}
 else{objMmInfo[idx]=new mkMmPath(cu,ct,cf);}

 intActMmCnt=intSelMmCnt;
 intMmCnt=objMmInfo.length;
}

function mkSel(){
 arrSelMm=null;
 intSelMmCnt=0;
 var selidx = 0;

 if(intMmCnt<=0){intExobudStat=1; blnEnabled=false; return;} 

 arrSelMm=new Array();
 for(var i=0; i<intMmCnt;i++){
	if(objMmInfo[i].selMm =="t"){arrSelMm[selidx]=i;selidx=selidx+1;}
 }
 intSelMmCnt=arrSelMm.length;

 if(intSelMmCnt<=0){blnEnabled=false;intExobudStat=2; arrSelMm=null; return;}
 else{blnEnabled=true; mkAct();}

}

function mkAct(){
 arrActMm=null;
 intActMmCnt=0;
 var selidx=0;
 var actidx=0;

 if(blnEnabled){
	arrActMm=new Array();
	for(var i=0; i<intSelMmCnt;i++){
		selidx=arrSelMm[i];
		if(objMmInfo[selidx].actMm=="t"){arrActMm[actidx]=selidx; actidx=actidx+1;}
	}
	intActMmCnt=arrActMm.length;
 }
 else{return;}
 if(intActMmCnt<=0){blnEOT=true;arrActMm=null;}
 else{blnEOT=false;}
}


function chkAllSel(){
 for(var i=0; i<intMmCnt; i++){
   objMmInfo[i].selMm="t";
   objMmInfo[i].actMm="t";
 }
 mkSel();
}

function chkAllDesel(){
 for(var i=0; i<intMmCnt; i++){
   objMmInfo[i].selMm="f";
   objMmInfo[i].actMm="f";
 }
 mkSel();
}

function chkItemSel(idx){
 if(objMmInfo[idx].selMm =="t"){objMmInfo[idx].selMm="f";objMmInfo[idx].actMm="f";}
 else{objMmInfo[idx].selMm="t";objMmInfo[idx].actMm="t";}
 mkSel();
}

function chkItemAct(idx){
 objMmInfo[idx].actMm="f";
 mkAct();
}

function mkSelAct(){
 var idx=0;
 for(var i=0; i<intSelMmCnt; i++){
	idx=arrSelMm[i];
	objMmInfo[idx].actMm="t";
 }
 mkAct();
}

function initExobud(){
 wmpInit();
 mkSel();
 blnfpl=false;
 if(blnShowVolCtrl == false) {
	document.images['vmute'].style.display = "none";
	document.images['vdn'].style.display = "none";
	document.images['vup'].style.display = "none";
 }
 if(!blnShowPlist){document.images['plist'].style.display = "none";}

 if(blnRept){imgChange('rept',0);}
 else{imgChange('rept',1);}

 if(blnRndPlay){imgChange('pmode',0);}
 else{imgChange('pmode',1);}
 showTLab();
 disp1.innerHTML="播放器已准备就绪请点播放键";
 if(blnStatusBar){window.status=('播放器已准备就绪请点播放键');}
 if(blnAutoStart){startExobud();}

}

function startExobud(){
 var wmps= Exobud.playState;
 if(wmps==2){Exobud.controls.play(); return;}
 if(wmps==3){return;}

 blnfpl=false;
 if(!blnEnabled){waitMsg();return;}
 if(blnEOT){mkSelAct();}
 if(intErrCnt>0){intErrCnt=0;tidErr=setTimeout('retryPlay(),1000');return;}
 if(blnRndPlay){rndPlay();}
 else{cActIdx=arrActMm[0]; selMmPlay(cActIdx);}
}


function selMmPlay(idx){
 clearTimeout(tidErr);
 cActIdx=idx;
 var trknum=idx+1;
 var ctit =objMmInfo[idx].mmTit;
 if(ctit=="nAnT"){ctit="对不起！  未知..."}
 if(blnUseSmi){Exobud.ClosedCaption.SAMIFileName = objMmInfo[idx].mmSmi;}
 Exobud.URL = objMmInfo[idx].mmUrl;
 cActTit="T"+ trknum + ". " + ctit;
 disp1.innerHTML = cActTit;
 if(blnStatusBar){window.status=(cActTit);}
 chkItemAct(cActIdx); 
}


function wmpPlay(){Exobud.controls.play();}

function wmpStop(){
 intErrCnt=0;
 clearTimeout(tidErr);
 clearInterval(tidTLab);
 imgChange("stopt",1);
 imgChange("pauzt",0);
 showTLab();
 mkSelAct();
 Exobud.controls.stop();
 Exobud.close();
 disp1.innerHTML=" 播放已停止";
 if(blnStatusBar){window.status=('心情网络电台');return true;}
}


function wmpPause(){Exobud.controls.pause();}


function wmpPP(){
	var wmps = Exobud.playState;
	var wmpc=Exobud.controls;
	clearInterval(tidTLab);
	clearTimeout(tidMsg);
	if (wmps == 2) {wmpc.play();}
	if (wmps == 3) {wmpc.pause();disp2.innerHTML="Pause"; tidMsg=setTimeout('rtnTLab()',1500);}
	return;
}



function rndPlay(){
 if(!blnEnabled){waitMsg();return;}
 intErrCnt=0;
 var idx=Math.floor(Math.random() * intActMmCnt);
 cActIdx= arrActMm[idx];
 selMmPlay(cActIdx);
}


function playAuto(){
 if(blnRept){ selMmPlay(cActIdx); return;}
 if(!blnAutoProc){wmpStop();return;}
 if(blnfpl){wmpStop(); return;}
 if(!blnEnabled){wmpStop();return;}
 if(blnEOT){ if(blnLoopTrk){startExobud();}
	   else{wmpStop();}
 }
 else{  if(blnRndPlay){rndPlay();}
	else{cActIdx= arrActMm[0]; selMmPlay(cActIdx);}
 }
}


function selPlPlay(idx){
 blnfpl=true;
 selMmPlay(idx);
}



function playPrev(){
 var wmps= Exobud.playState;
 if(wmps==2 || wmps==3){Exobud.controls.stop();}
 blnfpl=false;
 if(!blnEnabled){waitMsg();return;}
 if(blnEOT){mkSelAct();}

 intErrCnt=0;
 if(blnRndPlay){rndPlay();}
 else{	var idx=cActIdx;
 	var blnFind=false;
	for(var i=0;i<intSelMmCnt;i++){if(cActIdx==arrSelMm[i]){idx=i-1; blnFind=true;}}
	if(!blnFind){startExobud();return;}
	if(idx<0){idx=intSelMmCnt-1;cActIdx=arrSelMm[idx];}
	else{cActIdx=arrSelMm[idx];}
	selMmPlay(cActIdx);
 }
}

function playNext(){
 var wmps= Exobud.playState;
 if(wmps==2 || wmps==3){Exobud.controls.stop();}
 blnfpl=false;
 if(!blnEnabled){waitMsg();return;}
 if(blnEOT){mkSelAct();}

 intErrCnt=0;
 if(blnRndPlay){rndPlay();}
 else{	var idx=cActIdx;
 	var blnFind=false;
	for(var i=0;i<intSelMmCnt;i++){	if(cActIdx==arrSelMm[i]){idx=i+1; blnFind=true;}}
	if(!blnFind){startExobud();return;}
	if(idx>=intSelMmCnt){idx=0;cActIdx=arrSelMm[idx];}
	else{cActIdx=arrSelMm[idx];}
	selMmPlay(cActIdx);
 }
}


function retryPlay(){
  selMmPlay(cActIdx);
}


function chkRept(){
 var wmps=Exobud.playState;
 if(wmps == 3){clearInterval(tidTLab);}
 if(blnRept){blnRept=false; imgChange('rept',0);disp2.innerHTML="Norm. Play";}
 else{blnRept=true; imgChange('rept',1);disp2.innerHTML="Repeat";}
 tidMsg= setTimeout('rtnTLab()',1000);
}


function chgPMode(){
 var wmps=Exobud.playState;
 if(wmps == 3){clearInterval(tidTLab);}
 if(blnRndPlay){blnRndPlay=false; imgChange('pmode',0);disp2.innerHTML="SEQ. Play";}
 else{blnRndPlay=true; imgChange('pmode',1);disp2.innerHTML="RND. Play";}
 tidMsg=setTimeout('rtnTLab()',1000); 
}


function evtOSChg(f){
// 0(Undefined) 8(MediaChanging) 9(MediaLocating) 10(MediaConnecting) 11(MediaLoading) 
// 12(MediaOpening) 13(MediaOpen) 20(MediaWaiting) 21(OpeningUnknownURL)

 if(f==8){capText.innerHTML="心情网络电台";}
 if(f==13){
	var strTitle = Exobud.currentMedia.getItemInfo("title");
	if(strTitle.length <=0){strTitle = "未知"}
	var strAuthor = Exobud.currentMedia.getItemInfo("Author");
	if(strAuthor.length <=0){strAuthor = "未知"}
	var strCopy = Exobud.currentMedia.getItemInfo("Copyright");
	if(strCopy.length <=0){strCopy = "未知"}
	var strType = Exobud.currentMedia.getItemInfo("MediaType");
	var strDur=Exobud.currentMedia.durationString;
	var strUrl =Exobud.URL;
	var trknum=cActIdx+1;
	var ctit = objMmInfo[cActIdx].mmTit;
	if(ctit=="nAnT"){ objMmInfo[cActIdx].mmTit = strAuthor + " - " + strTitle;
		ctit=strAuthor + " - " + strTitle;
		cActTit="T"+ trknum + ". " +ctit;
		disp1.innerHTML = cActTit;
	}

	strMmInfo= "Media (Title) : " + strTitle + " (开始下载:" + strType +")" + "\n"
	strMmInfo= strMmInfo + "Media (Author) : " + strAuthor + "\n"
        //strMmInfo= strMmInfo + "Media (URL) : 媒体路径已被隐藏 \n";
	strMmInfo= strMmInfo + "Media (URL) : " +strUrl + "\n"
	strMmInfo= strMmInfo + "Media (Copyright) : " + strCopy +"\n" 
	strMmInfo= strMmInfo + "Media (Duration) : " +strDur +"\n\n";
        strMmInfo= strMmInfo + "http://cuiz.net \n";
	strMmInfo= strMmInfo + "cuiz.net 2004-2005\n";
	if(blnShowMmInfo){alert(strMmInfo);}
 }
}


function evtPSChg(f){
// 0(Undefined) 1(Stopped) 2 (Paused) 3(Playing) 4(ScanFowrd) 5(ScanReverse)
// 6(Buffering) 7(Waitng) 8(MediaEnded) 9(Transitioning) 10(Redy)

 switch(f){
	case 1:
		evtStop();
		break;
	case 2:
		evtPause();
		break;
	case 3:
		evtPlay();
		break;
	case 8:
		setTimeout('playAuto()', intDelay);
		break;
 }
}


//evtWmpBuff()
function evtWmpBuff(f){
	 if(f){ disp2.innerHTML = "请稍后......";
		var msg="节目加载中请稍后......" + cActTit;
		disp1.innerHTML = msg;
		if(blnStatusBar){window.status=(msg);}
	}
	else{ disp1.innerHTML = cActTit; showTLab();}
}


//evtWmpError()
function evtWmpError(){
 intErrCnt=intErrCnt+1;
 if(intErrCnt<=3){
	disp2.innerHTML="Player("+intErrCnt+")";
	var msg="(心情网络电台:" + intErrCnt +") " +cActTit;
	disp1.innerHTML="心情网络电台" +cActTit;
	if(blnStatusBar){window.status=(msg);}
	tidErr=setTimeout('retryPlay()',1000);
 }
 else{	clearTimeout(tidErr);
	intErrCnt=0;showTLab();
	var msg="心情网络电台";
	if(blnStatusBar){window.status=(msg);}	
	setTimeout('playAuto()',1000);}
}

function evtStop(){
	clearTimeout(tidErr);
	clearInterval(tidTLab);
	showTLab();
	intErrCnt=0;
	imgChange("pauzt",0);
	imgChange("playt",0);
	disp1.innerHTML="ExoBUD MP";
	if(blnStatusBar){window.status=('心情网络电台');return true;}
}

function evtPause(){
 imgChange("pauzt",1)
 imgChange("playt",0);
 imgChange("stopt",0);
 clearInterval(tidTLab);
 showTLab();
}

function evtPlay(){
 imgChange("pauzt",0)
 imgChange("playt",1);
 imgChange("stopt",0);
 tidTLab=setInterval('showTLab()',1000);
}

//showTLab()
function showTLab(){
 var ps=Exobud.playState;
 if(ps==2 || ps==3){
	var cp=Exobud.controls.currentPosition
	var cps=Exobud.controls.currentPositionString
	var dur=Exobud.currentMedia.duration;
	var durs=Exobud.currentMedia.durationString;
	if(blnElaps){disp2.innerHTML= cps+" | "+durs;
		var msg=cActTit + " ("+cps+" | "+durs+ ")";
		if(ps==2){msg="(心情网络电台) "+ msg;}
		if(blnStatusBar){window.status=(msg);return true;}
	}
	else{var laps= dur-cp; 
		var strLaps=wmpTime(laps);
		disp2.innerHTML= strLaps + " | "+durs;
		var msg= cActTit + " (" + strLaps + " | "+durs + ")";
		if(ps==2){msg="(心情网络电台) "+ msg;}
		if(blnStatusBar){window.status=(msg);return true;}
	}

 }
 else{disp2.innerHTML="00:00 | 00:00";}
}


function chgTimeFmt(){
 var wmps=Exobud.playState;
 if(wmps == 3){clearInterval(tidTLab);}
 if(blnElaps){blnElaps=false; disp2.innerHTML="Laps";}
 else{blnElaps=true;disp2.innerHTML="ELaps";}
 tidMsg=setTimeout('rtnTLab()',1000); 
}

// rtnTLab()
function rtnTLab(){
clearTimeout(tidMsg);
var wmps=Exobud.playState;
if(wmps == 3){tidTLab=setInterval('showTLab()',1000);}
else{showTLab();}
}

function wmpTime(dur){
	var hh, min, sec, timeLabel
	hh = Math.floor(dur/3600);
	min = Math.floor(dur / 60)%60;
	sec = Math.floor(dur % 60);
	if (isNaN(min)){ return "00:00"; }
	if (isNaN(hh) || hh==0){timeLabel="";}
	else{
		if(hh >9){timeLabel = hh.toString()+":";}
		else{timeLabel="0"+hh.toString() +":";}
	}
  	if ( min > 9 ){  timeLabel = timeLabel + min.toString() + ":"; }
	else {timeLabel = timeLabel + "0" +min.toString() + ":";}
	if ( sec > 9 ){timeLabel = timeLabel + sec.toString();}
	else{timeLabel = timeLabel + "0" + sec.toString();}
	return timeLabel;
}

var vmax = 100;
var vmin=0;
var vdep = 10;

function wmpVolUp(){  
	var wmps=Exobud.playState;
	if(wmps == 3){clearInterval(tidTLab);}
	var ps = Exobud.settings;
	if(ps.mute){ps.mute = false; disp2.innerHTML="Speach";imgChange('vmute',0);}
	else{
		if (ps.volume >= (vmax-vdep)) {ps.volume = vmax;}
		else {  ps.volume = ps.volume + vdep;}
		disp2.innerHTML="Vol. " + ps.volume +"%";
	}
	tidMsg=setTimeout('rtnTLab()',1000);
}

function wmpVolDn(){  
	var wmps=Exobud.playState;
	if(wmps == 3){clearInterval(tidTLab);}
	var ps = Exobud.settings;
	if(ps.mute){ps.mute = false;disp2.innerHTML="Speach";imgChange('vmute',0);}
	else{
		if (ps.volume <= vdep){ ps.volume = vmin;}
		else{ps.volume = ps.volume - vdep;}
		disp2.innerHTML="Vol. " + ps.volume +"%";
	}
	tidMsg=setTimeout('rtnTLab()',1000);
}

vArray = new Array();
vArray[0]  =  0;
vArray[1]  =  10;
vArray[2]  =  20;
vArray[3]  =  30;
vArray[4]  =  40;
vArray[5]  =  50;
vArray[6]  =  60;
vArray[7]  =  70;
vArray[8]  =  80;
vArray[9]  =  90; 
vArray[10]  = 100; 

function SetVolume(index)
{
	var wmps=Exobud.playState;
	if(wmps == 3){clearInterval(tidTLab);}
	var ps = Exobud.settings;
	ps.volume = vArray[index];
	document.images["meter"].src = eval("meter" + index + ".src");
	disp2.innerHTML="Vol. " + ps.volume +"%";
	if(ps.volume != 0 && ps.mute){ps.mute = false;imgChange("vmute", 0);}
	if(ps.volume == 0 && !ps.mute){ps.mute = true;disp2.innerHTML="Mute On"; imgChange("vmute", 1);}
	tidMsg=setTimeout('rtnTLab()',1000);
}

function MeterClick(n)
	{
		SetVolume(n);
	}

function wmpMute(){  
	var wmps=Exobud.playState;
	if(wmps == 3){clearInterval(tidTLab);}
	var ps = Exobud.settings;
	if(!ps.mute){ps.mute = true;disp2.innerHTML="Mute On"; imgChange("vmute", 1);}
	else {ps.mute = false;disp2.innerHTML="Mute Off"; imgChange("vmute", 0);}
	tidMsg=setTimeout('rtnTLab()',1000);
}

function waitMsg(){
 capText.innerHTML="心情电台Captioning(SMI)";
 if(intExobudStat ==1){disp1.innerHTML="心情电台";}
 if(intExobudStat ==2){disp1.innerHTML="心情电台";}
 if(blnStatusBar){
	if(intExobudStat ==1){window.status=('心情电台');return true;}
	if(intExobudStat ==2){window.status=('心情电台'); return true;}
 }
}


function openPlist() { 
	window.open("list.htm" , "mplist", " width=351 , height=580 ,scrollbars=auto , resizable=no , copyhistory=no");
}


function chkWmpState(){
// 0(Undefined) 1(Stopped) 2 (Paused) 3(Playing) 4(ScanFowrd) 5(ScanReverse)
// 6(Buffering) 7(Waitng) 8(MediaEnded) 9(Transitioning) 10(Redy)
 return Exobud.playState;
}

function chkWmpOState(){
// 0(Undefined) 8(MediaChanging) 9(MediaLocating) 10(MediaConnecting) 11(MediaLoading) 
// 12(MediaOpening) 13(MediaOpen) 20(MediaWaiting) 21(OpeningUnknownURL)
 return Exobud.openState;
}

function chkOnline(){
// true(Network Connected) false(Network Lost)
return Exobud.isOnline;
}

function vizExobud(){
  window.open("http://WWW.CUIZ.NET","vizExobud");
}
