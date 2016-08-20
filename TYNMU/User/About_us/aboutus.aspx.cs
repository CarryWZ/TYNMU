using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TYNMU.User.About_us
{
    public partial class aboutus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sSql = "select * from T_Info";
            DataSet ds = new DataSet();
            ds=Data.DAO.Query(sSql);
            Response.Write(ds.Tables.Count);
            //Response.Write(ds.Tables[0].Rows.Count);
            div_info.InnerHtml = ds.Tables[0].Rows[0][1].ToString();
        }
    }
}