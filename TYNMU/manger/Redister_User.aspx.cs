using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TYNMU.manger
{
    public partial class Redister_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnReg_Click(object sender, EventArgs e)
        {
            string UserName = TxtUser.Text.ToString();
            string PassWD = TxtUserPassWD.Text.ToString();
            //加密 
            PassWD = Data.DAO.GetMD5(PassWD);
            string Reason = TxtReason.Text.ToString();
            string sSql = "insert into T_Apply(UserName,UserPassWD,ApplyReason) values ('" + UserName + "','" + PassWD + "','" + Reason + "')";
            Data.DAO.NonQuery(sSql);
        }
    }
}