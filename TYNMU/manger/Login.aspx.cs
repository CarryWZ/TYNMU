using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
namespace TYNMU.manger
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["IsLogin"] = "";

        }
        //登录
        protected void BtnOK_Click(object sender, EventArgs e)
        {
         
           
            string passwd = TxtPassWD.Text.ToString();
            //解加密
            passwd = Data.DAO.GetMD5(passwd);
            Response.Write(passwd);
            string sSql = "select * from T_User where UserName='" + TxtAccount.Text.ToString() + "'and UserPassWD='" + passwd + "'";
            DataSet ds = new DataSet();
            ds = Data.DAO.Query(sSql);
            int Rows;
            Rows = ds.Tables[0].Rows.Count;
            if (Rows > 0)
            {
                Session["UserLevel"] = ds.Tables[0].Rows[0][3].ToString();
                Session["IsLogin"] = "Login";
                Response.Redirect("TYNFrameset.html");
            }
        }

    }
}