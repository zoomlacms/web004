var isOnSubmit = false;
function DOSubmit(param) {
    if (param == "register") {
        if (isOnSubmit) {
            alert('正在提交，请耐心等待！');
            return false;
        }
        if (OK() == false)
            return false;
   		if( document.form1.username.value =="" ) {
				form1.username.focus();
				form1.username.style.bgcolor="#ff0000";
                return false;
      	}
    	if( document.form1.nickname.value =="" ) {
				form1.nickname.focus();
                return false;
      	} 
    	if( document.form1.password.value =="" ) {
				form1.password.focus();
                return false;
      	} 
    	if( document.form1.password1.value =="" ) {
				form1.password1.focus();
                return false;
      	} 	 
		if( document.form1.code.value =="" ) {
				form1.code.focus();
                return false;
      	}
        if (document.form1.ischeck.value == "0") {
            alert("请选择已经阅读并同意游就游吧服务条款");
            return false;
        }
    }
    document.form1.regOperation.value = param;
    isOnSubmit = true;
    return true;
}
function OK() {
    var obj ;

    obj = document.getElementById("usernameTip");
    if (obj.innerHTML.indexOf("通行证可以使用") == -1) {
        document.form1.username.focus();
        return false;
    }
    obj = document.getElementById("nickTip");
    if (obj.innerHTML.indexOf("昵称可以使用") == -1) {
        document.form1.nickname.focus();
        return false;
	}	
    obj = document.getElementById("passwdTip");
    if (obj.innerHTML.indexOf("密码可以使用") == -1) {
        document.form1.password.focus();
        return false;
    }
	obj = document.getElementById("surePasswdTip");
    if (obj.innerHTML.indexOf("请注意记住密码") == -1) {
        document.form1.password1.focus();
        return false;
    }
	obj = document.getElementById("validateNoright");
    if (obj.innerHTML.indexOf("验证码正确") == -1) {
        document.form1.code.focus();
        return false;
    }	
    return true;
}
function showTable() {
}
function setChexBox() {
    if (document.form1.ischeck.value == "0")
        document.form1.ischeck.value = "1";
    else
        document.form1.ischeck.value = "0";
}
function checkUsername(username) {
    document.getElementById("usernameTip").className = "";
    username = trim(username);
	var patrn=/^[0-9a-zA-Z][\w-]{4,17}$/;
    if (username == "") {
        document.getElementById("usernameTip").innerHTML = "<font color=red >请输入您的通行证，长度为<font color=#0080FF>5-16</font>个字符或者数字组成！</font>";
        return false;
    }
    if (username.replace(/[^\x00-\xff]/g,"ab").length < 4 || username.replace(/[^\x00-\xff]/g,"ab").length > 16) {
        document.getElementById("usernameTip").innerHTML = "<font color=red >提示：通行证长度为<font color=#0080FF>5-16</font>个字符或者数字组成！</font>";
		//document.form1.username.focus();
        return false;
    }
	if (!patrn.exec(username)){
		document.getElementById("usernameTip").innerHTML = "<font color=red >提示：您的通行证不合法，长度为<font color=#0080FF>5-16</font>个字符或者数字组成！</font>";
		//document.form1.username.focus();
		return false;
	}
	
	getMyHTML("check.asp?operator=checkusername&UserName="+username, "usernameTip");
    showTable();
    return true;
}
function checkNick(nickname) {
    document.getElementById("nickTip").className = "";
    nickname = trim(nickname);
    if (nickname == "") {
        document.getElementById("nickTip").innerHTML = "<font color=red>昵称不能为空，请输入您的昵称，长度为<font color=#0080FF>2-16</font>个字！</font>";
        return false;
    }
    if (nickname.replace(/[^\x00-\xff]/g,"ab").length < 2 || nickname.replace(/[^\x00-\xff]/g,"ab").length > 16) {
        document.getElementById("nickTip").innerHTML = "<font color=red >提示：昵称长度控制在<font color=#0080FF>2-16</font>个字！</font>";
		//document.form1.nick.focus();
        return false;
    }
    getMyHTML("check.asp?operator=checknick&NickName="+nickname, "nickTip");
    showTable();
    return true;
}
function is_number(str)
{
	exp=/[^0-9()-]/g;
	if(str.search(exp) != -1)
	{
		return false;
	}
	return true;
}
function checkPassword(passwd) {
    document.getElementById("passwdTip").className = "";
    if (passwd == "") {
        document.getElementById("passwdTip").innerHTML = "<font color=red >请输入您的登录密码！</font>";
        return false;
    }
    if (passwd.length > 16 || passwd.length < 6) {
        document.getElementById("passwdTip").innerHTML = "<font color=red >提示：密码长度为<font color=#0080FF>6-16</font>个字符，请重新设置！</font>";
        return false;
    }

    if (passwd.indexOf("&") != -1 ||
        passwd.indexOf("%") != -1 ||
        passwd.indexOf("=") != -1 ||
        passwd.indexOf("+") != -1 ||
        passwd.indexOf("\'") != -1
            ) {
        document.getElementById("passwdTip").innerHTML = "<font color=red >提示：请重新输入密码，密码中不允许含有&,%,=,+,\'字符！正确的密码由字母或数字组成，区分大小写，长度在<font color=#0080FF>6-16</font>个字符之间！</font>";
        return false;
    }
    document.getElementById("passwdTip").innerHTML = "<img src=../images/ok.gif width=15 height=15 align=absmiddle> <font color=green>该密码可以使用，请注意记住密码！</font>";
    showTable();
    return true;
}
function checkSurePassword(passwd, spasswd) {
    document.getElementById("surePasswdTip").className = "";
    if (passwd != spasswd) {
        document.getElementById("surePasswdTip").innerHTML = "<font color=red >提示：两次密码输入的不一样！</font>";
        return false;
    }
    if (document.form1.password1.value == "") {
        document.getElementById("surePasswdTip").innerHTML = "<font color=red >重复登录密码不能为空！</font>";
        return false;
    }

    if (spasswd.length > 16 || spasswd.length < 6) {
        document.getElementById("surePasswdTip").innerHTML = "<font color=red >提示：两次密码输入的不一样，密码长度为<font color=#0080FF>6-16</font>个字符</font>";
        return false;
    }
    document.getElementById("surePasswdTip").innerHTML = "<img src=../images/ok.gif width=15 height=15 align=absmiddle> <font color=green >重复密码与密码一致，请注意记住密码!</font>";
    showTable();
    return true;
}
function checkEmail(email) {
    document.getElementById("emailTip").className = "";
    email = trim(email);
    if (email == "") {
        document.getElementById("emailTip").innerHTML = "<font color=red>请输入您有效的电子邮箱！</font>";
        return false;
    }
    if(!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(email)) {
        document.getElementById("emailTip").innerHTML = "<font color=red >提示：您的邮箱地址格式不正确！</font>";
        return false;
    }
    document.getElementById("emailTip").innerHTML = "<img src=../images/ok.gif width=15 height=15 align=absmiddle> <font color=green >邮箱地址正确可以使用!</font>";
    showTable();
    return true;
}
function setValidateNo(code) {
    document.getElementById("validateNoright").className = "";
    code = trim(code);
	if (code == "") {
        document.getElementById("validateNoright").innerHTML = "<font color=red >请输入验证码！</font>";
        return false;
    }
	if(!is_number(code)){
		document.getElementById("validateNoright").innerHTML = "<font color=red >提示：验证码必须是数字！</font>";
		return false;
	}
	getMyHTML("check.asp?operator=checkcode&code="+code, "validateNoright");
    showTable();
    return true;
}
function getValidateNumber() {
	var today = new Date(); 	
	var getimagecode = document.getElementById("imgcode");
    getimagecode.src = "/Common/ValidateCode.aspx?" +  today .getTime();
    document.form1.code.value = "";
    document.getElementById('validateNoright').innerHTML = "";
}
function getValidateNumbernew() {
    var today = new Date();
    var getimagecode = document.getElementById("imgcode");
    getimagecode.src = "/Common/ValidateCodenew.aspx?" + today.getTime();
    document.form1.code.value = "";
    document.getElementById('validateNoright').innerHTML = "";
}
function hideTip(param) {
    document.getElementById(param).innerHTML = "";
    document.getElementById(param).className = "";
}
function doOnFocus(param) {
    var str = "";
	if (param == "nickTip") {
        str = "<font color='#252525'>提示：昵称由汉字或者其他字符组成，长度为<font color=#0080FF>2-16</font>个字。</font>";
    }
    if (param == "usernameTip") {
        str = "<font color='#FF0000'>提示：通行证只能是小写英文，数字组合，且控制在<font color=#0080FF>5-16</font>位。</font>";
    }
    if (param == "passwdTip") {
        str = "<font color='#252525'>提示：密码长度为<font color=#0080FF>6-16</font>个字符，并区分英文字母大小写！</font>";
    }
	if (param == "validateNoright") {
        str = "<font color='#252525'>提示：请键入您在此图片中看到的数字！</font>";
    }
    document.getElementById(param).innerHTML = str;
    document.getElementById(param).className = 'border_1';
}
function GetO(){
    var ajax=false; 
    try { 
    	ajax = new ActiveXObject("Msxml2.XMLHTTP"); 
    } catch (e) { 
   	 	try { 
    		ajax = new ActiveXObject("Microsoft.XMLHTTP"); 
    	} catch (E) { 
    		ajax = false; 
    	} 
    }
    if (!ajax && typeof XMLHttpRequest!='undefined') { 
    	ajax = new XMLHttpRequest(); 
    } 
    return ajax;
}
function getMyHTML(serverPage, objID) { 
var ajax = GetO();
    var obj = document.getElementById(objID); 

    ajax.open("GET", serverPage, true); 

    ajax.onreadystatechange = function() { 
        if (ajax.readyState == 4 && ajax.status == 200) { 
				obj.innerHTML = ajax.responseText; 
        } 
    } 
    ajax.send(null); 
}
function trim(text)
{
    text = text.replace(/^ +/, "");
    //去除串首空格
    text = text.replace(/ +$/, "");
    //去除串尾空格
    return text;
}