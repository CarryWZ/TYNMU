<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="left.aspx.cs" Inherits="TYNMU.manger.left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    &nbsp;<form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Text="关于我们" Value="关于我们"></asp:TreeNode>
                <asp:TreeNode Text="解决方案" Value="解决方案"></asp:TreeNode>
                <asp:TreeNode Text="产品中心" Value="产品中心"></asp:TreeNode>
                <asp:TreeNode Text="成功案例" Value="成功案例"></asp:TreeNode>
                <asp:TreeNode Text="新闻中心" Value="新闻中心">
                    <asp:TreeNode NavigateUrl="~/manger/News/AddNews.aspx" Target="mainFrame" 
                        Text="发布新闻" Value="发布新闻"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/manger/News/SetNews.aspx" Target="mainFrame" 
                        Text="新闻列表" Value="新闻列表"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </div>
    </form>
</body>
</html>
