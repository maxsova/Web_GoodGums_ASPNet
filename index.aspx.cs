using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class index : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		int largeOrders = 0; //initiating number of orders over 10
		
		if (!this.IsPostBack)
		{
			this.BindGrid();//bind xml data to gridView
		}

		//count values of Qty colunm larger than 10
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
			
			if (Convert.ToInt32(GridView1.Rows[i].Cells[5].Text)>10)
            {
				largeOrders++;
            }

			numberOfLargeOrders.Text = "Number of orders over 10 plants: " + largeOrders.ToString();
		}
        

    }

	private void BindGrid()
	{
		using (DataSet ds = new DataSet())
		{
			ds.ReadXml(MapPath("~/GoodGumsXML.xml"));
			GridView1.DataSource = ds.Tables["Purchase"];
			GridView1.DataBind();
		}
	}
	


}