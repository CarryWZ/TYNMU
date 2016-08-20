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
    public partial class SuccessCaseList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataListBind();
        }
        private void DataListBind()
        {
            int current_page = Convert.ToInt32(lblCurrent.Text);
            string sSql = "select * from T_success order by ID desc";
            DataSet ds = new DataSet();
            ds = Data.DAO.Query(sSql);
            PagedDataSource ps = new PagedDataSource();
            ps.DataSource = ds.Tables[0].DefaultView;
            ps.AllowPaging = true;
            ps.PageSize = 4;
            lblTotal.Text = ps.PageCount.ToString();
            ps.CurrentPageIndex = current_page - 1;
            lbtnFirst.Enabled = true;
            lbntUp.Enabled = true;
            lbtnDown.Enabled = true;
            lbtnLast.Enabled = true;
            if (current_page == 1)
            {
                lbtnFirst.Enabled = false;
                lbntUp.Enabled = false;
            }
            if (current_page == Convert.ToInt32(lblTotal.Text))
            {
                lbtnLast.Enabled = false;
                lbtnDown.Enabled = false;
            }
            DLNewslist.DataSource = ps;
            DLNewslist.DataBind();
        }
        protected void lbtnFirst_Click(object sender, EventArgs e)
        {
            lblCurrent.Text = "1";
            DataListBind();
        }
        protected void lbtnDown_Click(object sender, EventArgs e)
        {
            lblCurrent.Text = (Convert.ToInt32(lblCurrent.Text) + 1).ToString();
            DataListBind();

        }
        protected void lbntUp_Click(object sender, EventArgs e)
        {
            lblCurrent.Text = (Convert.ToInt32(lblCurrent.Text) - 1).ToString();
            DataListBind();
        }
        protected void lbtnLast_Click(object sender, EventArgs e)
        {
            lblCurrent.Text = lblTotal.Text;
            DataListBind();
        }
    }
}