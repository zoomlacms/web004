<%@ page language="C#" autoeventwireup="true" inherits="User_BossInfo_NodeTree, App_Web_yxbfkpr1" viewStateEncryptionMode="Never" %>
<html>
<head id="Head1" runat="server">
<title>会员中心</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/menu.js"></script>
<script type="text/javascript" language="javascript">
        function Switch(obj) {
            obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
            var nextDiv;
            if (obj.nextSibling) {
                if (obj.nextSibling.nodeName == "DIV") {
                    nextDiv = obj.nextSibling;
                }
                else {
                    if (obj.nextSibling.nextSibling) {
                        if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                            nextDiv = obj.nextSibling.nextSibling;
                        }
                    }
                }
                if (nextDiv) {
                    nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
                }
            }
        }
        function OpenLink(lefturl, righturl) {
            if (lefturl != "") {
                parent.frames["left"].location = lefturl;
            }
            parent.frames["main_right"].location = righturl;
        }
    </script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top:1px;">

    <form id="form1" runat="server">
    <div class="us_topinfo" style="margin-top:0px;">
    	  <div class="us_showinfo">
		  <h1>您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="//" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span> &gt;&gt; </span><span>我的加盟商</span></span>
          </h1>
	  </div>
	    <div class="s_body" style="width:630px;">
     <div id="Guide_back">
    <ul>
        <li id="Guide_main">
            <div id="Guide_box" style="height:600px">         
                <asp:TreeView ID="tvNav" runat="server" ExpandDepth="1" ShowLines="True" EnableViewState="False" NodeIndent="10">
                    <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
                    <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
                    <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                    <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                </asp:TreeView>
            </div>
        </li>
     </ul>
    </div>
    </div>
    </div>

    </form>
</body>
</html>