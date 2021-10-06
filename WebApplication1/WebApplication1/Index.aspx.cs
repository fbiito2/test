using System;
using System.Web.UI;
using WebApplication1.App_Data.Model;
using WebApplication1.App_Code;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "ok";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string acc = TextBox1.Text;
            string pass = TextBox2.Text;
            YtsysTest _db = new YtsysTest();
            Utility utility = new Utility();
            Member member = utility.FindMember(acc, pass);
            Session["memberid"]= "";
            if (member != null)
            {
                Session["memberid"] = member.MemberId;
                Response.Redirect("/MemberCentre.aspx");
            }
            else
            {
                Label3.Text = "密碼或帳號錯誤";
            }

        }
    }
}