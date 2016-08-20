using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TYNMU.manger.User_Management
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count == 0 || Session["IsLogin"] == null)
            {
                Response.Write("<script language='JavaScript'>parent.window.location='../Login.aspx';</script>");
                return;
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string UserName = GridView1.Rows[Convert.ToInt32(e.NewEditIndex)].Cells[0].Text.ToString();
            string PassWD = GridView1.Rows[Convert.ToInt32(e.NewEditIndex)].Cells[1].Text.ToString();
            
           
            string sSql = "insert into T_User(UserName,UserPassWD) values ('" + UserName + "','" + PassWD + "')";
            Data.DAO.NonQuery(sSql);
            sSql = "delete from T_Apply where UserName='" + UserName + "'";
            Data.DAO.NonQuery(sSql);
        }

        
    }
}