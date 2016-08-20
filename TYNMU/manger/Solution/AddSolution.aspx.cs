using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TYNMU.manger.Solution
{
    public partial class AddSolution : System.Web.UI.Page
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

                if (Request.QueryString["Stype"] == "Edit")
                {
                    string ID = Request.QueryString["SID"];
                    string sSql = "select * from T_solution where ID='" + ID + "'";
                    DataSet ds = Data.DAO.Query(sSql);
                    DataTable dsT = ds.Tables[0];
                    TxtTitle.Text = ds.Tables[0].Rows[0][2].ToString();
                    TxtLogo.Text = ds.Tables[0].Rows[0][1].ToString();
                    TxtDiscription.Text = ds.Tables[0].Rows[0][3].ToString();
                }
            }
        }

        protected void BtnOK_Click(object sender, EventArgs e)
        {
            string Title = TxtTitle.Text.ToString();
            string logo = TxtLogo.Text.ToString();
            string abstr = TxtDiscription.Text.ToString();
            string sSql;
            
            if (Request.QueryString["Stype"] == "Edit")
            {
                string time = DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                sSql = "update T_solution set Title='" + TxtTitle.Text.ToString() + "',logo='" + TxtLogo.Text.ToString() + "',time='" + time + "',abstract='" + TxtDiscription.Text.ToString() + " 'where ID='" + Request.QueryString["SID"].ToString() + "'";
                Data.DAO.NonQuery(sSql);
            }
            else
            { 
                sSql = "insert into T_solution(logo,Title,abstract,time) values ('" + logo + "','" + Title + "','" + abstr.ToString() + "','" + System.DateTime.Now.Date.ToString() + "')";
                Data.DAO.NonQuery(sSql);
            }
            TxtDiscription.Text = "";
            TxtLogo.Text = "";
            TxtTitle.Text = "";
        }

        protected void Btncal_Click(object sender, EventArgs e)
        {
            TxtDiscription.Text = "";
            TxtLogo.Text = "";
            TxtTitle.Text = "";
        }
    }
}