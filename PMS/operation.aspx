﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="operation.aspx.cs" Inherits="PMS.operation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


    .auto-style6 {
        text-decoration: none;
    }
    .auto-style5 {
        color: #000000;
        font-size: x-large;
    }
        .auto-style2 {
            width: 100%;
            float: left;
            height: 139px;
        }
        .auto-style4 {
            height: 23px;
            background-color: #99CCFF;
        }
    .auto-style9 {
        background-color: #FFFFFF;
    }
    .auto-style10 {
        height: 27px;
        background-color: #FFFFFF;
    }
        .auto-style8 {
        height: 29px;
        background-color: #FFFFFF;
    }
    .auto-style7 {
        height: 29px;
    }
    .auto-style3 {
        height: 27px;
    }
        .auto-style12 {
            text-align: center;
        }
        .auto-style11 {
            height: 27px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <A href="Homepage.aspx" class="auto-style6"><span class="auto-style5">首页</span></A>&nbsp;&nbsp;         <A href="WebForm2.aspx" class="auto-style6"><span class="auto-style5">查询操作</span></A>&nbsp;&nbsp;         <A href="operation.aspx" class="auto-style6"><span class="auto-style5">增删改操作</span></A>&nbsp;&nbsp;      
         <A href="ChangeKey2.aspx" class="auto-style6"><span class="auto-style5">修改密码</span></A>&nbsp;&nbsp;         <A href="about.aspx" class="auto-style6"><span class="auto-style5">关于</span></A>
    <hr />
    <p>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style4">管理员工信息
        
                </td>
                <td class="auto-style4">管理部门信息
        
    </td>
            </tr>
            <tr>
                <td class="auto-style9">员工代号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">部门代号：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">员工姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">部门名称：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">所属部门：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">部门主管：<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp; 年龄：&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">登入密码：：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <br /></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="录入" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="删除" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    <div class="auto-style12">
                        <asp:GridView ID="GridView1" runat="server" Width="332px">
                        </asp:GridView>
                    </div>
                </td>
                &nbsp;<td class="auto-style11">
                    <asp:Button ID="Button4" runat="server" Text="录入" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" runat="server" Text="删除" OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" Text="修改" OnClick="Button6_Click" />
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <asp:GridView ID="GridView2" runat="server" Width="339px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
