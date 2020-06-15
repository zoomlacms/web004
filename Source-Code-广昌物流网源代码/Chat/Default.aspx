<%@ page language="C#" autoeventwireup="true" inherits="Chat_Default, App_Web_lxhu43nl" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>公共聊天室—Powered by Zoomla!逐浪CMS</title>
    <meta http-equiv="content-Type" content="text/html" charset="utf-8" />
    <link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
</head>
<frameset rows="*,123" cols="*" framespacing="1" frameborder="yes" border="1">
    <frameset rows="*" cols="*,213" framespacing="1" frameborder="yes" border="1">
        <frame src="OnLine.aspx" name="mainFrame" scrolling="no" noresize id="mainFrame"
            title="mainFrame" />
        <frame src="UserList.aspx" name="rightFrame" scrolling="Yes" noresize="noresize"
            id="rightFrame" title="rightFrame" />
    </frameset>
    <frame src="SendMessage.aspx" name="bottomFrame" scrolling="Yes" noresize="noresize"
        id="bottomFrame" title="bottomFrame" />
</frameset>
<noframes>
    <body>
    </body>
</noframes>
</html>