using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            Model.ModelContainer db = new Model.ModelContainer();

           

            var w = (from r in db.SubGroups
                     orderby r.Id descending
                     where r.Group.Title == "articles"
                     select r).Take(5);
            Articles.DataSource = w;
            Articles.DataBind();


            

        }
        catch (Exception) { }

       
    }

    private string SubStringText(object InputText, object StartIndex, object Length)
    {
        string StrText = InputText.ToString();
        int StrLenght = Convert.ToInt32(Length);
        if (StrText.Length > StrLenght)
        {
            return StrText.Substring(Convert.ToInt32(StartIndex), StrLenght) + " .. ";

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

    


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Login1Name"] = "";
        Session["Login1"] = "";

        Response.Redirect("Default.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Response.Redirect("intro.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Response.Redirect("editmyprofile.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        Response.Redirect("register.aspx");
    }
  

   
  
}