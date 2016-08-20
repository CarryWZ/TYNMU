using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
namespace TYNMU.User.News
{
    public partial class NewsItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["NewsID"].ToString();
            string sSql = "select * from T_News where ID='" + ID + "'";
            DataSet ds = new DataSet();
            ds = Data.DAO.Query(sSql);
            DataTable dt=ds.Tables[0];
            string strEditor =dt.Rows[0][3].ToString();
            string strTitle = dt.Rows[0][1].ToString();
            string strClicknum = dt.Rows[0][2].ToString();
            string strTime = dt.Rows[0][5].ToString();
            string content = dt.Rows[0][8].ToString();
            LbClickNum.Text = "点击量：" + strClicknum;
            LbEditor.Text = "作者："+strEditor;
            LbTime.Text = "时间：" + strTime.Substring(0,strTime.Length-7);
            LbTitle.Text = strTitle;
            div_content.InnerHtml = content;
            int Clicknum ;
            if(strClicknum.Trim()=="")
               Clicknum=0;
            else
                Clicknum = Convert.ToInt32(dt.Rows[0][2]);
            Clicknum++;
            sSql = "update  T_News set ClickNum ='" + Clicknum.ToString()+"'where ID='"+ID+"'";
            Data.DAO.NonQuery(sSql);
            
        }
    }
}