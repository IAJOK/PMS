<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangeKey1.aspx.cs" Inherits="PMS.ChangeKey1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            float: left;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 20px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
            font-size: x-large;
            color: #000000;
        }
        .auto-style8 {
            color: #000000;
        }
        .auto-style9 {
            text-align: center;
            height: 27px;
        }
        .auto-style10 {
            text-align: left;
            text-decoration: none;
        }
        .auto-style11 {
            text-align: center;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style5">
                <p class="auto-style6">
                    <a class="auto-style10" href="Homepage.aspx"><span class="auto-style7">首页</span></a><span class="auto-style8">&nbsp;&nbsp; </span><a class="auto-style10" href="WebForm1.aspx"><span class="auto-style7">查询操作</span></a><span class="auto-style8">&nbsp;&nbsp; </span><a class="auto-style10" href="ChangeKey1.aspx"><span class="auto-style7">修改密码</span></a><span class="auto-style8">&nbsp;&nbsp; </span><a class="auto-style10" href="about.aspx"><span class="auto-style7">关于</span></a>
                </p>
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>修改登入密码</strong></td>
        </tr>
        <tr>
            <td class="auto-style9">原密码：<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">新密码：<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp; 确认密码：<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="确认"  />
            </td>
        </tr>
    </table>
</asp:Content>
