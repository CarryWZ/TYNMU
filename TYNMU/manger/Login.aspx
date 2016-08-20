<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TYNMU.manger.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>

<body background="Login.png" 
    style="background-repeat: no-repeat;">

    <form id="form1" runat="server">
     <div style=" margin-top: 0px; background-repeat: no-repeat; background-attachment: inherit;" 
         align="center">
         <div style="height: 367px; width: 1600px;">
             
         </div>
         <div style="height: 166px; width: 731px; margin-left: 620px;" align="center">
             <asp:Label ID="Label1" runat="server" Text="账号："></asp:Label>
             <asp:TextBox ID="TxtAccount"
                 runat="server" Width="186px"></asp:TextBox>
                 <br />
                 <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
             <asp:TextBox ID="TxtPassWD"
                 runat="server" TextMode="Password" Width="186px"></asp:TextBox>
                 <br />	

                 <div style="margin-left: 46px"><asp:Button ID="BtnOK" runat="server"  Text="登录" Width="70px" 
                 onclick="BtnOK_Click" />
                 
                 <asp:Button ID="BtnReg" runat ="server" Text="取消" Width="70px"/>
             </div>
                 
             </div>
             <div align="right">
    <a href="Redister_User.aspx">管理员注册</a>
    </div>
    </form>
   
    
    
    
   
    
    
    </body>
</html>
