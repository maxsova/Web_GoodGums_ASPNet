using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class invoice : System.Web.UI.Page
{

    //public string InvCustName { get; set; }
    //public string InvItem1Name{ get; set; }

    //public double InvItem1price { get; set; }
    //public int InvItem1Qty { get; set; }

    //protected void Page_Load(object sender, EventArgs e)
    //{

    //}

    protected void invBtnSubmit_Click(object sender, EventArgs e)
    {
       
        //var invoice = new List<invoice>();
        //invoice.Add(new invoice() { InvCustName = custFullName.Text, InvItem1Name=item1.Text }); 


        //InvoiceList.DataSource = invoice;
        //InvoiceList.DataBind();

        //below methods dont work:
        //Application["cName"] = "hello";
        //Response.Redirect("print.aspx?param ="+ 52);
        //Session["cName"] = custFullName.Text;


        //Session["cName"] = custFullName.Text;

        //custFullName.Text = "";
        //item1.Text = string.Empty;

        Response.Redirect("print.aspx?custName=" + custFullName.Text + "&item1=" + item1.Text + "&price1=" + price1.Text + "&qty1=" + qty1.Text + "&item2=" + item2.Text + "&price2=" + price2.Text + "&qty2=" + qty2.Text + "&item3=" + item3.Text + "&price3=" + price3.Text + "&qty3=" + qty3.Text);
    }
}
