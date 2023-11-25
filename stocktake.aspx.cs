using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stocktake : System.Web.UI.Page
{
    int adjustedQty;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtReorderQty1.Text = "0";
        txtReorderQty2.Text = "0";
        txtReorderQty3.Text = "0";
        txtSubtotal1.Text = "0.00";
        txtSubtotal2.Text = "0.00";
        txtSubtotal3.Text = "0.00";
        lblGrandTotalValue.Text = "0.00";
        //txtReorderQty.Text = "10";

    }

    protected void CalcBtn_Click(object sender, EventArgs e)
    {

        //int reorderQty = adjustedQty;
        int reorderQty = Int32.Parse(txtReorderQty.Text);
        //txtReorderQty1.Text = "0";
        //txtReorderQty2.Text = "0";
        //txtReorderQty3.Text = "0";

        double subTotal1 = 0.00;
        double subTotal2 = 0.00;
        double subTotal3 = 0.00;
        double grandTotal = 0.00;

        int reorderQty1 = reorderQty - (Int32.Parse(txtQty1.Text));
        int reorderQty2 = reorderQty - (Int32.Parse(txtQty2.Text));
        int reorderQty3 = reorderQty - (Int32.Parse(txtQty3.Text));

        if (reorderQty1 > 0)
        {
            txtReorderQty1.Text = reorderQty1.ToString();
            subTotal1 = reorderQty1 * (double.Parse(txtUnitPrice1.Text));
        }

        if (reorderQty2 > 0)
        {
            txtReorderQty2.Text = reorderQty2.ToString();
            subTotal2 = reorderQty2 * (double.Parse(txtUnitPrice2.Text));
        }

        if (reorderQty3 > 0)
        {
            txtReorderQty3.Text = reorderQty3.ToString();
            subTotal3 = reorderQty3 * (double.Parse(txtUnitPrice3.Text));
        }



        grandTotal = subTotal1 + subTotal2 + subTotal3;

        //txtSubtotal1.Text = subTotal1.ToString("0.00");
        //txtSubtotal2.Text = subTotal2.ToString("0.00");
        //txtSubtotal3.Text = subTotal3.ToString("0.00");
        //lblGrandTotalValue.Text = grandTotal.ToString("0.00");
    }


    protected void MinusQty_Click(object sender, EventArgs e)
    {
        adjustedQty = Int32.Parse(txtReorderQty.Text);
        if (adjustedQty > 0)
        {
            adjustedQty--;
            txtReorderQty.Text = adjustedQty.ToString();
            CalcBtn_Click(sender, e);
        }
        txtReorderQty.Text = adjustedQty.ToString();
        //adjustedQty = Int32.Parse(txtReorderQty.Text);
    }

    protected void PlusQty_Click(object sender, EventArgs e)
    {
        adjustedQty = Int32.Parse(txtReorderQty.Text);
        if (adjustedQty < 10)
        {
            adjustedQty++;
            txtReorderQty.Text = adjustedQty.ToString();
            CalcBtn_Click(sender, e);
            txtReorderQty.Text = adjustedQty.ToString();
        }
    }
}