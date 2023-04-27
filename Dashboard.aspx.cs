using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie("UserID");
        c.Value = Guid.NewGuid().ToString("N");
        Response.Cookies.Add(c);


        if (Session["Login1"] != null)
        {
            if (Session["Login1"].ToString() == "")
            {
                Response.Redirect("login.aspx?ReturnURL=" + Request.Url.ToString());
            }

        }
        else
        {
            Response.Redirect("login.aspx?ReturnURL=" + Request.Url.ToString());
        }




        try
        {
            Model.ModelContainer db = new Model.ModelContainer();
            


           Guid id = Guid.Parse(Session["Login1"].ToString());

                
                var Me2 = (from r in db.Users
                         where r.GU_ID == id 
                         select r).SingleOrDefault();

                Name.Text = Me2.Name;
                Pos.Text = Me2.Position;
                Des.Text = Me2.Des;

                Tel.Text = Me2.Tel;



                if (Me2.Image_Name != "noimage.jpg" && Me2.Image_Name != null)
                {
                    avatar.ImageUrl = "User_Pic/s/" + Me2.Image_Name;
                    avatar.AlternateText = Me2.Name;
                    avatar.ToolTip = Me2.Name;
                  
                }
                else
                {
                    avatar.ImageUrl = "~/images/avatar.png";
                }
               

             
        }
        catch (Exception) { }

    }

    private string SubStringText(object InputText, object StartIndex, object Length)
    {
        string StrText = InputText.ToString();
        int StrLenght = Convert.ToInt32(Length);
        if (StrText.Length > StrLenght)
        {
            return StrText.Substring(Convert.ToInt32(StartIndex), StrLenght) + "..";

        }
        else
        {

            return StrText;
        }

    }

    public string GetPlainTextFormHtml(string Html)
    {

        return Regex.Replace(Html, "<[^>]>", string.Empty);
    }

    public string SubStringHtml(object InputHtml, object StartIndex, object Length)
    {
        return SubStringText(GetPlainTextFormHtml(InputHtml.ToString()), StartIndex, Length);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Login1Name"] = "";
        Session["Login1"] = "";

        Response.Redirect("Default.aspx");
    }
}