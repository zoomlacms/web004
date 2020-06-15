//zoomla!CMS 管理员导航条
function Zo_adminGD(gdid) {

    //设置管理导航字符串
    //一个栏目用;间隔
    var zo_gstr = "工作台首页|zo_Main.html,修改密码|aa.aspx,退出登录|logout.aspx;" + //工作台首页
    "专业管理|1.aspx,年级管理|2.aspx,班级管理|3.aspx,学籍管理|a.aspx;" +//学籍管理
    "用户服务指南|a.aspx,需求预测|a.aspx,定单管理|a.aspx,配送管理|a.aspx,运输管理|a.aspx,存货管理|a.aspx,仓库管理|a.aspx,工厂和仓库|a.aspx,采购管理|a.aspx,包装管理|a.aspx,情报信息|a.aspx,库存管理|a.aspx,搬运装卸|a.aspx;" +//物流管理
    "费用管理|a.aspx,分析报表|a.aspx,预算管理|a.aspx,借款管理|a.aspx,报销管理|a.aspx,财务收支|a.aspx,财务统计|a.aspx;" +//财务管理
    "参数配置|a.aspx,公告管理|a.aspx,用户管理|a.aspx,摊位管理|a.aspx,场景管理|a.aspx,商品管理|a.aspx;"+
    "广告管理|a.aspx,访问统计|a.aspx,纠错管理|a.aspx,日志管理|a.aspx,其他管理|a.aspx,访问统计|a.aspx,问卷调查和投票管理|a.aspx,留言管理|a.aspx,上传文件管理|a.aspx,数据字典管理|a.aspx;" +//事务管理
    "日常操作|a.aspx,项目管理|a.aspx;" +//日常操作
    "黄页申请设置|a.aspx,黄页用户栏目管理|a.aspx,黄页内容管理|a.aspx,黄页模型管理|a.aspx,黄页样式管理|a.aspx;"+
    "店铺申请设置|a.aspx,商家店铺管理|a.aspx,商家店铺模板管理|a.aspx,商品模型管理|a.aspx,商家店铺管理|a.aspx,店铺配置|a.aspx;"+
    "开放时间|a.aspx,可访问IP设置|a.aspx,组织机构设置|a.aspx,电子公文设置|a.aspx,文档共享管理|a.aspx,权限分配|a.aspx,系统资源管理|a.aspx,日志管理|a.aspx,数据库管理|a.aspx";

    for (i = 0; i < 9; i++) {
        var zo_DivName = document.getElementById("zo_gd" + (i + 1));
        zo_DivName.className = "zo_gd_in";
    }
    document.getElementById("zo_gd" + gdid).className = "zo_gd_on";

    var nstr = "";
    var zo_gstr = zo_gstr.split(";")[gdid - 1];
    for (ii = 0; ii < zo_gstr.split(",").length; ii++) {
        var tsplit = zo_gstr.split(",")[ii].split("|");
        var nstr = nstr + "<li><a href='" + tsplit[1] + "' target='main'>" + tsplit[0] + "</a></li>";
    }
    document.getElementById("zo_guidestr").innerHTML = "<ul>" + nstr + "</ul><div class='cleardiv'></div>";

}

//左边导航伸缩
var displayBar = false;
function left_guides(styles) {
    var mydiv = document.getElementById("left_guide");
    var dodiv = document.getElementById("left_guide_list");
    if (displayBar) {
        mydiv.className = "left_gd_on";
        dodiv.style.display = "none";
        displayBar = false;
    } else {
        mydiv.className = "left_gd_in";
        dodiv.style.display = "";
        displayBar = true;
    }
}