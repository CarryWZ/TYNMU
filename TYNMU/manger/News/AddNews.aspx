<%@ Page Language="C#" validateRequest="false"  AutoEventWireup="true" CodeBehind="AddNews.aspx.cs" Inherits="TYNMU.manger.News.AddNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="../ckfinder/ckfinder.js"></script>
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="Label1" runat="server" Text="新闻标题："></asp:Label>
         <asp:TextBox ID="TxtTitle" runat="server" Width='500px'></asp:TextBox>
        <label>置顶：</label>
        <asp:DropDownList ID="DDLIstop" runat="server"
             Width="101px">
             <asp:ListItem >否</asp:ListItem>
             <asp:ListItem >是</asp:ListItem>
         </asp:DropDownList>
         新闻类别:<asp:DropDownList ID="DDLTag" runat="server" 
             Width="101px">
             <asp:ListItem>公司新闻</asp:ListItem>
             <asp:ListItem>行业新闻</asp:ListItem>
             <asp:ListItem>国际新闻</asp:ListItem>
         </asp:DropDownList>
         <br /> 
        <asp:Label  ID="Label2" runat="server" Text="新闻作者："></asp:Label>
         <asp:TextBox ID="TxtEditor" runat="server" Width='500px'></asp:TextBox>
            <br />
        <script type="text/javascript">            CKEDITOR.replace('TxtContent');  </script>
        <script type="text/javascript">            var editor = CKEDITOR.replace('TxtContent');
            CKFinder.setupCKEditor(editor, '/ckfinder/');</script>
         <asp:TextBox ID="TxtContent"  runat="server" TextMode="MultiLine" class="ckeditor"></asp:TextBox>
        <br />
        <asp:Button ID="BtnOK" runat="server"  Text="确认" 
            style="height: 21px" onclick="BtnOK_Click" />
        <asp:Button ID="BtnCal" runat="server"  Text="取消" onclick="BtnCal_Click" />
    </div>
    </form>
</body>

</html>
