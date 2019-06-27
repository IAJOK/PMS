<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="de.aspx.cs" Inherits="PMS.de" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"  Width="865px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="eid" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                         <ItemTemplate>
                             &nbsp;<asp:CheckBox ID="cbSelect" runat="server" />
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" Width="30px" />
                     </asp:TemplateField>

            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" SortExpression="eid" />
            <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
            <asp:BoundField DataField="departID" HeaderText="departID" SortExpression="departID" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:CheckBoxField DataField="limit" HeaderText="limit" SortExpression="limit" />
        </Columns>
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
    <asp:CheckBox ID="cbAll" runat="server" Text="全选" AutoPostBack="True" OnCheckedChanged="CheckAll" Css />
    <asp:Button ID="btnDelete" runat="server" Text="删除所选" OnClick="btnDelete_Click" Css />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [员工] WHERE [eid] = @eid" InsertCommand="INSERT INTO [员工] ([eid], [ename], [departID], [age], [password], [limit]) VALUES (@eid, @ename, @departID, @age, @password, @limit)" SelectCommand="SELECT * FROM [员工]" UpdateCommand="UPDATE [员工] SET [ename] = @ename, [departID] = @departID, [age] = @age, [password] = @password, [limit] = @limit WHERE [eid] = @eid">
        <DeleteParameters>
            <asp:Parameter Name="eid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eid" Type="Int32" />
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="departID" Type="Int32" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="limit" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="departID" Type="Int32" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="limit" Type="Boolean" />
            <asp:Parameter Name="eid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
