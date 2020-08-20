using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchudesPlans
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("UserLoginPage.aspx");
            }
        }
   
    protected void Show_Plan(object sender, EventArgs e)
        {
            Response.Redirect("ShowPlans.aspx");


        }
        protected void Creat_Plan(object sender, EventArgs e)
        {

            Response.Redirect("CreatPlans.aspx");

        }
    }
}