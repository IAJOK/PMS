<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PMS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            width: 100%;
            float: left;
            height: 139px;
        }
    .auto-style4 {
        height: 23px;
    }
    .auto-style3 {
        height: 27px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2">
    <tr>
        <td class="auto-style4">管理员工信息
        
                </td>
        <td class="auto-style4">管理部门信息
        
    </td>
    </tr>
    <tr>
        <td>员工代号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>部门代号：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">员工姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">部门名称：<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>所属部门：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>部门主管：<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp; 年龄：&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">登入密码：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:Button ID="Button5" runat="server" Text="查询" />
            <asp:Button ID="Button6" runat="server" Text="录入" />
            <asp:Button ID="Button7" runat="server" Text="删除" />
            <asp:Button ID="Button8" runat="server" Text="修改" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="查询" />
            <asp:Button ID="Button2" runat="server" Text="录入" />
            <asp:Button ID="Button3" runat="server" Text="删除" />
            <asp:Button ID="Button4" runat="server" Text="修改" />
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
</asp:Content>
