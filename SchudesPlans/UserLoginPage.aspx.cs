using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchudesPlans
{
    public partial class UserLoginPage : System.Web.UI.Page
    {
       
            protected void btnGiris_Click(object sender, EventArgs e)
            {
            
                ConnectiontoDatabaseDataContext users = new ConnectiontoDatabaseDataContext();
                var i = from p in users.Users
                        where p.Username == txtUser.Text
                        && p.Password == txtPassword.Text
                        select p;
                if (i.Any())
                {
                    Session["UserID"] = i.FirstOrDefault().id.ToString();
                    Session["UserName"] = i.FirstOrDefault().Username.ToString();
                Response.Redirect("MainPage.aspx");

            }
            else
                {

                }
            
        }
    }
}