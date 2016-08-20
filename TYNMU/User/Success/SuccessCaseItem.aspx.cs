using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TYNMU.User.Success
{
    public partial class SuccessCaseItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["SuccID"].ToString();
            string sSql = "select * from T_success where ID='" + ID + "'";
            DataSet ds = new DataSet();
            ds = Data.DAO.Query(sSql);
            div_success.InnerHtml = ds.Tables[0].Rows[0][3].ToString();
            LbName.Text = "成功案例——"+ds.Tables[0].Rows[0][2].ToString() ;
            LbTime.Text = "[ " + ds.Tables[0].Rows[0][4].ToString().Substring(0, ds.Tables[0].Rows[0][4].ToString().Length - 7) + " ]";
        }
    }
}