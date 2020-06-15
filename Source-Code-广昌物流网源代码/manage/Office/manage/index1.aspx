<%@ page language="C#" autoeventwireup="true" inherits="OA_index, App_Web_g5tsi4tm" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>逐浪CMS后台管理主页</title>

<link href="MyCss/index.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/JavaScript">
    var StyleSheetPath = "/App_Themes/AdminDefaultTheme/";
    function ShowHideLayer(val, rval) {
        for (var i = 1; i < 11; i++) {
            if (i != val) {
                if (document.getElementById('Menu_' + i.toString()).style.display != "none") {
                    document.getElementById('Menu_' + i.toString()).style.display = "none";
                }
                if (document.getElementById('Main_' + i.toString()) != null) {
                    document.getElementById('Main_' + i.toString()).className = "Main_1";
                }
            }
            else {
                document.getElementById('Menu_' + i.toString()).style.display = "";
                if (document.getElementById('Main_' + i.toString()) != null) {
                    document.getElementById('Main_' + i.toString()).className = "Main_2";
                }
            }
            if (rval > 0) {
                document.getElementById('Main_' + rval.toString()).className = "Main_2";
            }

        }
    }

    function SetWinHeight(obj) {
        var win = obj;
        if (document.getElementById) {
            if (win && !window.opera) {
                if (win.contentDocument && win.contentDocument.body.offsetHeight) {
                    win.height = win.contentDocument.body.offsetHeight;
                    win.width = win.contentDocument.body.offsetWidth;
                    document.getElementById("main_right").width = parent.document.body.scrollWidth - document.getElementById("left").offsetWidth - 10;
                }
                else if (win.Document && win.Document.body.scrollHeight) {
                    win.height = win.Document.body.scrollHeight;
                    win.width = win.Document.body.scrollWidth;
                    document.getElementById("main_right").width = parent.document.body.scrollWidth - document.getElementById("left").scrollWidth - 10;
                }
            }
        }
    }

    function ShowMains(lefturl, righturl) {
        var objLeft = window.frames['left'];
        var objContent = window.frames['main_right'];
        if (lefturl != "")
            objLeft.location.href = lefturl;
        objContent.location.href = righturl;
    }

    var UserAgent = navigator.userAgent.toLowerCase();
    var ie4 = document.all && UserAgent.indexOf("opera") == -1
    var ns6 = document.getElementById && !document.all

    function $(id) {
        return document.getElementById(id);
    }

    //菜单

    var menuOffX = 0		//菜单距连接文字最左端距离
    var menuOffY = 23		//菜单距连接文字顶端距离

    function showmenu(e, vmenu, mod, tops) {
        if (tops == null) {
            tops = menuOffY;
        }

        if (!vmenu) { return false; } //如果空则不显示
        var which = vmenu
        menuobj = $("popmenu")
        menuobj.innerHTML = which
        menuobj.contentwidth = menuobj.offsetWidth
        eventX = e.clientX
        eventY = e.clientY
        var rightedge = document.body.clientWidth - eventX
        var bottomedge = document.body.clientHeight - eventY
        var getlength
        if (rightedge < menuobj.contentwidth) {
            getlength = ie4 ? document.body.scrollLeft + eventX - menuobj.contentwidth + menuOffX : ns6 ? window.pageXOffset + eventX - menuobj.contentwidth : eventX - menuobj.contentwidth
        } else {
            getlength = ie4 ? ie_x(event.srcElement) + menuOffX : ns6 ? window.pageXOffset + eventX : eventX
        }
        menuobj.style.left = getlength + 'px'

        if (bottomedge < menuobj.contentheight && mod != 0) {
            getlength = ie4 ? document.body.scrollTop + eventY - menuobj.contentheight - event.offsetY + tops - 23 : ns6 ? window.pageYOffset + eventY - menuobj.contentheight - 10 : eventY - menuobj.contentheight
        }
        else {
            getlength = ie4 ? ie_y(event.srcElement) + tops : ns6 ? window.pageYOffset + eventY + 10 : eventY
        }
        menuobj.style.top = getlength + 'px'

        menuobj.style.visibility = "visible"
    }

    function ie_y(e) {
        var t = e.offsetTop;
        while (e = e.offsetParent) {
            t += e.offsetTop;
        }
        return t;
    }
    function ie_x(e) {
        var l = e.offsetLeft;
        while (e = e.offsetParent) {
            l += e.offsetLeft;
        }
        return l;
    }

    function highlightmenu(e, state) {
        if (document.all)
            source_el = event.srcElement
        else if (document.getElementById)
            source_el = e.target
        if (source_el.className != "menuskin" && source_el.className != "") {
            source_el.className = (state == "on") ? "mouseoverstyle" : "menuitems";
        }
        else {
            while (source_el.id != "popmenu") {
                source_el = document.getElementById ? source_el.parentNode : source_el.parentElement
                if (source_el.className != "menuskin" && source_el.className != "") {
                    source_el.className = (state == "on") ? "mouseoverstyle" : "menuitems"
                }
            }
        }
    }

    function hidemenu() { if (window.menuobj) menuobj.style.visibility = "hidden" }

    function contains_ns6(a, b) {
        while (b.parentNode)
            if ((b = b.parentNode) == a)
            return true;
        return false;
    }
    function dynamichide(e) {
        if (ie4 && !menuobj.contains(e.toElement))
            hidemenu()
        else if (ns6 && e.currentTarget != e.relatedTarget && !contains_ns6(e.currentTarget, e.relatedTarget))
            hidemenu()
    }

    document.onclick = hidemenu
    document.write("<div class=menuskin id=popmenu onmouseover=highlightmenu(event,'on') onmouseout=highlightmenu(event,'off');dynamichide(event)></div>")
    // 菜单END


    //add area script
    function ValidateTextboxAdd(box, button) {
        var buttonCtrl = $(button);
        if (buttonCtrl != null) {
            if (box.value == "" || box.value == box.Helptext) {
                buttonCtrl.disabled = true;
            }
            else {
                buttonCtrl.disabled = false;
            }
        }
    }
    //add area script end
</script>

</head>

<body id="Indexbody">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="3" style="height: 102px">
                <form id="myform" runat="server">
                <div id="content" style="text-align:center">
                    <ul id="ChannelMenuItems">
                        <li id="Main_1" class="Main_2" onclick="ShowHideLayer(1,0)">我的工作台</li>
                        <li id="Main_2" class="Main_1" onclick="ShowHideLayer(2,0)">学籍管理</li>
                        <li id="Main_3" class="Main_1" onclick="ShowHideLayer(3,0)">物流管理</li>
                        <li id="Main_4" class="Main_1" onclick="ShowHideLayer(4,0)">财务管理</li>
                        <li id="Main_5" class="Main_1" onclick="ShowHideLayer(5,0)">考勤模块管理</li>
                        <li id="Main_6" class="Main_1" onclick="ShowHideLayer(6,0)">事务管理</li>
                        <li id="Main_7" class="Main_1" onclick="ShowHideLayer(7,0)">文件传输管理</li>
                        <li id="Main_8" class="Main_1" onclick="ShowHideLayer(8,0)">系统配置</li>
                        <li id="Main_9" class="Main_1" onclick="ShowHideLayer(9,0)">客户关系管理</li>
                       <li id="Main_10" class="Main_1" onclick="ShowHideLayer(10,0)">内部交流</li>
                     
                    </ul>
                    <!-- 子菜单开始 -->
                    <div id="SubMenu">
                        <!-- 我的工作台 -->
                        <div id="Menu_1" style="width: 100%;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('Profile/QuickLinks.aspx','Profile/Worktable.aspx')">工作台首页</a></li>
                                <li><a href="#" onclick="ShowMains('','Profile/ModifyPassword.aspx')">修改密码</a></li>
                                <li><a href="logout.aspx"><span class="SignOut">安全退出</span></a></li>
                            </ul>
                        </div>
                        <!-- 学籍管理 -->
                        <div id="Menu_2" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('Content/NodeTree.aspx','Content/ContentManage.aspx')">专业管理</a></li>
                                <li><a href="#" onclick="ShowMains('Content/SpecTree.aspx','Content/SpecContent.aspx')">年级管理</a></li>
                                <li><a href="#" onclick="ShowMains('Content/CreateLink.aspx','Content/CreateHtmlContent.aspx')">班级管理</a></li>
                                <li><a href="#" onclick="ShowMains('Content/NodeTree.aspx?t=1','Content/CommentManage.aspx')">学籍管理</a></li>
                            </ul>
                        </div>
                        <!-- 物流管理 -->
                        <div id="Menu_3" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('User/AdminLink.aspx','User/AdminManage.aspx')">用户服务指南</a></li>
                                <li><a href="#" onclick="ShowMains('User/UserGuide.aspx','User/UserManage.aspx')">需求预测</a></li>
                                <li><a href="#" onclick="ShowMains('User/ModelGuide.aspx','User/UserModelManage.aspx')">定单管理</a></li>
                                <li><a href="#" onclick="ShowMains('User/PermissionGuide.aspx','User/PermissionInfo.aspx')">配送管理</a></li>
                                <li><a href="#" onclick="ShowMains('User/MessageLink.aspx','User/Message.aspx')">运输管理</a></li>
                                <li><a href="#" onclick="ShowMains('User/MailGuide.aspx','User/RegValidateMail.aspx')" onmouseover="showmenu(event,'<div class=menuitems><a href=User/RegValidateMail.aspx target=main_right>邮件内容管理</a></div><div class=menuitems><a href=User/SendMailList.aspx target=main_right>发送邮件管理</a></div><div class=menuitems><a href=User/MailListManage.aspx target=main_right>邮件列表管理</a></div><div class=menuitems><a href=User/SubscribeTypeList.aspx target=main_right>订阅管理</a></div><div class=menuitems><a href=User/AddMail.aspx target=main_right>邮件发送</a></div><div class=menuitems><a href=User/MailIdiographList.aspx target=main_right>签名管理</a></div>')">存货管理</a></li>
                                <li><a href="#" onclick="ShowMains('User/JobsGuide.aspx','User/JobsConfig.aspx')">仓库管理</a> </li>
                                <li><a href="#" onclick="ShowMains('zone/ModelGuide.aspx','zone/zoneManage.aspx')">采购管理</a> </li>
                                <li><a href="#" onclick="ShowMains('Pub/PubGuide.aspx','Pub/pubmanage.aspx')" onmouseover="showmenu(event,'<div class=menuitems><a href=pub/pubinfo.aspx target=main_right>添加互动模块</a></div><div class=menuitems><a href=pub/pubmanage.aspx target=main_right>互动模块管理</a></div><div class=menuitems><a href=pub/pubmanage.aspx target=main_right>互动信息管理</a></div><div class=menuitems><a href=pub/pubModel.aspx target=main_right>互动<font color=red>模型</font>管理</a></div><div class=menuitems><a href=pub/PubRecycler.aspx target=main_right>存档管理</a></div>')">包装管理</a> </li>
                            </ul>
                        </div>
                        <!-- 财务管理 -->
                        <div id="Menu_4" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('Shop/ShopNodeTree.aspx','Shop/ProductManage.aspx')">费用管理</a></li>
                                <li><a href="#" onclick="ShowMains('Shop/StockGuid.aspx','Shop/StockManage.aspx')">分析报表</a></li>
                                <li><a href="#" onclick="ShowMains('Shop/CartGuide.aspx','Shop/CartManage.aspx')">预算管理</a> </li>
                                <li><a href="#" onclick="ShowMains('Shop/OrderLink.aspx','Shop/OrderList.aspx')">借款管理</a> </li>
                                <li><a href="#" onclick="ShowMains('Shop/ListGuide.aspx','Shop/BankRollList.aspx')">报销管理</a> </li>
                                <li><a href="#" onclick="ShowMains('Shop/StatisticLink.aspx','Shop/TotalSale.aspx')">财务收支</a> </li>
                                <li><a href="#" onclick="ShowMains('Shop/PromotionGuide.aspx','Shop/PresentProject.aspx')">财务统计</a></li>                    
                            </ul>
                        </div>
                        <!-- 考勤模块管理 -->
                        <div id="Menu_5" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('3Dmanage/InfoGuid.aspx','3Dmanage/Infomanage.aspx')">参数配置</a></li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/AfficheGuid.aspx','3Dmanage/Affiche.aspx')">公告管理</a> </li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/UserGuid.aspx','3Dmanage/UserManage.aspx')">用户管理</a></li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/boothGuide.aspx','3Dmanage/boothManage.aspx')">摊位管理</a> </li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/SceneGuide.aspx','3Dmanage/SceneManage.aspx')">场景管理</a> </li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/WareGuide.aspx','3Dmanage/Waremanage.aspx')">商品管理</a></li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/InfoGuid.aspx','3Dmanage/Infomanage.aspx')">参数配置</a></li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/AfficheGuid.aspx','3Dmanage/Affiche.aspx')">公告管理</a> </li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/UserGuid.aspx','3Dmanage/UserManage.aspx')">用户管理</a></li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/boothGuide.aspx','3Dmanage/boothManage.aspx')">摊位管理</a> </li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/SceneGuide.aspx','3Dmanage/SceneManage.aspx')">场景管理</a> </li>
                                <li><a href="#" onclick="ShowMains('3Dmanage/WareGuide.aspx','3Dmanage/Waremanage.aspx')">商品管理</a></li>
                            </ul>
                        </div>
                        <!-- 事务管理 -->
                        <div id="Menu_6" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('page/PageregGuide.aspx','page/UserModelManage.aspx')">电子签章</a></li>
                                <li><a href="#" onclick="ShowMains('page/PageGuide.aspx','page/PageManage.aspx')">制度管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/CorporationGuide.aspx','page/PageAudit.aspx')">公告通知管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/NodeTree.aspx','page/PageContent.aspx')">考勤管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/ModelGuide.aspx','page/PageModelManage.aspx')">职员管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/PageStyleGuide.aspx','page/PageStyle.aspx')">专利论文管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/PageregGuide.aspx','page/UserModelManage.aspx')">生产管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/PageGuide.aspx','page/PageManage.aspx')">人事档案管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/CorporationGuide.aspx','page/PageAudit.aspx')">工资上报管理</a></li>
                                <li><a href="#" onclick="ShowMains('SynodLink.aspx','SynodManage.aspx')">会议管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/ModelGuide.aspx','page/PageModelManage.aspx')">车辆管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/PageStyleGuide.aspx','page/PageStyle.aspx')">组织机构信息管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/PageGuide.aspx','page/PageManage.aspx')">人事档案管理</a></li>
                                <li><a href="#" onclick="ShowMains('page/CorporationGuide.aspx','page/PageAudit.aspx')">工作流程管理</a></li>
                            </ul>
                        </div>
                        
                          <!-- 文件传输管理 -->
				        <div id="Menu_7" style="width: 100%; display: none;">
				          <ul> 
				          <li><a href="#" onclick="ShowMains('UserShopManage/ApplySetTree.aspx','UserShopManage/ApplyStyle.aspx')">公共讨论区</a> </li>
				          <li><a href="#" onclick="ShowMains('UserShopManage/StoreTree.aspx','UserShopManage/StoreManage.aspx')">网络会议</a> </li>
				          <li><a href="#" onclick="ShowMains('UserShopManage/StoreStyleTree.aspx','UserShopManage/StoreStyleManage.aspx')">公共文件柜</a> </li>          
				          <li><a href="#" onclick="ShowMains('UserShopManage/ShopNodeTree.aspx','UserShopManage/ProductManage.aspx')">网络硬盘</a> </li>            
				          </ul>
				        </div>

                        <!-- 系统配置 -->
                        <div id="Menu_8" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('Config/ConfigGuide.aspx','Config/SiteInfo.aspx')">参数配置</a></li>
                                <li><a href="#" onclick="ShowMains('Content/ModelGuide.aspx','Content/ModelManage.aspx')">公告管理</a></li>
                                <li><a href="#" onclick="ShowMains('Content/SetNodeTree.aspx','Content/NodeManage.aspx')">节点管理</a></li>
                                <li><a href="#" onclick="ShowMains('Content/AuditingLink.aspx','Content/AuditingState.aspx')">工作流配置</a></li>
                                <li><a href="#" onclick="ShowMains('Content/FlowLink.aspx','Content/FlowManager.aspx')">流程管理</a></li>
                                <li><a href="#" onclick="ShowMains('Content/SpecLink.aspx','Content/SpecialManage.aspx')">专题管理</a></li>
                                <li><a href="#" onclick="ShowMains('Template/TemplateLink.aspx','Template/TemplateManage.aspx')">风格模板与标签管理</a></li>
                                <li><a href="#" onclick="ShowMains('AddOn/PayPlatLink.aspx','AddOn/PayPlatManage.aspx')">在线支付平台管理</a></li>
                            </ul>
                        </div>
                        
                          <!-- 附件管理 -->
                        <div id="Menu_9" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('Plus/ADGuide.aspx','Plus/ADZoneManage.aspx')">广告管理</a></li>
                                <li><a href="#" onclick="ShowMains('CallStat/PageLeft.aspx','CallStat/StatInfoListReport.aspx')">访问统计</a></li>
                                <li><a href="#" onclick="ShowMains('AddOn/OthersGuide.aspx','AddOn/CorrectManage.aspx')">纠错管理</a></li>
                                <li><a href="#" onclick="ShowMains('Plus/LogGuide.aspx','Plus/LogManage.aspx')">日志管理</a></li>
                                <li><a href="#" onclick="ShowMains('AddOn/OthersGuide.aspx','AddOn/SourceManage.aspx')">其他管理</a></li>
                                <li><a href="#" onclick="ShowMains('Plus/SurveyGuide.aspx','Plus/SurveyManage.aspx')">问卷调查和投票管理</a></li>
                                <li><a href="#" onclick="ShowMains('Plus/BbsGuide.aspx','Plus/GuestCateMana.aspx')">留言管理</a></li>
                                <li><a href="#" onclick="ShowMains('Plus/UploadDir.aspx','Plus/UploadFile.aspx')">上传文件管理</a></li>
                                <li><a href="#" onclick="ShowMains('AddOn/DictionaryGuide.aspx','AddOn/DictionaryManage.aspx')">数据字典管理</a></li>
                                <li><a href="#" onclick="ShowMains('User/CustomerGuide.aspx','User/CustomerService.aspx')">客服管理</a></li>
                            </ul>
                        </div>
                        <!-- 项目管理 -->
                        <div id="Div1" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="#" onclick="ShowMains('AddOn/WorkGuid.aspx','AddOn/ProjectIndex.aspx')">日常操作</a></li>
                                <li><a href="#" onclick="ShowMains('AddOn/ProjectGuide.aspx','AddOn/ProjectManage.aspx')">项目管理</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- 子菜单结束 -->
                    <div id="Announce" style="right: 5px; top: 3px">
                        <a href="/" target="_blank" title="网站首页">网站首页</a>&nbsp;|&nbsp;<a href="http://bbs.zoomla.cn/" target="_blank" title="逐浪官方帮助">技术社区</a>&nbsp;|&nbsp;<a href="http://www.zoomla.cn/" target="_blank" title="访问逐浪官方网站">官方网站</a> | <a href="SignOut.aspx" title="安全退出">安全退出</a>
                    </div>
                </div>
                </form>
            </td>
        </tr>
        <tr style="vertical-align: top;">
            <td id="frmTitle" style="width: 195px">
                <iframe frameborder="0" id="left" name="left" scrolling="no" src="zo_Left.aspx" style="width: 195px; visibility: visible; z-index: 2;"<%--  onload="document.all('left').style.height=left.document.body.scrollHeight;"--%> onload="Javascript:SetWinHeight(this)"></iframe>
            </td>
            <td class="but" style="width: 5px;">
            </td>
            <td>
                <iframe frameborder="0" id="main_right" name="main_right" scrolling="auto" src="zo_Main.aspx" style="z-index: 2;"  onload="Javascript:SetWinHeight(this)"></iframe>
                
              
                
                
                <div class="clearbox2" />
            </td>
        </tr>
    </table>
</body>
</html>
