using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IWDA.App_Code;

namespace IWDA
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            blogLoad();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string person = "Non-Member";
            if (User.Identity.IsAuthenticated)
                // if user is logged in 
            {
                person = User.Identity.Name;
                // get username
            }


            txtOutput.Text += DateTime.UtcNow.ToShortTimeString() + " | " + person + " --> " + txtInput.Text + "\n";
            // get text
;


            File.WriteAllText(Server.MapPath("~/blogText/blogTXT.txt"), txtOutput.Text);
            // add to file
        }

        protected void blogLoad()
        {
            String[] stringBlog =
                 File.ReadAllLines(Server.MapPath("~/blogText/blogTXT.txt"));
                // read line operator
            txtOutput.Text = "";

            foreach (String line in stringBlog)
            // read each line
            {
                txtOutput.Text += line;
                txtOutput.Text += "\n";
                // load the blog
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtInput.Text = "";
        }
    }
}