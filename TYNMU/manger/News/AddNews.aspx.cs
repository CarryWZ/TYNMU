using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
namespace TYNMU.manger.News
{
    public partial class AddNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session.Count == 0 || Session["IsLogin"] == null)
            {
               
                Response.Write("<script language='JavaScript'>parent.window.location='../Login.aspx';</script>");
                return;
            }
            if (!IsPostBack)
            {
                
                if (Request.QueryString["type"] == "Edit")
                {
                    string ID = Request.QueryString["ID"];
                    string sSql = "select * from T_News where ID='" + ID + "'";
                    DataSet ds = Data.DAO.Query(sSql);
                    DataTable dsT = ds.Tables[0];
                    TxtTitle.Text = dsT.Rows[0][1].ToString();
                    TxtEditor.Text = dsT.Rows[0][3].ToString();
                    TxtContent.Text = dsT.Rows[0][8].ToString();
                    DDLIstop.Text = dsT.Rows[0][11].ToString();
                    DDLTag.Text = dsT.Rows[0][7].ToString();
                }
            }
        }
        //添加新闻
       
        protected void BtnOK_Click(object sender, EventArgs e)
        {
            string sSql;
            if (Request.QueryString["type"] == "Edit")
            {
                string time = DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                sSql = "update T_News set Title='" + TxtTitle.Text.ToString() + "',Author='" + TxtEditor.Text.ToString() + "',DataTime='" + time + "',Tags='" + DDLTag.Text.ToString() + "',Content='" + TxtContent.Text.ToString() + "',IsTop='" + DDLIstop.Text.ToString() + " 'where ID='" + Request.QueryString["ID"].ToString() + "'";
                Data.DAO.NonQuery(sSql);
            }
            else
            {
                sSql = "insert into T_News(Title,Author,DataTime,Tags,Content,IsTop) values ('" + TxtTitle.Text.ToString() + "','" + TxtEditor.Text.ToString() + "','" + System.DateTime.Now.Date.ToString()
                +"','"+DDLTag.Text.ToString()+"','"+TxtContent.Text.ToString()+"','"+DDLIstop.Text.ToString()+"') ";
                Data.DAO.NonQuery(sSql);
            }
            TxtTitle.Text = "";
            TxtEditor.Text = "";
            TxtContent.Text = "";
            DDLIstop.Text = "";
            DDLTag.Text = "";
        }
        //重置
        protected void BtnCal_Click(object sender, EventArgs e)
        {
            TxtTitle.Text = "";
            TxtEditor.Text = "";
            TxtContent.Text = "";
            DDLIstop.Text = "";
            DDLTag.Text = "";
        }
    }
}