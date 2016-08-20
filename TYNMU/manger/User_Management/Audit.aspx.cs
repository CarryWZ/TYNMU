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
    public partial class Audit : System.Web.UI.Page
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
            Response.Redirect("Edit_User.aspx?UserName=" + GridView1.Rows[Convert.ToInt32(e.NewEditIndex)].Cells[0].Text.ToString());
        }

        
    }
}