<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateNews.aspx.cs" Inherits="UpdateNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .txtwid
        {
            width: 384px;
        }
        body
        {
            width: 810px;
            color: #606060;
            font-size: 12px;
            border: solid 1px #6AC0FF;
        }
        .titleSystemName
        {
            float: left;
            padding-left: 20px;
            font-size: 16px;
            font-weight: bolder;
            font-family: Arial, Helvetica,sans-serif;
            color: #ffffff;
        }
        .style1
        {
            background: url(../Images/table.png) repeat-x #ffffff;
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width ="810px">
            <tr>
                <td class="style1 " colspan="3">
                    <div class="titleSystemName">
                        浏览信息
                    </div>
                </td>
            </tr>  <tr><td style ="height :18px"></td></tr>
            <tr>
                <td colspan="3" align="left">
                    <img src="../Images/5.gif" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 28px; text-align: right; ">
                    新闻类别：&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="dlstNewsType" runat="server" Width="387px" AutoPostBack="True">
                        <asp:ListItem>国际新闻</asp:ListItem>
                        <asp:ListItem>国内新闻</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Label ID="labTitle" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td style="width: 65px; height: 24px;">
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 28px; text-align: right; " >
                    新闻标题：&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtNewsTitle" runat="server" CssClass="txtwid " MaxLength="15"></asp:TextBox>
                    <p style="text-align: left;">
                        *字数在12字以内</p>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewsTitle"
                        ErrorMessage="*标题必填" Width="118px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 120px; height: 28px; text-align: right; ">
                    新闻内容：&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtNewsContent" runat="server" Height="211px" TextMode="MultiLine"
                        CssClass="txtwid "></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewsContent"
                        ErrorMessage="*内容必填" Width="128px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="更新" Width="74px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReset" runat="server" CausesValidation="False" OnClick="btnReset_Click"
                        Text="取消" Width="74px" />
                </td>
                <td style="width: 85px; height: 26px;">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color: Red; text-align: center;">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
