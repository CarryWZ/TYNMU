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
    public partial class SetNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count == 0 || Session["IsLogin"] == null)
            {
                Response.Write("<script language='JavaScript'>parent.window.location='../Login.aspx';</script>");
                return;
            }
        }

        protected void GVNews_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string url = "AddNews.aspx?type=Edit&ID=" + this.GVNews.Rows[Convert.ToInt32(e.NewEditIndex)].Cells[0].Text;
            Response.Redirect(url);
        }
        protected void GVNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string sSql = "delete from T_News where ID ='" + GVNews.Rows[e.RowIndex].Cells[0].Text + "'";
            //Response.Write(GVNews.Rows[e.RowIndex].Cells[0].Text);
            Data.DAO.NonQuery(sSql);
            GVNews.DataBind();
        }
    }
}