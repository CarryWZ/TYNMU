<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_management.aspx.cs" Inherits="TYNMU.manger.User_Management.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" onrowediting="GridView1_RowEditing" 
            CellPadding="4" ForeColor="#333333" GridLines="None" 
            >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="用户名" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="UserPassWD" HeaderText="密码" 
                    SortExpression="UserPassWD" />
                <asp:BoundField DataField="ApplyReason" HeaderText="申请理由" 
                    SortExpression="ApplyReason" />
                <asp:BoundField DataField="UserLevel" HeaderText="用户级别" 
                    SortExpression="UserLevel" />
                <asp:CommandField EditText="添加" ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TynCompanyConnectionString %>" 
            
            SelectCommand="SELECT [UserName], [UserPassWD], [ApplyReason], [UserLevel] FROM [T_Apply]" 
            DeleteCommand="DELETE FROM [T_Apply] WHERE [UserName] = @UserName" 
            InsertCommand="INSERT INTO [T_Apply] ([UserName], [UserPassWD], [ApplyReason], [UserLevel]) VALUES (@UserName, @UserPassWD, @ApplyReason, @UserLevel)" 
            UpdateCommand="UPDATE [T_Apply] SET [UserPassWD] = @UserPassWD, [ApplyReason] = @ApplyReason, [UserLevel] = @UserLevel WHERE [UserName] = @UserName">
            <DeleteParameters>
                <asp:Parameter Name="UserName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="UserPassWD" Type="String" />
                <asp:Parameter Name="ApplyReason" Type="String" />
                <asp:Parameter Name="UserLevel" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserPassWD" Type="String" />
                <asp:Parameter Name="ApplyReason" Type="String" />
                <asp:Parameter Name="UserLevel" Type="Int32" />
                <asp:Parameter Name="UserName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
