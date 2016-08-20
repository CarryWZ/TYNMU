using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
namespace TYNMU.manger.User_Management
{
    public partial class Edit_User : System.Web.UI.Page
    {
        string level = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count == 0 || Session["IsLogin"] == null)
            {
                Response.Write("<script language='JavaScript'>parent.window.location='../Login.aspx';</script>");
                return;
            }
            string UserName = Request.QueryString["UserName"].ToString();
            string sSql = "select * from T_User where UserName ='" + UserName + "'";
            DataSet ds = new DataSet();
            ds = Data.DAO.Query(sSql);
            TBAccount.Text = ds.Tables[0].Rows[0][1].ToString();
            TBPassWD.Text = ds.Tables[0].Rows[0][2].ToString();
            AddNode();
        }
        private void AddNode()
        {
            string sSql = "select * from T_tree";
            DataTable dt = new DataTable();
            dt = Data.DAO.Query(sSql).Tables[0];
            this.TreeView1.Nodes.Clear();
            DataView dv = dt.DefaultView;
            dv.RowFilter = "ParentID=0";//筛选出根节点
            foreach (DataRowView drv in dv)
            {
                TreeNode root = new TreeNode(drv.Row["Name"].ToString(), drv.Row["ID"].ToString());
                this.TreeView1.Nodes.Add(root);
                this.AddChildNode(dt,root);
            }
        }
        private void AddChildNode(DataTable dt, TreeNode node)
        {
            DataView dv = dt.DefaultView;
            dv.RowFilter = "ParentID=" + node.Value.Trim();
            foreach (DataRowView drv in dv)
            {
                TreeNode childNode = new TreeNode(drv.Row["Name"].ToString(), drv.Row["ID"].ToString());
                node.ChildNodes.Add(childNode);
                AddChildNode(dt,childNode);
            }
        }
        //修改权限
        protected void BtnOK_Click(object sender, EventArgs e)
        {
            string username = TBAccount.Text.ToString();
            string passwd = TBPassWD.Text.ToString();
            string sSql = "update T_User set UserPassWD='" + passwd + "',UserLevel='" + level + "'where UserName='" + username + "'";
            Data.DAO.NonQuery(sSql);
        }
        protected void TreeView1_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
        {
            e.Node.Checked = true;
            if (level == "")
            { 
                level=e.Node.Value.ToString();
            }
            else
            {
                level = level + "," + e.Node.Value.ToString();
            }
        }
    }
}