<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsItem.aspx.cs" Inherits="TYNMU.User.News.NewsItem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<!--#include file="../top.html"-->
<body>
    <form id="form1" runat="server">
    <div align="center" style="font-size: large">
    <div class="scd_t" style="width: 80%">
        <span class="now"><a href="NewsList.aspx">公司新闻</a></span>
        <span><a href="NewsList.aspx">行业新闻</a></span>
    </div>
    <div align="right">
        <div align="center"><asp:Label ID="LbTitle" runat="server" Text="Label" Font-Size="XX-Large" 
            ViewStateMode="Enabled"  EnableTheming="True"></asp:Label></div>
        <br>
        <div align="left" style="height: 9px; width: 583px; margin-left: 0px;">
        <asp:Label ID="LbClickNum" runat="server" Text="Label" Font-Size="Smaller" ViewStateMode="Enabled" Visible="True"  ></asp:Label>
       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:Label ID="LbEditor" runat="server" Text="Label" Font-Size="Smaller" ViewStateMode="Enabled" Visible="True"  ></asp:Label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:Label ID="LbTime" runat="server" Text="Label" Font-Size="Smaller" ViewStateMode="Enabled" Visible="True"  ></asp:Label>
        
        </div>
        
    </div>
    
    <div align="center" height:auto>
    </asp:Table>
    </div>
    <p>
        &nbsp;</p>
        
        <div id="div_content" runat="server"  style="width: 80%" align="left"></div>
        </div>
    </form>
    
</body>
<!--#include file="../Bottom.html"-->
</html>

