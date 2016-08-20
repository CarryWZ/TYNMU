using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
namespace TYNMU.manger
{
    public partial class left : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                //判断是否登录
                if (Session.Count==0||Session["IsLogin"]==null)
                {
                    Response.Write("<script language='JavaScript'>parent.window.location='Login.aspx';</script>");
                    return;
                }
                //绑定框架
                TreeView1.Target = "mainFrame";
                //生成节点
                AddNode();
        }
        private void AddNode()
        {
            string sSql = "select * from T_tree";
            string[] level = Session["UserLevel"].ToString().Split(',');
            DataTable dt = new DataTable();
            dt = Data.DAO.Query(sSql).Tables[0];
            this.TreeView1.Nodes.Clear();
            DataView dv = dt.DefaultView;
            dv.RowFilter = "ParentID=0";//筛选出根节点
            foreach (DataRowView drv in dv)
            {
                //此处添加用户权限
                foreach (string str in level)
                {
                    if (str.Trim().Equals(drv.Row["ID"].ToString().Trim()))
                    { 
                        TreeNode root = new TreeNode(drv.Row["Name"].ToString(), drv.Row["ID"].ToString());
                        root.NavigateUrl = drv.Row["url"].ToString();
                        this.TreeView1.Nodes.Add(root);
                    }
                }
                
            }
            //加入子节点
            for (int i = 0; i < this.TreeView1.Nodes.Count; i++)
            {
                this.AddChildNode(dt, this.TreeView1.Nodes[i]);
            }
        }
        private void AddChildNode(DataTable dt, TreeNode node)
        {
            DataView dv = dt.DefaultView;
            string[] level = Session["UserLevel"].ToString().Split(',');
            dv.RowFilter = "ParentID=" + node.Value.Trim();
            foreach (DataRowView drv in dv)
            {
                //此处添加用户权限管理
                foreach (string str in level)
                {
                    if (str.Trim().Equals(drv.Row["ID"].ToString().Trim()))
                    {
                        TreeNode childNode = new TreeNode(drv.Row["Name"].ToString(), drv.Row["ID"].ToString());
                        //增加url
                        childNode.NavigateUrl = drv.Row["url"].ToString();
                        node.ChildNodes.Add(childNode);
                    }
                }
                
            }
            for (int i = 0; i < node.ChildNodes.Count; i++)
            {
                AddChildNode(dt, node.ChildNodes[i]);
            }
        }
    }
}