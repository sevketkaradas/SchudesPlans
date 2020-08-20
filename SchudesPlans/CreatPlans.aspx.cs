using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchudesPlans
{
    public partial class CreatPlans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("UserLoginPage.aspx");
            }
        }
        protected void Save_Plan(object sender, EventArgs e)
        {

        ConnectiontoDatabaseDataContext db = new ConnectiontoDatabaseDataContext();
            try
            {
                PlanTable Plan = new PlanTable
                {
                    UserId = Convert.ToInt32(Session["UserID"]),
                    BeginDate = Convert.ToDateTime(txtBaslangicTarih.Text),
                    EndDate = Convert.ToDateTime(txtBitisTarih.Text),
                    Statement = txtStatement.Text

                };

                db.PlanTables.InsertOnSubmit(Plan);
                db.SubmitChanges();
                string message = "Your details have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                txtBaslangicTarih.Text = "";
                txtBitisTarih.Text = "";
                txtStatement.Text = "";

            }
            catch(Exception ex)
            {

            }


        }
        protected void Go_ShowPlans(object sender, EventArgs e)
        {
            Response.Redirect("ShowPlans.aspx");


        }
    }
  
}