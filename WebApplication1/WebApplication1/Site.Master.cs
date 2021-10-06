using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                if (Session["memberid"] == null)
                {
                    LinkButton1.Text = "註冊";
                    LinkButton1.PostBackUrl = "registered.aspx";
                }
                else
                {
                    LinkButton1.Text = "登出";
                }
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session["memberid"] = null;
            Response.Redirect("Index");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}