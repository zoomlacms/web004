<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>在线支付状态</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link href="../User/css/commentary.css" rel="stylesheet" type="text/css" />
<link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div>
    <br />
    <br />
    <asp:Label ID="LblResult" runat="server" Text="在线支付成功"></asp:Label>
</div>
</form>
</body>
</html>
<script runat="server">
protected void Page_Load(object sender, EventArgs e)
{
    if (!Page.IsPostBack)
    {
        if(Request.QueryString["PayMessage"] == "ok")
        {
            LblResult.Text = "在线支付成功！";
            LblResult.Text = LblResult.Text + "<br><a href='/User/Info/Payment.aspx'>点此查看在线支付记录</a>";
        }
        else
        {
            LblResult.Text = "在线支付失败！";
        }
    }
}
</script>