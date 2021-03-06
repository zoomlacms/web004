﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_ShowGroupUser, App_Web_kkz2kiul" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>团购人员列表</title>
    <base target="_self" />
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
    function closdlg() {
        Dialog.close();
    }

</script>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
                if (elm[i].checked != xState)
                    elm[i].click();
            }
        }


        var aid = 0;
        var showID = 0;
        var tID = 0;
        //var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
        var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2");
        function ShowTabs(SID) {
            if (SID != tID) {
                if (document.getElementById(arrTabTitle[tID].toString()) != null)
                    document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                if (document.getElementById(arrTabTitle[SID].toString()) != null)
                    document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
                if (document.getElementById(arrTabs[tID].toString()) != null)
                    document.getElementById(arrTabs[tID].toString()).style.display = "none";               
                tID = SID;
                aid = SID;
            }
        }
        function ShowTable() {
            if (aid < 3) {
                aid = aid + 1;
            }          
        }

</script>
<body>
    <form id="form1" runat="server">
      <div class="r_navigation">        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 团购管理
    </div><br />
    <table width="100%" border="0" cellpadding="2" cellspacing="0" class="border" id="TABLE1">
        <tr class="title">
            <td align="left" colspan="2" style="height:26px">
                <b>团购列表:[商品名称：<asp:Literal ID="Literal1" runat="server"></asp:Literal>]</b>
            </td>
        </tr>
        <tr class="title">
            <td>
               <table border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
            <td id="TabTitle0" class="tabtitle" onclick="ShowTabs(0)">
               <a href="ShowGroupUser.aspx?groupby=isbuy&isbuy=1<%=(Request["proid"]!=null&&Request["proid"]!="")?"&proid="+Request["proid"]:"" %>">已支付会员</a>
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                <a href="ShowGroupUser.aspx?groupby=isbuy&isbuy=0<%=(Request["proid"]!=null&&Request["proid"]!="")?"&proid="+Request["proid"]:"" %>">未支付会员</a>
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
              <a href="ShowGroupUser.aspx?groupby=desp&desp=false<%=(Request["proid"]!=null&&Request["proid"]!="")?"&proid="+Request["proid"]:"" %>">未付定金会员</a>
            </td>
        </tr>
             </table>
               <%-- <a href="ShowGroupUser.aspx?groupby=isbuy&isbuy=1<%=(Request["proid"]!=null&&Request["proid"]!="")?"&proid="+Request["proid"]:"" %>">已支付会员</a>
                <a href="ShowGroupUser.aspx?groupby=isbuy&isbuy=0<%=(Request["proid"]!=null&&Request["proid"]!="")?"&proid="+Request["proid"]:"" %>">未支付会员</a>
                <a href="ShowGroupUser.aspx?groupby=desp&desp=false<%=(Request["proid"]!=null&&Request["proid"]!="")?"&proid="+Request["proid"]:"" %>">未付定金会员</a>--%>
            </td>           
        </tr>
        <tr>
            <td valign="top" colspan="2">
                <table width="100%" border="0" cellspacing="1" cellpadding="1">
                    <tr class="tdbgleft">
                        <td width="3%" height="28" align="center">
                            <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                        </td>
                        <td width="5%" height="24" align="center">
                            <strong>ID</strong>
                        </td>
                        <td width="10%" height="24" align="center">
                            <strong>用户名</strong>
                        </td>                       
                         <td width="10%" height="24" align="center">
                            <strong>会员邮箱</strong>
                        </td>  
                        <td width="10%" height="24" align="center">
                            <strong>定金支付</strong>
                        </td>
                        <td width="10%" height="24" align="center">
                            <strong>购买支付</strong>
                        </td>
                        <td width="10%" height="24" align="center">
                            <strong>发起时间</strong>
                        </td>

                        <td width="10%" height="24" align="center">
                            <strong>操作</strong>
                        </td>
                    </tr>
                    <asp:Repeater ID="Pagetable" runat="server">
                        <ItemTemplate>
                            <tr class="tdbg">
                                <td height="24" align="center">
                                    <input name="Item" type="checkbox" value='<%# Eval("ID")%>' onclick='document.getElementById("inputId<%#Eval("ID") %>").checked=this.checked;'/>
                                    <input id='inputId<%#Eval("ID")%>' name="ItemUId" type="checkbox" value='<%#Eval("UserID") %>'  style="display:none;"/>
                                </td>
                                <td height="24" align="center">
                                    <%#Eval("ID") %>
                                </td>                                
                                <td height="24" align="center" title="单击查看详情">
                                    <a  href="../user/Usreinfo.aspx?id=<%#Eval("UserID") %>" title="查看会员"><%#GetUserName(Eval("UserID","{0}"))%></a>                              
                                </td>    
                                  <td height="24" align="center">
                                    <asp:Label ID="Label2" runat="server" Text=' <%#GetUserEmail(Eval("UserID","{0}"))%>'></asp:Label>
                                </td> 
                                <td height="24" align="center">
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("PayID","{0}")=="1"?"<font color=green>已支付</font>":"<font color=red>未支付</font>"%>'></asp:Label>
                                </td>
                                <td height="24" align="center">
                                    <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("isbuy","{0}")=="1"?"<font color=green>已支付</font>":"<font color=red>未支付</font>"%>'></asp:Label>
                                </td>
                              
                                 <td height="24" align="center">
                                    <%#Eval("Btime")%>
                                </td>
                                <td height="24" align="center">
                                        <a href="ShowGroupUser.aspx?menu=delete&proid=<%#Eval("ProID")%>&groupid=<%#Eval("ID") %>" onclick="return confirm('删除后无法还原!确定要删除吗?')">删除</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                       <tr class="tdbg">
                        <td class="tdbgleft" colspan="8" align="center">
                            统计:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你要支付的定金金额为:<asp:Label ID="Deposit" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 你要支付的购买金额为:<asp:Label ID="buymoney" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td height="22" colspan="8" align="center" class="tdbg">
                     共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                      AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                           </asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button3" runat="server" style=" width:100px;"  Text="批量删除" 
                    class="C_input" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？'); " 
                    onclick="Button3_Click" />
                <asp:Button ID="Button1" runat="server" class="C_input" Text="邮件通知" onclick="Button1_Click"/>
               <input type="submit" name="Button2" value="取消" onclick="closdlg();" id="Button2" class="C_input" />                   
            </td>
        </tr>
    </table>
    <div id="view" runat="server">
    </div>
    </form>    
</body>
</html>
