<%@ page language="C#" autoeventwireup="true" inherits="Guild_manage_DetailsView, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" align="center"><span class="style1">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;贡献度获得清单</span></td>
  </tr>
</table>
<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">

<asp:GridView ID="Egv" runat="server" 
         AutoGenerateColumns="False" 
       DataKeyNames="ID"  Width="100%">
       <Columns>
       <asp:BoundField HeaderText="日期"　DataField="PusTime" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="8%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="分值"　DataField="Score" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="8%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="理由"　DataField="Reason" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="12%" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>         
       </Columns>
       <EmptyDataTemplate>当前没有相关记录！</EmptyDataTemplate>
       
         </asp:GridView>     
<tr>
                  <td>              
        <asp:Panel ID="panelpage" runat="server">
            总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
            <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
<asp:Label ID="FirstPage"
                runat="server"></asp:Label>
            <asp:Label ID="RePage" runat="server"></asp:Label>
            <asp:Label ID="NextPage" runat="server"></asp:Label>
            <asp:Label ID="EndPage" runat="server"></asp:Label>
        </asp:Panel>
         
    </td>
              </tr>
</table>

    </div>
    </form>
</body>
</html>
