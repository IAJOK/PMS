<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PMS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            float: left;
            height: 139px;
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
        .auto-style19 {
            background-color: #FFFFFF;
        }
        .auto-style20 {
            background-color: #FFFFFF;
            width: 459px;
        }
        .auto-style21 {
            width: 459px;
            height: 33px;
        }
        .auto-style22 {
            height: 33px;
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
                <td class="auto-style20">
                        <asp:GridView ID="GridView1" runat="server"  Width="332px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                </td>
                <td class="auto-style19">部门代号：<asp:TextBox ID="TextBox_id" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox_id" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style10">部门名称：<asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox_name" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">部门主管：<asp:TextBox ID="TextBox_de" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="CheckBox_de" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <br />
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button2" runat="server" Text="查询" OnClick="Button2_Click1" />
                    <asp:Label ID="Label_err" runat="server" ForeColor="#CC0000"></asp:Label>
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
