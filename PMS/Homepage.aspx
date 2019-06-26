<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="PMS.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        *{
            margin:0px;
            padding:0px;
        }

         body {
            margin: 0;
        }
        .auto-style1 {
            width: 100%;
        }
         .auto-style4 {
            font-size: xx-large;
            font-weight: bold;
            height: 49px;
            text-align: center;
        }
          .auto-style5 {
            font-size: 14pt;
            height: 34px;
            color: #666666;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            height: 31px;
        }
        .auto-style11 {
            height: 30px;
        }
        .auto-style12 {
            height: 49px;
        }
        .auto-style13 {
            height: 25px;
        }
        .auto-style14 {
            height: 59px;
        }
        .auto-style15 {
            height: 24px;
        }
        .auto-style16 {
            width: 899px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td rowspan="15">
                        <img src="Models/login_medicine.jpg" class="auto-style16" />
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                 <td class="auto-style4" >
                     <br />
                     <br />
                     <br />
                     欢迎登录人事管理系统</td>
                    <td class="auto-style12"></td>
                </tr>
                <tr >
                    <td class="auto-style15" ></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style5" >&nbsp;</td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                  <td class="auto-style11">
                        <asp:TextBox ID="tb_eid" runat="server" Height="40px" Width="400px" placeholder="请输入账号" Font-Size="Large"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                    </td>
                    
                </tr>
                <tr style="height:10px">
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lb_eiderror" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td >
                        <asp:TextBox ID="tb_pwd" runat="server" type="password" Height="40px" Width="400px" placeholder="请输入密码" Font-Size="Large" OnTextChanged="tb_pwd_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="height:10px">
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lb_pwderror" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="bt_login" runat="server" Height="45px" Text="登录" Width="400px" BackColor="#3386E1" Font-Size="X-Large" ForeColor="White" BorderColor="#3386E1" BorderStyle="Ridge" OnClick="bt_login_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                   <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                     <td class="auto-style14">
                         &nbsp;</td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
