<%@ page title="" language="C#" masterpagefile="~/Guild/GuildPage.master" autoeventwireup="true" inherits="Guild_manage_ShowVote, App_Web_afyd0lir" viewStateEncryptionMode="Never" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<div id=center1>
		<h5><div id="no">投票结果</div></h5>
		<ul>
          
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tr>
              <td height="5" colspan="3"></td>
            </tr>
            <tr>
              <td colspan="3" align="center"><table width="98%"  border="0" cellspacing="1" cellpadding="0">
                  <tr>
                    <td width="13%" align="right"><strong>调查内容:</strong></td>
                    <td width="87%" align="left" ><asp:Label runat="server" ID="lblName"></asp:Label></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>总投票数:</strong></td>
                    <td align="left" class="s4"><asp:Label runat="server" ID="lblCount"></asp:Label> 票                    </td>
                  </tr>
                  <tr>
                    <td align="right" class="white">&nbsp;</td>
                    <td class="white">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
            
            <tr >
              <td width="144" align="center"><strong>投票选项</strong></td>
              <td width="56" align="center"><strong>票数</strong></td>
              <td width="462" align="center"><strong>百分比</strong></td>
            </tr>
            <tr>
            <td>
            
             <asp:Repeater runat="server" ID="VoteShow">
                <ItemTemplate>
                    <tr>
                      <td>                   
                      <%#Eval("VOption")%>                     
                      </td>
                      <td>
                      <%#GetVidCount(Eval("VID"))%>
                      </td>
                      <td align="left">
                     <%#GetPercent(Eval("VID").ToString()) %>
                     <%-- Width='<%#GetPercent(Eval("VID")) %>'--%>
                      </td>
                    </tr>
                </ItemTemplate>
             </asp:Repeater>
             
             </td>
              </tr>
          </table>       
		</ul>
  </div>

</table>
</asp:Content>

