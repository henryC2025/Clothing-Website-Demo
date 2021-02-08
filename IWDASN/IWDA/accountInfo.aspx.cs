using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IWDA
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if user is logged in their username will be displayed
            if(User.Identity.IsAuthenticated)
            {
                lblUser.Text = "Hello " + User.Identity.Name;
            }
            else
            {
                lblUser.Text = "Hello anonymous";
            }
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // remove username and password session when button is clicked
            Session.Remove("Username");
            Session.Remove("Password");
            
            // signs user out and directs to account sign in page
            if (User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
                Response.Redirect("~/account.aspx");
            }
        }
    }
}