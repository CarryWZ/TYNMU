<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolutionList.aspx.cs" Inherits="TYNMU.User.Solution.SolutionLis" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<!--#include file="../top.html"-->
<body>
    <form id="form1" runat="server">
    <div>
         <div align="center"style="width: 100%; font-size: large;" >
    <div style="width: 80%">
        <div class="scd_t">
        
    </div>
        <asp:DataList ID="DLNewslist" runat="server" Width=100% BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal" >
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <div class="scd_m">
        <div class="news_a">
            <dl class="clearfix">
                <dt><a href='SolutionItem.aspx?SolutionID=<%# Eval("ID") %>'><%# Eval("logo") %></a></dt>
                <dd>
                    <div class="title">
                        <p><a href='SolutionItem.aspx?SolutionID=<%# Eval("ID") %>'><%# Eval("Title") %></a></p>
                        <em>[<%# Eval("time","{0:yyyy-MM-dd}") %>]</em>
                    </div>
                    <div class="des"> 概要：<%# Eval("abstract") %>... </div>
                    <a href='SolutionItem.aspx?SolutionID=<%# Eval("ID") %>' class="more">+ 查看详情</a>
                </dd>
            </dl>
        </div>
    </div>
         <div class="space_hx">&nbsp;</div>
    </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        </div>
        </div>
     <div style="width: 100%" align="center">
        当前页：<asp:Label ID="lblCurrent" runat="server" Text="1"></asp:Label>
        总页数：<asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
        <asp:LinkButton ID="lbtnFirst" runat="server" OnClick="lbtnFirst_Click">第一页</asp:LinkButton>
        <asp:LinkButton ID="lbntUp" runat="server" OnClick="lbntUp_Click">上一页</asp:LinkButton>
        <asp:LinkButton ID="lbtnDown" runat="server" OnClick="lbtnDown_Click">下一页</asp:LinkButton>
        <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click">最后一页</asp:LinkButton>
        </div>
    </div>
    </form>
</body>
<!--#include file="../Bottom.html"-->
</html>
