<%@ Page Language="C#" MasterPageFile="~/mainMaster.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="Default" Title="新闻发布系统" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td class="dtd1">
                <table class="dtab1">
                    <tr class="dtr1">
                        <td colspan="2">
                            <b>&nbsp;&nbsp;时事新闻</b>
                            <div class="more ">
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" NavigateUrl="~/ShowNewsInformation.aspx?id=1">更多</asp:HyperLink></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlstShiShi" runat="server" OnItemCommand="dlstShiShi_ItemCommand"
                                Height="136" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                CellPadding="3" GridLines="Both">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 150px">
                                                <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="dtd1">
                <table class="dtab1 ">
                    <tr class="dtr1 ">
                        <td colspan="2">
                            <b>&nbsp;&nbsp;环球经济</b>
                            <div class="more ">
                                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="False" NavigateUrl="~/ShowNewsInformation.aspx?id=2">更多</asp:HyperLink></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlstEconomic" Height="136" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="3" GridLines="Both" runat="server" OnItemCommand="dlstShiShi_ItemCommand"
                                BackColor="White">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 150px">
                                                <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="dtd1">
                <table class="dtab1 ">
                    <tr class="dtr1 ">
                        <td colspan="2">
                            <b>&nbsp;&nbsp;科学技术</b>
                            <div class="more ">
                                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" NavigateUrl="~/ShowNewsInformation.aspx?id=4"
                                    Style="text-align: right">更多</asp:HyperLink></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlstScience" Height="136" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="3" GridLines="Both" runat="server" OnItemCommand="dlstShiShi_ItemCommand"
                                BackColor="White">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 150px">
                                                <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="dtd1">
                <table class="dtab1 ">
                    <tr class="dtr1 ">
                        <td colspan="2">
                            <b>&nbsp;&nbsp;军事世界</b>
                            <div class="more ">
                                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" NavigateUrl="~/ShowNewsInformation.aspx?id=3"
                                    Style="text-align: right">更多</asp:HyperLink></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlstMilitary" Height="136" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="3" GridLines="Both" runat="server" OnItemCommand="dlstShiShi_ItemCommand"
                                BackColor="White">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 150px">
                                                <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="dtd1">
                <table class="dtab1 ">
                    <tr class="dtr1 ">
                        <td colspan="2">
                            <b>&nbsp;&nbsp;社会百态</b>
                            <div class="more ">
                                <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="False" NavigateUrl="~/ShowNewsInformation.aspx?id=6"
                                    Style="text-align: right">更多</asp:HyperLink></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlstSocial" Height="136" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="3" GridLines="Both" runat="server" OnItemCommand="dlstShiShi_ItemCommand"
                                BackColor="White">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 150px">
                                                <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="dtd1">
                <table class="dtab1 ">
                    <tr class="dtr1 ">
                        <td colspan="2">
                            <b>&nbsp;&nbsp;世界体育</b>
                            <div class="more ">
                                <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="False" NavigateUrl="~/ShowNewsInformation.aspx?id=7">更多</asp:HyperLink>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlstSports" Height="136" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="3" GridLines="Both" runat="server" OnItemCommand="dlstShiShi_ItemCommand"
                                BackColor="White">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 150px">
                                                <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="dtd1">
                <table class="dtab1 ">
                    <tr class="dtr1 ">
                        <td colspan="2">
                            <b>&nbsp;&nbsp;娱乐综艺</b>
                            <div class="more ">
                                <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="False" NavigateUrl="~/ShowNewsInformation.aspx?id=8">更多</asp:HyperLink>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlstFun" Height="136" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="3" GridLines="Both" runat="server" OnItemCommand="dlstShiShi_ItemCommand"
                                BackColor="White">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 150px">
                                                <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="dtd1">
                <table class="dtab1 ">
                    <tr class="dtr1 ">
                        <td colspan="2">
                            <b>&nbsp;&nbsp;生活理财</b>
                            <div class="more ">
                                <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="False" NavigateUrl="~/ShowNewsInformation.aspx?id=5">更多</asp:HyperLink>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="dlstLife" Height="136" BorderColor="#CCCCCC" BorderStyle="None"
                                BorderWidth="1px" CellPadding="3" GridLines="Both" runat="server" OnItemCommand="dlstLife_ItemCommand"
                                BackColor="White">
                                <ItemTemplate>
                                    <table border="0" style="font-size: 9pt; width: 100%; height: 100%;" cellspacing="0"
                                        cellpadding="0">
                                        <tr>
                                            <td class="dtd2">
                                                <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select" CausesValidation="False"><%# DataBinder.Eval(Container.DataItem, "title")%></asp:LinkButton>
                                            </td>
                                            <td style="width: 150px">
                                                <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <HeaderStyle ForeColor="Blue" Font-Bold="False" Font-Italic="False" Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
