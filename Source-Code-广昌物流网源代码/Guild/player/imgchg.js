 toggleKey =new Object();
 toggleKey[0] = "_off";
 toggleKey[1] = "_on";
 toggleKey[2] = "_ovr";
 toggleKey[3] = "_out";
 toggleKey[4] = "_mdn";
 toggleKey[5] = "_mup";

function imgChange(id , act){
	if(document.images){ document.images[id].src = eval("img."+ id + toggleKey[act] + ".src");}
}

// 图片变换设置 imgChange('img name' , 0)关闭 imgChange('img  name' , 1) 打开

 if(document.images){
	img = new Object();
	// mute 
	img.vmute_off = new Image();
	img.vmute_off.src = "images/btn_mute_off.jpg";
	img.vmute_on = new Image();
	img.vmute_on.src = "images/btn_mute_on.jpg";
	
	// 
	img.pmode_off = new Image();
	img.pmode_off.src = "images/btn_rndmode_off.jpg";
	img.pmode_on = new Image();
	img.pmode_on.src = "images/btn_rndmode_on.jpg"; 
	// loop 
	img.rept_off = new Image();
	img.rept_off.src = "images/btn_rept_off.jpg";
	img.rept_on = new Image();
	img.rept_on.src = "images/btn_rept_on.jpg";

	// Play 
	img.playt_off = new Image();
	img.playt_off.src = "images/btn_play.jpg";
	img.playt_on = new Image();
	img.playt_on.src = "images/btn_play_on.jpg";

	// Pause & Play 
	img.pauzt_off = new Image();
	img.pauzt_off.src = "images/btn_pauz_off.jpg";
	img.pauzt_on = new Image();
	img.pauzt_on.src = "images/btn_pauz_on.jpg";

	// Stop 
	img.stopt_off = new Image();
	img.stopt_off.src = "images/btn_stop.jpg";
	img.stopt_on = new Image();
	img.stopt_on.src = "images/btn_stop_on.jpg";
}