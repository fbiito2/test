using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.App_Code;
using WebApplication1.App_Data.Model;

namespace WebApplication1
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Member member = new Member();

                //string memberid = Session["memberid"];

                if (Session["memberid"] == null)
                {
                    Response.Redirect("~/registered.aspx");
                }
                else
                {
                    Utility utility = new Utility();
                    member = utility.GetMember(Convert.ToInt32(Session["memberid"]));
                }
                switch (member.Authority)
                {
                    case 1:

                    default:
                        break;
                }
            }

        }
    }
}