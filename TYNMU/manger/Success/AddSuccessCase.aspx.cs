using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TYNMU.manger.Success
{
    public partial class AddSuccessCase : System.Web.UI.Page
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

                if (Request.QueryString["Sctype"] == "Edit")
                {
                    string ID = Request.QueryString["ScID"];
                    string sSql = "select * from T_success where ID='" + ID + "'";
                    DataSet ds = Data.DAO.Query(sSql);
                    DataTable dsT = ds.Tables[0];
                    Txtname.Text = ds.Tables[0].Rows[0][2].ToString();
                    Txtimage.Text = ds.Tables[0].Rows[0][1].ToString();
                    Txtdetial.Text = ds.Tables[0].Rows[0][3].ToString();
                }
            }
        }

        protected void BtnOK_Click(object sender, EventArgs e)
        {
            string name = Txtname.Text.ToString();
            string image = Txtimage.Text.ToString();
            string detial = Txtdetial.Text.ToString();
            string sSql;
            if (Request.QueryString["SCtype"] == "Edit")
            {
                string time = DateTime.Now.ToString("yyyy-MM-dd").ToString().Trim();
                sSql = "update T_success set name='" + name + "',image='" + image + "',time='" + time + "',details='" + detial + " 'where ID='" + Request.QueryString["ScID"].ToString() + "'";
                Data.DAO.NonQuery(sSql);
            }
            else
            {
                sSql = "insert into T_success(image,name,details,time) values ('" + image + "','" + name + "','" + detial + "','" + System.DateTime.Now.Date.ToString() + "')";
                Data.DAO.NonQuery(sSql);
            }
        }

        protected void Btncal_Click(object sender, EventArgs e)
        {

        }
    }
}