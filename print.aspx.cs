using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["custName"];
        string item1 = Request.QueryString["item1"];
        string price1 = Request.QueryString["price1"] == "" ? "0" : Request.QueryString["price1"];
        string qty1 = Request.QueryString["qty1"] == "" ? "0" : Request.QueryString["qty1"];
        string item2 = Request.QueryString["item2"];
        string price2 = Request.QueryString["price2"] == "" ? "0" : Request.QueryString["price2"];
        string qty2 = Request.QueryString["qty2"] == "" ? "0" : Request.QueryString["qty2"];
        string item3 = Request.QueryString["item3"];
        string price3 = Request.QueryString["price3"] == "" ? "0" : Request.QueryString["price3"];
        string qty3 = Request.QueryString["qty3"] == "" ? "0" : Request.QueryString["qty3"];

        //further validation should prevent invoicing blank lines. That can be done in a series of case statements or or as part of below calculation. 

        // var invTotal = Double.Parse(price1) * Double.Parse(qty1) + Double.Parse(price2) * Double.Parse(qty2) + Double.Parse(price3) * Double.Parse(qty3);

        var price1Value = String.IsNullOrEmpty(price1) ? 0.0 : Double.Parse(price1);
        var qty1Value = String.IsNullOrEmpty(qty1) ? 0.0 : Double.Parse(qty1);
        var price2Value = String.IsNullOrEmpty(price2) ? 0.0 : Double.Parse(price2);
        var qty2Value = String.IsNullOrEmpty(qty2) ? 0.0 : Double.Parse(qty2);
        var price3Value = String.IsNullOrEmpty(price3) ? 0.0 : Double.Parse(price3);
        var qty3Value = String.IsNullOrEmpty(qty3) ? 0.0 : Double.Parse(qty3);

        var invTotal = price1Value * qty1Value + price2Value * qty2Value + price3Value * qty3Value;


        DateTime invDateTime = DateTime.Now;
        TimeSpan dueInNumberOfDays = new TimeSpan(14, 0, 0, 0, 0);
        DateTime dueDateTime = invDateTime.Add(dueInNumberOfDays);

        int yearInv = invDateTime.Year;
        int monthInv = invDateTime.Month;
        int dayInv = invDateTime.Day;


        int yearDue = dueDateTime.Year;
        int monthDue = dueDateTime.Month;
        int dayDue = dueDateTime.Day;

        custFullNameP.Text = name;
        invDateP.Text = "Invoice date: " + dayInv + " / " + monthInv + " / " + yearInv;
        item1P.Text = item1;
        price1P.Text = price1;
        qty1P.Text = qty1;
        item2P.Text = item2;
        price2P.Text = price2;
        qty2P.Text = qty2;
        item3P.Text = item3;
        price3P.Text = price3;
        qty3P.Text = qty3;
        totalInvP.Text = invTotal.ToString();
        dueByDate.Text = dayDue + " / " + monthDue + " / " + yearDue;




    }
}