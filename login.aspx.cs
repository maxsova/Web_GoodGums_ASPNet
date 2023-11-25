using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class login : System.Web.UI.Page
{
    String fileName = "loginfo.txt";
    protected void Page_Load(object sender, EventArgs e)
    {
        // Executes when the page loads.


        Session["loggedIn"] = null;
    }

    protected void BtnIndex_Click(object sender, EventArgs e)
    {
        // Executes when the button is clicked.
        // Redirect the user to the given page.
        Response.Redirect("index.aspx");
    }



    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String username = txtUserName.Text;
        String password = txtPassword.Text;

        string fullFileName = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, fileName);
        string[] lines = File.ReadAllLines(fullFileName);

        foreach (string line in lines)
        {
            string[] words = line.Split(':');
            if (words[0] == username && words[1] == password)
            {
                Session["loggedIn"] = true;
                Session["username"] = username;

                Response.Redirect("index.aspx");
            }
            else
            {
                lblErrorLogin.Text = "Your username or pasword is incorrect";
            }
        }
    }
}