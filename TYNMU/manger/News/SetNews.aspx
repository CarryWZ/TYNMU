<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetNews.aspx.cs" Inherits="TYNMU.manger.News.SetNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GVNews" runat="server" CssClass="GridViewStyle" 
            onrowdeleting="GVNews_RowDeleting" onrowediting="GVNews_RowEditing" 
            Width=100% AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
            DataSourceID="SqlDataNews" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Title" HeaderText="标题" SortExpression="Title" />
                <asp:BoundField DataField="ClickNum" HeaderText="点击量" 
                    SortExpression="ClickNum" />
                <asp:BoundField DataField="Author" HeaderText="作者" 
                    SortExpression="Author" />
                <asp:BoundField DataField="Source" HeaderText="Source" 
                    SortExpression="Source" Visible="false" />
                <asp:BoundField DataField="DataTime" HeaderText="发表时间" 
                    SortExpression="DataTime"  DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="Catagory" HeaderText="Catagory" 
                    SortExpression="Catagory" Visible="false" />
                <asp:BoundField DataField="Tags" HeaderText="Tags" SortExpression="Tags" Visible="false" />
                <asp:BoundField DataField="Content" HeaderText="Content" 
                    SortExpression="Content"  Visible="false"/>
                <asp:BoundField DataField="Summary" HeaderText="Summary" 
                    SortExpression="Summary" Visible="false" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" Visible="false" />
                <asp:BoundField DataField="IsTop" HeaderText="置顶" SortExpression="IsTop" />
                <asp:BoundField DataField="AncountName" HeaderText="AncountName" 
                    SortExpression="AncountName" Visible="false" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataNews" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TynCompanyConnectionString %>" 
            DeleteCommand="DELETE FROM [T_News] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [T_News] ([Title], [ClickNum], [Author], [Source], [DataTime], [Catagory], [Tags], [Content], [Summary], [Status], [IsTop], [AncountName]) VALUES (@Title, @ClickNum, @Author, @Source, @DataTime, @Catagory, @Tags, @Content, @Summary, @Status, @IsTop, @AncountName)" 
            SelectCommand="SELECT * FROM [T_News]" 
            UpdateCommand="UPDATE [T_News] SET [Title] = @Title, [ClickNum] = @ClickNum, [Author] = @Author, [Source] = @Source, [DataTime] = @DataTime, [Catagory] = @Catagory, [Tags] = @Tags, [Content] = @Content, [Summary] = @Summary, [Status] = @Status, [IsTop] = @IsTop, [AncountName] = @AncountName WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ClickNum" Type="Int32" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Source" Type="String" />
                <asp:Parameter DbType="DateTime2" Name="DataTime" />
                <asp:Parameter Name="Catagory" Type="String" />
                <asp:Parameter Name="Tags" Type="String" />
                <asp:Parameter Name="Content" Type="String" />
                <asp:Parameter Name="Summary" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="IsTop" Type="String" />
                <asp:Parameter Name="AncountName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ClickNum" Type="Int32" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Source" Type="String" />
                <asp:Parameter DbType="DateTime2" Name="DataTime" />
                <asp:Parameter Name="Catagory" Type="String" />
                <asp:Parameter Name="Tags" Type="String" />
                <asp:Parameter Name="Content" Type="String" />
                <asp:Parameter Name="Summary" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="IsTop" Type="String" />
                <asp:Parameter Name="AncountName" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
