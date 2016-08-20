<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSuccessCase.aspx.cs" Inherits="TYNMU.manger.Success.AddSuccessCase" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="../ckfinder/ckfinder.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="项目名称："></asp:Label>
        <asp:TextBox ID="Txtname" runat="server" Width="369px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="图标："></asp:Label>
        <asp:TextBox ID="Txtimage" runat="server" TextMode="MultiLine"></asp:TextBox>
        <script type="text/javascript">            var editor = CKEDITOR.replace('Txtimage');
            CKFinder.setupCKEditor(editor, '/ckfinder/');</script>
        <br />
        <asp:Label ID="Label3" runat="server" Text="详情："></asp:Label>
        <asp:TextBox ID="Txtdetial" runat="server" TextMode="MultiLine"></asp:TextBox>
        <script type="text/javascript">            var editor = CKEDITOR.replace('Txtdetial');
            CKFinder.setupCKEditor(editor, '/ckfinder/');</script>
            <br />
        <asp:Button ID="BtnOK" runat="server" Text="确定" onclick="BtnOK_Click" />
        <asp:Button ID="Btncal" runat="server" Text="取消" onclick="Btncal_Click" />
    </div>
    </div>
    </form>
</body>
</html>
