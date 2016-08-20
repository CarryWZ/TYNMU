<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolutionItem.aspx.cs" Inherits="TYNMU.User.Solution.SolutionItem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<!--#include file="../top.html"-->
<body>
    <form id="form1" runat="server">
    <div align="center">
    <div style="width: 80%; height: auto; font-size: x-large;" align="center">
        <asp:Label ID="LbTitle" runat="server" Text="Label"></asp:Label>
        <div style="width: 80%; height: auto; font-size: x-large;" align="right">
        <asp:Label ID="LbTime" runat="server" Text=""></asp:Label>
    </div>
        <div id="div_solution" runat="server" style="width: 80%; height: auto; font-size: large;" align="left">
        </div>
    </div>
    </form>
</body>
<!--#include file="../Bottom.html"-->
</html>
