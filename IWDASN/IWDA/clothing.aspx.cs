using IWDA.App_Code;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IWDA
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        double total = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // if first time user
                if (!IsPostBack) 
                {
                    updateBasketInformation();
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("home.aspx");
            }

        }

        private void updateBasketInformation()
        {
            try
            {
                // gettting amount of items in basket
                // display amount on link
                ArrayList basket = (ArrayList)Session["BASKET"];
                int numberItems = basket.Count;
                this.lnkBasket.Text = "Items in Basket: " + "(" + numberItems + ")";
            }
            catch(Exception ex)
            {

            }
        }


        protected void btnBlackHoody_Click(object sender, EventArgs e)
        {

            try
            {
                // get  and size selected              
                String size = ddlBsize.SelectedValue;
                double price = 150;

                // creating basket item object with information
                Trace.Warn("Adding new items to basket");

                // extracting array from session
                BasketItems basketItems = new BasketItems();
                basketItems.setPrice(price);
                basketItems.setProductName("Black Hoody");
                basketItems.setSize(size);

                ArrayList basketArray = (ArrayList)Session["BASKET"];
                // adding basket item object to array list 
                // store arraylist into the session 
                basketArray.Add(basketItems);
                Session.Add("BASKET", basketArray);
                updateBasketInformation();
            }
            catch(Exception ex)
            {

            }

            
        }

        private void alert(string v)
        {
            throw new NotImplementedException();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            // get and size selected
            String size = ddlWsize.SelectedValue;

            double price = 150;

            // creating basket item object with information
            Trace.Warn("Adding new items to basket");

            // extracting array from session
            BasketItems basketItems = new BasketItems();
            basketItems.setPrice(price);
            basketItems.setProductName("White Hoody");
            basketItems.setSize(size);
            ArrayList basketArray = (ArrayList)Session["BASKET"];

            // adding basket item object to array list 
            // store arraylist into the session 
            basketArray.Add(basketItems);
            Session.Add("BASKET", basketArray);
            updateBasketInformation();
            }
            catch (Exception ex)
            {

            }
        }

        protected void lnkBasket_Click(object sender, EventArgs e)
        {
            Response.Redirect("basket.aspx");
        }

        protected void btnBlueJeans_Click(object sender, EventArgs e)
        {
            try
            {
                // get  and size selected              
                String size = ddlBjeansSize.SelectedValue;
                double price = 100;

                // creating basket item object with information
                Trace.Warn("Adding new items to basket");

                // extracting array from session
                BasketItems basketItems = new BasketItems();
                basketItems.setPrice(price);
                basketItems.setProductName("Blue Jeans");
                basketItems.setSize(size);

                ArrayList basketArray = (ArrayList)Session["BASKET"];
                // adding basket item object to array list 
                // store arraylist into the session 
                basketArray.Add(basketItems);
                Session.Add("BASKET", basketArray);
                updateBasketInformation();
            }
            catch (Exception ex)
            {

            }

        }

        protected void btnGjeans_Click(object sender, EventArgs e)
        {
            try
            {
                // get  and size selected              
                String size = ddlGjeansSize.SelectedValue;
                double price = 100;

                // creating basket item object with information
                Trace.Warn("Adding new items to basket");

                // extracting array from session
                BasketItems basketItems = new BasketItems();
                basketItems.setPrice(price);
                basketItems.setProductName("Grey Jeans");
                basketItems.setSize(size);

                ArrayList basketArray = (ArrayList)Session["BASKET"];
                // adding basket item object to array list 
                // store arraylist into the session 
                basketArray.Add(basketItems);
                Session.Add("BASKET", basketArray);
                updateBasketInformation();
            }
            catch (Exception ex)
            {

            }

        }

        protected void btnFlyer_Click(object sender, EventArgs e)
        {
            try
            {
                // get  and size selected              
                String size = ddlFlyersSize.SelectedValue;
                double price = 1500;

                // creating basket item object with information
                Trace.Warn("Adding new items to basket");

                // extracting array from session
                BasketItems basketItems = new BasketItems();
                basketItems.setPrice(price);
                basketItems.setProductName("Limited Edition Flyer");
                basketItems.setSize(size);

                ArrayList basketArray = (ArrayList)Session["BASKET"];
                // adding basket item object to array list 
                // store arraylist into the session 
                basketArray.Add(basketItems);
                Session.Add("BASKET", basketArray);
                updateBasketInformation();
            }
            catch (Exception ex)
            {

            }

        }
    }
}