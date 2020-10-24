using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Caterers
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
                {
                    Server.Transfer("adminview.aspx");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Yo ! I am Admin !');</script>");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Wrong Credentials !');</script>");
                }
            }
        }
    }
}