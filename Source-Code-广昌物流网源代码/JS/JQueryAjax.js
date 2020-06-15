    var ZoomLa = {};


    /*使用post方式请求页面
    */
    ZoomLa.postpage = function (url, obj) {
        if (ZoomLa.IsExist(obj)) {
            $("#" + obj).html("正在载入中,请稍等...");
        }
        $.post(url, '',
	        function (data) {
	            if (ZoomLa.IsExist(obj)) {
	                $("#" + obj).html(data);
	            }
	        }, "");
    }
	/*使用get方式请求页面
	*/
	ZoomLa.getpage = function (url, obj) {
    if (ZoomLa.IsExist(obj)) {
        $("#" + obj).html("正在载入中,请稍等...");
    }
    $.get(url, '',
	    function (data) {
	        if (ZoomLa.IsExist(obj)) {
	            $("#" + obj).html(data);
	        }
	    }, "");
}

	/*ajax登陆
	*/
	ZoomLa.ajaxlogin = function (username, password, obj) {
    if (ZoomLa.IsExist(obj)) {
        $("#" + obj).html("正在载入中,请稍等...");
    }
    var url = "/user/login.aspx?" + Math.random() + "";
    $.post(url, { "UserName": username,
        "Password": password,
        "postlogin": "True",
        "DropExpiration": "",
        "ajaxlogin": "True"
    },
    function (data) {
        //$("#" + obj).html(data);
        if (data != null && data != "") {
            if (data.indexOf('错误') == -1) {
                eval(data);
            }
            else {
                if (ZoomLa.IsExist(obj)) {
                    $("#" + obj).html("登陆失败！");
                }
            }
        }
        else {
            if (ZoomLa.IsExist(obj)) {
                $("#" + obj).html("登陆失败！");
            }
        }
    }, "");
}

/*ajax退出
*/
ZoomLa.ajaxlogout = function (returnurl) {
    var url = "/user/logout.aspx?" + Math.random() + "";
    $.post(url, {},
    function (data) {
        if (returnurl != null && returnurl != "")
            location.href = returnurl;
    }, "");
}

/*判断控件是否存在
*/
ZoomLa.IsExist = function (obj) {
    if ($("#" + obj).length) {
        return true;
    }
    else {
        return false;
    }
}

/*执行命令
*/
ZoomLa.Execute = function (command) {
    $(function () { eval(command) });
}

/*读取URL到控件obj
*/
ZoomLa.loadurl = function (obj, url) {
    $("#" + obj).load(url);
}

//Execute("loadurl('txt', 'login.aspx');");
//Execute("ajaxlogout();");