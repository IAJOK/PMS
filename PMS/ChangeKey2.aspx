<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangeKey2.aspx.cs" Inherits="PMS.ChangeKey2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            float: left;
        }
        .auto-style5 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 20px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            font-size: x-large;
            background-color: #000000;
            text-decoration: none;
        }
        .auto-style7 {
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style8 {
            text-align: center;
            font-size: x-large;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style5">
                <p class="auto-style9">
                    <a class="auto-style6" href="Homepage.aspx"><span class="auto-style8">首页</span></a><span class="auto-style7">&nbsp;&nbsp; </span><a class="auto-style6" href="WebForm2.aspx"><span class="auto-style8">查询操作</span></a><span class="auto-style7">&nbsp;&nbsp; </span><a class="auto-style6" href="operation.aspx"><span class="auto-style8">增删改操作</span></a><span class="auto-style7">&nbsp;&nbsp; </span><a class="auto-style6" href="ChangeKey2.aspx"><span class="auto-style8">修改密码</span></a><span class="auto-style7">&nbsp;&nbsp; </span><a class="auto-style6" href="about.aspx"><span class="auto-style8">关于</span></a>
                </p>
                <hr />
                <strong>修改登入密码</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp; 原密码：<asp:TextBox ID="TextBox_old" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp; 新密码：<asp:TextBox ID="TextBox_new" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确认密码：<asp:TextBox ID="TextBox_new2" runat="server"></asp:TextBox>
                <asp:Label ID="Label_err" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
