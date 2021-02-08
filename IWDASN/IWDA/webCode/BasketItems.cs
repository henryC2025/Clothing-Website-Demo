using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IWDA.App_Code
{
    public class BasketItems
    {
        private String productName = null;
        private String size = null;
        private double price = 0;

        public string getProductName()
        {
            return this.productName;
        }

        public void setProductName(string productName)
        {
            this.productName = productName;
        }

        public double getPrice()
        {
            return this.price;
        }

        public void setPrice(double price)
        {
            this.price = price;
        }

        public string getSize()
        {
            return this.size;
        }

        public void setSize(string size)
        {
            this.size = size;
        }
    }

    
}