<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="TYNMU.User.News.NewsList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<!--#include file="../top.html"-->
<body>
    <form id="form1" runat="server">
    <div align="center"style="width: 100%; font-size: large;" >
    <div style="width: 80%">
        <div class="scd_t">
        <span class="now"><a href="NewsList.aspx">公司新闻</a></span>
        <span><a href="NewsList.aspx">行业新闻</a></span>
    </div>
        <asp:DataList ID="DLNewslist" runat="server" Width=100% >
        <ItemTemplate>
        <div style="float: right; width: 100%;">
        
        <ul class='news'>
            <li>
                
                <a href='NewsItem.aspx?NewsID=<%# Eval("ID") %>'>
             <div style="display:inline; width:50%;" align="left">
                >>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                 <asp:Label ID="Title" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
             </div>
               &nbsp <div  style="display:inline; width: inherit; top: inherit; right: inherit; left: inherit; bottom: inherit; z-index: inherit; float: right;" align="right" dir="rtl"> 
               <asp:Label ID="Time" runat="server" Text='<%# Eval("DataTime","{0:yyyy-MM-dd}") %>' ></asp:Label>
               </div>
                </a>
            </li>
          </ul>
          </div>
         <div class="space_hx">&nbsp;</div>
    </ItemTemplate>
        </asp:DataList>
        </div>
        </div>
        <div style="width: 70%" align="center">
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
<!--#include file="../bottom.html"-->
</html>
