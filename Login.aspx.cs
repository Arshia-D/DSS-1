using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login1"] != null)
        {
            if (Session["Login1"].ToString() != "")
            {
                Response.Redirect("Dashboard.aspx");
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Model.User U = null;
        try
        {
            Model.ModelContainer DB = new Model.ModelContainer();

            U = (from u in DB.Users
                 where u.UserName.CompareTo(TextBox1.Text) == 0
                 select u).SingleOrDefault();



            if (U != null && U.Block == true)
            {
                Message.Text = "This profile is blocked ";
                MessageIcon.Visible = true;
                return;
            }
            if (U != null && U.Block == false)
            {
                string pss = Security.EncryptText(TextBox2.Text, U.GU_ID.ToString("N").Substring(0, 16));
                if (U.Pass.CompareTo(pss) != 0)
                {
                    Message.Text = "Username or password is wrong";
                    MessageIcon.Visible = true;
                    return;
                }

                //logged in7

                Session["SSID"] = Guid.NewGuid().ToString("N");
                HttpCookie c = new HttpCookie("SSID");
                c.Value = Session["SSID"].ToString();
                Response.Cookies.Add(c);

                Session["Login1"] = U.GU_ID.ToString("N");
                Session["Login1Name"] = U.UserName.ToString();
                Session["Name"] = U.Name.ToString();
                if (U.Role == "Ad" || U.Role == "Sup" || U.Role == "Dabir")
                    Response.Redirect("~/ad/main.aspx");
                else
                {
                    if (Request.QueryString["ReturnURL"] != null)
                    {
                        Response.Redirect(Request.QueryString["ReturnURL"]);
                    }
                    else
                    { Response.Redirect("Default.aspx"); }
                }


            }
            else
            {
                //not registered
                Message.Text = "Username or password is wrong";
                MessageIcon.Visible = true;

            }
        }
        catch (Exception) { }

    }
}