<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PMS.WebForm1" %>
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
        background-color: #FFFFFF;
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
                <td class="auto-style4">查询员工信息
        
                </td>
                <td class="auto-style4">查询部门信息
        
    </td>
            </tr>
            <tr>
                <td class="auto-style9">员工代号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
                <td class="auto-style9">部门代号：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox5" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">员工姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                </td>
                <td class="auto-style10">部门名称：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox6" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">所属部门：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                </td>
                <td class="auto-style9">部门主管：<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox7" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp; 年龄：&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox4" runat="server" />
                </td>
                <td class="auto-style7">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">登入密码：：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="查询" />
                    <asp:Button ID="Button2" runat="server" Text="打印" />
                    <br />
                    <div class="auto-style12">
                        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="332px">
                        </asp:GridView>
                    </div>
                </td>
                &nbsp;<td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" Text="查询" />
                    <asp:Button ID="Button4" runat="server" Text="打印" />
                    <asp:GridView ID="GridView2" runat="server" Width="339px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br/>
    </p>
</asp:Content>
