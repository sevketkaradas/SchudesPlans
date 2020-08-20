using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchudesPlans
{
    public partial class ShowPlans : System.Web.UI.Page
    {
        protected void ShowPlansFirtre(object sender, EventArgs e)
        {
            users_plan = get_Plans(Convert.ToInt32(Session["UserID"]), Convert.ToDateTime(txtBaslangicTarih.Text));
            repeaterYukle(users_plan);
        }
        private DateTime start, finish;
        private static Plan users_plan = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("UserLoginPage.aspx");

                tarihSaatHesapla();
                users_plan = get_Plans(Convert.ToInt32(Session["UserID"]), start);
                repeaterYukle(users_plan);

            }

        }

        private void tarihSaatHesapla()
        {
            start = DateTime.Now.Date;
        }

        private Plan get_Plans(int id,DateTime start )
        {
            Plan  User_Plan =new Plan
                {
                 plans= new List<Users>()
            };
            try
            {
                using (ConnectiontoDatabaseDataContext db = new ConnectiontoDatabaseDataContext())
                {
                    var q = db.Viewplans.Where(
                        w => w.BeginDate <= start
                        && w.EndDate >= start).AsQueryable();
                    q = q.OrderBy(o => o.BeginDate).AsQueryable(); 
                    var buffer = (from i in q
                                  select new
                                  {
                                     
                                     i.Username,
                                     i.UserSurname,
                                     i.BeginDate,
                                     i.EndDate,
                                     i.Statement,

                                  }).ToList();
                    User_Plan.plans = (from i in buffer

                                select new Users
                                {
                                UserName=i.Username,
                                UserSurname=i.UserSurname,
                                StartDate=Convert.ToDateTime (i.BeginDate),
                                EndedDate = Convert.ToDateTime(i.EndDate),
                                Statment=i.Statement,

                                }).ToList();
                }
            }
          
                catch (Exception e)
            {
                User_Plan.hata = e.ToString();
            }
        
                    return User_Plan;
        }
        public void repeaterYukle(Plan users_plan)
        {
            rptTablo.DataSource = users_plan.plans;

            rptTablo.DataBind();



        }
        protected void rptTablo_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
         
        }
        protected void rptTablo_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {



        }
        public class Plan
        {
            
            public List<Users> plans;
            public string hata;
        
    }
    }
}