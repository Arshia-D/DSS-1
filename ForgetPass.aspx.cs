using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

public partial class ForgetPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login1"] != null)
        {
            if (Session["Login1"].ToString() != "")
            {
                Response.Redirect("home.aspx");
            }

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text != "")
            {

                Model.ModelContainer db = new Model.ModelContainer();
                var x = (from r in db.Users
                         where r.UserName.CompareTo(TextBox1.Text) == 0
                         select r).SingleOrDefault();

                if (x != null)
                {
                    //send email
                    //try
                    //{
                    string pss = Security.DecryptText(x.Pass, x.GU_ID.ToString("N").Substring(0, 16));

                    MailMessage message = new MailMessage("pr@Aspcore.ir", x.UserName);
                    message.Subject = "Password recovery ";

                    message.Body = HttpUtility.HtmlEncode("Name  : " + x.UserName + "       " + "Password  : " + pss);
                    message.IsBodyHtml = false;



                    SmtpClient smtp = new SmtpClient();
                    smtp.Send(message);

                    Message.Text = " The password has been sent to your email";
                    //}
                    //catch (Exception) { Response.Redirect("E.aspx"); } 
                }
                else
                {
                    //email address does not exists
                    Message.Text = "The entered user name is not valid";
                }
            }
            else
            {
                Message.Text = "Enter the username";
            }
        }
        catch (Exception) { Message.Text = "Error in password recovery"; }

    }
}