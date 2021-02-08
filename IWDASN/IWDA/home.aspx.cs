using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IWDA
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // if basket session is empty 
                // new session array is created
                if (Session["BASKET"] == null)
                {

                    ArrayList basketArray = new ArrayList();
                    Session.Add("BASKET", basketArray);
                }

            }
        }
    }
}