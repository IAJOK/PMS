﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PMS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            float: left;
            height: 139px;
        }
    .auto-style3 {
        height: 27px;
    }
        .auto-style4 {
            height: 23px;
            background-color: #99CCFF;
        }
    .auto-style5 {
        color: #000000;
        font-size: x-large;
    }
    .auto-style6 {
        text-decoration: none;
    }
    .auto-style7 {
        height: 29px;
    }
    .auto-style8 {
        height: 29px;
        background-color: #FFFFFF;
            width: 459px;
        }
    .auto-style9 {
        background-color: #FFFFFF;
    }
    .auto-style10 {
        height: 27px;
        background-color: #FFFFFF;
    }
        .auto-style11 {
            height: 27px;
            text-align: left;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            height: 23px;
            background-color: #99CCFF;
            width: 459px;
        }
        .auto-style14 {
            background-color: #FFFFFF;
            width: 459px;
        }
        .auto-style15 {
            height: 27px;
            background-color: #FFFFFF;
            width: 459px;
        }
        .auto-style16 {
            height: 27px;
            width: 459px;
        }
        .auto-style17 {
            background-color: #FFFFFF;
            width: 459px;
            height: 31px;
        }
        .auto-style18 {
            background-color: #FFFFFF;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
         <A href="Homepage.aspx" class="auto-style6"><span class="auto-style5">首页</span></A>&nbsp;&nbsp;         <A href="WebForm1.aspx" class="auto-style6"><span class="auto-style5">查询操作</span></A>&nbsp;&nbsp;      
         <A href="ChangeKey1.aspx" class="auto-style6"><span class="auto-style5">修改密码</span></A>&nbsp;&nbsp;         <A href="about.aspx" class="auto-style6"><span class="auto-style5">关于</span></A>
        <hr />
    <p>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style13">查询员工信息
        
                </td>
                <td class="auto-style4">查询部门信息
        
    </td>
            </tr>
            <tr>
                <td class="auto-style17">员工代号：<asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style18">部门代号：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox5" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">员工姓名：<asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="auto-style10">部门名称：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox6" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">所属部门：<asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="auto-style9">部门主管：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox7" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp; 年龄：&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">登入密码：<asp:Label ID="Label5" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="打印" />
                </td>
                <td class="auto-style3">
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="查询" />
                    <asp:Button ID="Button4" runat="server" Text="打印" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <br />
                    <div class="auto-style12">
                    </div>
                </td>
                &nbsp;<td class="auto-style11">
                    <asp:GridView ID="GridView2" runat="server" Width="339px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br/>
    </p>
</asp:Content>
