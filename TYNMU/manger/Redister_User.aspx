<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redister_User.aspx.cs" Inherits="TYNMU.manger.Redister_User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Login.png" 
    style="background-repeat: no-repeat;">

    <form id="form1" runat="server">
     <div style=" margin-top: 0px; background-repeat: no-repeat; background-attachment: inherit;" 
         align="center">
         <div style="height: 388px; width: 1600px;">
             
         <div style="height: 166px; width: 731px; margin-left: 620px; margin-top: 314px;" 
                 align="center">
             <asp:Label ID="Label1" runat="server" Text="账号："></asp:Label>
             <asp:TextBox ID="TxtUser"
                 runat="server" Width="186px"></asp:TextBox>
                 <br />
                 <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
             <asp:TextBox ID="TxtUserPassWD"
                 runat="server" TextMode="Password" Width="186px"></asp:TextBox>
                 <br />	
                 <div align="left" style="width: 240px; height: 19px; margin-left: 0px;"><asp:Label ID="Label3" runat="server" Text="申请理由："></asp:Label></div>
                 
                 <br />	
                 <div style="width: 233px" align="right"> <asp:TextBox ID="TxtReason"
                 runat="server" Width="186px" TextMode="MultiLine"></asp:TextBox></div>
            
                 <br />	
                 <div style="margin-left: 46px"><asp:Button ID="BtnReg" runat="server"  Text="注册" Width="70px" 
                 onclick="BtnReg_Click" />
                 <asp:Button ID="BtnCal" runat ="server" Text="取消" Width="70px"/>
             </div>
                 
             </div>
             
         </div>
             <div align="right">
    <a href="Login.aspx">管理员登录</a>
    </div>
    </form>
   
    
    
    
   
    
    
    </body>
</html>
