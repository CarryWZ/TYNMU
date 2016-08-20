using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TYNMU.User.Solution
{
    public partial class SolutionItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["SolutionID"].ToString();
            string sSql = "select * from T_solution where ID='" + ID + "'";
            DataSet ds = new DataSet();
            ds = Data.DAO.Query(sSql);
            div_solution.InnerHtml =ds.Tables[0].Rows[0][3].ToString();
            LbTitle.Text = ds.Tables[0].Rows[0][2].ToString()+"——解决方案";
            LbTime.Text = "[ " + ds.Tables[0].Rows[0][4].ToString().Substring(0, ds.Tables[0].Rows[0][4].ToString().Length-7) + " ]";
        }
    }
}