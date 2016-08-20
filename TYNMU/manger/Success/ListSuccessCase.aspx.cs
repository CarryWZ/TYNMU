using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TYNMU.manger.Success
{
    public partial class ListSuccessCase : System.Web.UI.Page
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
            string url = "AddSuccessCase.aspx?Sctype=Edit&ScID=" + this.GridView1.Rows[Convert.ToInt32(e.NewEditIndex)].Cells[0].Text;
            Response.Redirect(url);
        }
    }
}