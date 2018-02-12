<%@ Page Language="C#" MasterPageFile="~/mainMaster.master" AutoEventWireup="true"
    CodeFile="ShowNewsInformation.aspx.cs" Inherits="ShowNewsInformation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr style="background-image: url(Images/b4_bg.gif)">
            <td colspan="2" style="text-align: left; padding-left: 15px;">
                <span>
                    <asp:Label ID="Label4" runat="server" Style="font-weight: 700; color: #FFFFFF; font-size: large;"></asp:Label></span>
            </td>
        </tr>
         <tr>
            <td style="height: 5px;">
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dlstNews" runat="server" OnItemCommand="ldNewsSort_ItemCommand"
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                    CellPadding="3" GridLines="Both">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <ItemTemplate>
                        <table style="font-size: 9pt;">
                            <tr>
                                <td class="dtd2">
                                    &nbsp;&nbsp;<asp:LinkButton ID="lbtnTitle" runat="server"><%#DataBinder.Eval(Container.DataItem,"title") %></asp:LinkButton>
                                </td>
                                <td style="width: 150px">
                                    <%#DataBinder.Eval(Container.DataItem, "IssueDate")%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr style="height: 30px;">
            <td>
                <br />
                <table>
                    <tr>
                        <td style="width: 69px">
                            <asp:Label ID="Label1" runat="server" Text="当前页："></asp:Label>
                        </td>
                        <td style="width: 13px">
                            <asp:Label ID="currentPage" runat="server" Text="1"></asp:Label>
                        </td>
                        <td style="width: 69px">
                            <asp:Label ID="Label2" runat="server" Text="总页数："></asp:Label>
                        </td>
                        <td style="width: 13px">
                            <asp:Label ID="totalPage" runat="server"></asp:Label>
                        </td>
                        <td style="width: 171px; text-align: right; font-size :12px">
                            <asp:LinkButton ID="firstPage" runat="server" Text="首页" OnClick="firstPage_Click"></asp:LinkButton>
                        </td>
                        <td style="width: 71px; text-align: right; font-size :12px">
                            <asp:LinkButton ID="frontPage" runat="server" Text="上一页" OnClick="frontPage_Click"></asp:LinkButton>
                        </td>
                        <td style="width: 71px; text-align: right;">
                            <asp:LinkButton ID="nextPage" runat="server" Text="下一页" OnClick="nextPage_Click"></asp:LinkButton>
                        </td>
                        <td style="width: 71px; text-align: right;">
                            <asp:LinkButton ID="lastPage" runat="server" Text="尾页" Font-Underline="false" OnClick="lastPage_Click"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
