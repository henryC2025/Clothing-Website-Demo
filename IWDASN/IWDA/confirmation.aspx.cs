using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IWDA
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random rndNum = new Random((int)DateTime.Now.Ticks);
            int newGenerated = 0;
            newGenerated = rndNum.Next(100000000, 900000000);

            String randomNum = newGenerated.ToString();

            lblCode.Text = randomNum;
        }

        protected void btnGoBack_Click(object sender, EventArgs e)
        {
            // return to page
            Response.Redirect("clothing.aspx");
        }
    }
}