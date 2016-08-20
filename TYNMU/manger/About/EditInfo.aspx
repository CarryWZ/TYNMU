<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditInfo.aspx.cs" Inherits="TYNMU.manger.About.EditInfo" %>

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
    
         <asp:TextBox ID="TxtContent"  runat="server" TextMode="MultiLine" class="ckeditor"></asp:TextBox>
         <script type="text/javascript">            CKEDITOR.replace('TxtContent');  </script>
         <script type="text/javascript">             var editor = CKEDITOR.replace('TxtContent');
             CKFinder.setupCKEditor(editor, '/ckfinder/');</script>
        <br />
        <asp:Button ID="BtnOK" runat="server"  Text="确认" Height="21px" 
            onclick="BtnOK_Click" />
        <asp:Button ID="BtnCal" runat="server"  Text="取消" />
    </div>
    </form>
</body>
</html>
