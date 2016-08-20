using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
namespace TYNMU.manger.About
{
    public partial class EditInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session.Count == 0 || Session["IsLogin"] == null)
                {
                    Response.Write("<script language='JavaScript'>parent.window.location='../Login.aspx';</script>");
                    return;
                }
                string sSql = "select * from T_Info";
                DataSet ds = new DataSet();
                ds = Data.DAO.Query(sSql);
                if (ds.Tables[0].Rows.Count > 0)
                    TxtContent.Text = ds.Tables[0].Rows[0][1].ToString();
            }
        }

        protected void BtnOK_Click(object sender, EventArgs e)
        {
            string sSql="select * from T_Info";
            string ssSql;
            DataSet ds = new DataSet();
            ds = Data.DAO.Query(sSql);
            if (ds.Tables[0].Rows.Count > 0)
                ssSql = "update T_Info set Text ='"+TxtContent.Text+"'where ID='"+ds.Tables[0].Rows[0][0].ToString()+"'";
            else
                ssSql = "insert into T_Info (Text) values('"+TxtContent.Text.ToString()+"')";
            Data.DAO.NonQuery(ssSql);
            //Response.Write(iRet);
        }
    }
}