using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
            Guid id = Guid.Parse(Session["Login1"].ToString());
            Model.ModelContainer db = new Model.ModelContainer();


            var x = (from r in db.Users
                     where r.GU_ID == id
                     select r).SingleOrDefault();

            TextBox1.Text = x.UserName;
            TextBox1.Enabled = false;
        }
        catch (Exception) { Response.Redirect("E.aspx"); }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Model.ModelContainer DB = new Model.ModelContainer();

            Model.User NewUser;
            NewUser = (from u in DB.Users
                       where u.UserName.CompareTo(TextBox1.Text) == 0
                       select u).SingleOrDefault();


            NewUser.UserName = TextBox1.Text;
            NewUser.Pass = Security.EncryptText(TextBox2.Text, NewUser.GU_ID.ToString("N").Substring(0, 16));
            DB.SaveChanges();

            Message.Text = "The password was changed";
            MessageIcon.Visible = true;
            Button1.Enabled = false;
        }
        catch (Exception) { Response.Redirect("e.aspx"); }

    }


}