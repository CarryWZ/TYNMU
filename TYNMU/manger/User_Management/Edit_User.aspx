<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_User.aspx.cs" Inherits="TYNMU.manger.User_Management.Edit_User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  
    <div>
    <asp:label ID="Label1" Width=70px runat="server" text="用户名："></asp:label><asp:TextBox ID="TBAccount" runat="server"></asp:TextBox>
    <br/>
    <asp:label ID="Label2"  Width=70px  runat="server" text="密码："></asp:label><asp:TextBox ID="TBPassWD" runat="server"></asp:TextBox>
    <br />
    <asp:label ID="Label3"  Width=70px  runat="server" text="权限："/>
    <br />
        
        <asp:TreeView ID="TreeView1" runat="server"     ShowCheckBoxes="All" 
            onclick="selectCheck()" 
            ontreenodecheckchanged="TreeView1_TreeNodeCheckChanged" >
        </asp:TreeView>
    <br />
    <asp:Button ID="BtnOK" runat="server" Text="修改" onclick="BtnOK_Click" />

    </form>
     <script language=javascript>
         function selectCheck() {
             var els = event.srcElement; //获取当前事件的对象
             if (els.type == 'checkbox') {
                 var divId = els.id.replace('CheckBox', 'Nodes'); //获取子节点的层Id
                 var divObj = document.getElementById(divId); //获取层对象
                 if (divObj == null) return;
                 var checkBoxs = divObj.getElementsByTagName('input'); //获取层下所有input 控件
                 for (var i = 0; i < checkBoxs.length; i++) {
                     if (checkBoxs[i].type == 'checkbox') //控件为checkbox
                     {
                         checkBoxs[i].checked = els.checked; //设置复选框状态
                     }
                 }
             }
         }
    </script>
</body>
</html>
