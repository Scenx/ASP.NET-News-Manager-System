<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="UserControl_head" %>
<style type="text/css">
    .td1
    {
        height: 35px;
        width: 19%;
        font-size: 12px;
      
    }
    .td2
    {
        width: 9%;
        height: 35px;
          font-size :15px;
    }
</style>
<table style ="width :100%">
    <tr>
        <td colspan="10">
            <div class="wishTop">
            
                <div class="titleSystemName">
                    新闻发布系统</div>
                <div class="bglogo">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/logo.gif" />
                </div>
            </div>
        </td>
    </tr>
    <tr style="background-image: url(Images/b4_bg.gif)">
        <td class="td1 ">
            <asp:Label ID="dateLabel" runat="server" Style="color: #FFFFFF"></asp:Label>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Font-Underline="false"
                ForeColor="black" Style="font-weight: 800; color: #FFFFFF;">首页</asp:HyperLink>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ShowNewsInformation.aspx?id=1"
                Font-Underline="false" ForeColor="black" Style="font-weight: 700; color: #FFFFFF;">时事</asp:HyperLink>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ShowNewsInformation.aspx?id=2"
                Font-Underline="false" ForeColor="black" Style="font-weight: 700; color: #FFFFFF;">经济</asp:HyperLink>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ShowNewsInformation.aspx?id=3"
                Font-Underline="false" ForeColor="black" Style="font-weight: 700; color: #FFFFFF;">军事</asp:HyperLink>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ShowNewsInformation.aspx?id=4"
                Font-Underline="false" ForeColor="black" Style="font-weight: 700; color: #FFFFFF;">科技</asp:HyperLink>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ShowNewsInformation.aspx?id=5"
                Font-Underline="false" ForeColor="black" Style="font-weight: 700; color: #FFFFFF;">生活</asp:HyperLink>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/ShowNewsInformation.aspx?id=6"
                Font-Underline="false" ForeColor="black" Style="font-weight: 700; color: #FFFFFF;">社会</asp:HyperLink>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/ShowNewsInformation.aspx?id=7"
                Font-Underline="false" ForeColor="black" Style="font-weight: 700; color: #FFFFFF;">体育</asp:HyperLink>
        </td>
        <td class="td2 ">
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/ShowNewsInformation.aspx?id=8"
                Font-Underline="false" ForeColor="black" Style="font-weight: 700; color: #FFFFFF;">娱乐</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td style="height: 25px; font-size: 12px" colspan="10">
            <p>
                <span style="text-align: left;">输入关键字：
                    <asp:TextBox ID="txtKey" runat="server" Width="173px"></asp:TextBox>
                    <asp:DropDownList ID="ddlCategories" runat="server" Width="80px">
                        <asp:ListItem>时事新闻</asp:ListItem>
                        <asp:ListItem>环球经济</asp:ListItem>
                        <asp:ListItem>军事世界</asp:ListItem>
                        <asp:ListItem>科学技术</asp:ListItem>
                        <asp:ListItem>生活理财</asp:ListItem>
                        <asp:ListItem>社会百态</asp:ListItem>
                        <asp:ListItem>世界体育</asp:ListItem>
                        <asp:ListItem>娱乐综艺</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" /></span>
                <span style=" float: right;"><a href="#" onclick="window.external.addFavorite('http://www.10dawang.cn','新闻发布网站');">
                    加入收藏</a> &nbsp;<a href="#" onclick="this.style.behavior='url(#default#homepage)';this.sethomepage('http://www.10dawang.cn')">设为主页</a>
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/BackDesk/Login.aspx">后台管理</asp:HyperLink></span></p>
        </td>
    </tr>
</table>
