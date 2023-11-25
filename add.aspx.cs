using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.Xml.Linq;
using System.Windows.Forms;
using System.Text.RegularExpressions;

public partial class add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            //Bind xml data to datalist
            BindDatalist();
        }
    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        XmlDocument xmldoc = new XmlDocument();
        xmldoc.Load(Server.MapPath("GoodGumsXML.xml"));

        XmlNodeList nodes = xmldoc.SelectNodes("//Purchase");
        int maxId = nodes.Count;
        maxId++;

        XmlElement parentelement = xmldoc.CreateElement("Purchase");
        XmlElement id = xmldoc.CreateElement("id");
        id.InnerText = maxId.ToString();
        XmlElement fullName = xmldoc.CreateElement("fullName");
        fullName.InnerText = inFullName.Text;
        XmlElement emailAddress = xmldoc.CreateElement("emailAddress");
        emailAddress.InnerText = inEmailAddress.Text;
        XmlElement productname = xmldoc.CreateElement("productname");
        productname.InnerText = inProductName.Text;
        XmlElement unitprice = xmldoc.CreateElement("unitprice");
        unitprice.InnerText = inUnitPrice.Text;
        XmlElement quantity = xmldoc.CreateElement("quantity");
        quantity.InnerText = inQuantity.Text;
        parentelement.AppendChild(id);
        parentelement.AppendChild(fullName);
        parentelement.AppendChild(emailAddress);
        parentelement.AppendChild(productname);
        parentelement.AppendChild(unitprice);
        parentelement.AppendChild(quantity);
        xmldoc.DocumentElement.AppendChild(parentelement);
        xmldoc.Save(Server.MapPath("GoodGumsXML.xml"));
        BindDatalist();

        inFullName.Text = null;       
        inEmailAddress.Text = null;
        inProductName.Text = null;      
        inUnitPrice.Text = null;      
        inQuantity.Text = null;

        //MessageBox.Show("New purchase added");
        lblSuccess.Text = "Purchase number " + maxId.ToString() + " is successfully added";
        //Response.Redirect("index.aspx");
    }
   
    // Bind xml data to datalist
        private void BindDatalist()
    {
        XmlTextReader xmlreader = new XmlTextReader(Server.MapPath("GoodGumsXML.xml"));
        DataSet ds = new DataSet();
        ds.ReadXml(xmlreader);
        xmlreader.Close();
        if (ds.Tables.Count != 0)
        {
           dlPurchase.DataSource = ds.Tables["Purchase"]; 
            dlPurchase.DataBind();
        }
        else
        {
            dlPurchase.DataSource = null;
            dlPurchase.DataBind();
        }
    }

}