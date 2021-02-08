using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using IWDA.App_Code;
using System.Collections;
using System.Linq.Expressions;

namespace IWDA
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ArrayList basketArray = (ArrayList)Session["BASKET"];
                if (basketArray.Count == 0)
                {
                    lblMessage.Text = "Your BOX is Empty";
                }
            }
            catch(Exception ex)
            {

            }

            try
            {
                // check if user is logged in 
                if (User.Identity.IsAuthenticated)
                {
                    displayInformation();
                }
                else
                {
                    // direct to other sign in page 
                    Response.Redirect("~/account.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("~/account.aspx");
            }

        }

        // method to add information into panel
        private void displayInformation()
        {
            try {
                // clears the panels items
                // setting totalpirce variable
                this.pnlInfo.Controls.Clear();
                double TotalPrice = 0;

                ArrayList basketArray = (ArrayList)Session["BASKET"];
                int amountItems = basketArray.Count;

                this.lblSummary.Text = "Items in Basket: " + amountItems;

                // add items from basket list
                for (int bi = 0; bi < amountItems; bi++)
                {
                    // set up string builder to read info
                    StringBuilder sb = new StringBuilder();
                    BasketItems itemB = (BasketItems)basketArray[bi];

                    // set up new label
                    Label newItem = new Label();
                    newItem.CssClass = "basketInfo";

                    sb.Append("Name : " + itemB.getProductName() + "<br>");
                    sb.Append("Size : " + itemB.getSize() + "<br>");
                    sb.Append("Cost : £" + itemB.getPrice() + "<br>");
                    sb.Append("_______________________________________<br>");
                    newItem.Text = sb.ToString();

                    TotalPrice += itemB.getPrice();

                    // add the item controls (labels) to the panel  
                    this.pnlInfo.Controls.Add(newItem);
                }
                this.lblTotalCost.Text = "Total Cost : £" + TotalPrice;

            }
            catch(Exception ex)
            {

            }
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            try { 
            // get session list
            ArrayList basketArray = (ArrayList)Session["BASKET"];

            // clear the basket 
            basketArray.Clear();

            // replace old content with cleared 
            Session["BASKET"] = basketArray;

            // display the information
            displayInformation();
            }
            catch(Exception ex)
            {
                Response.Redirect("basket.aspx");
            }
            Response.Redirect("basket.aspx");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                ArrayList basketArray = (ArrayList)Session["BASKET"];
                if (basketArray.Count == 0)
                {

                }
                else
                {
                    basketArray.Clear();
                    Session["BASKET"] = basketArray;
                    displayInformation();
                    Response.Redirect("confirmation.aspx");
                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}    
