using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Text;

public partial class Register : System.Web.UI.Page
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

        Model.ModelContainer db = new Model.ModelContainer();

        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        int year = pc.GetYear(DateTime.Now);
        int month = pc.GetMonth(DateTime.Now);
        int day = pc.GetDayOfMonth(DateTime.Now);

        string MDate = year.ToString() + "/" + month.ToString() + "/" + day.ToString();


        Model.User U = null;
        Model.ModelContainer DB = new Model.ModelContainer();
        try
        {

            U = (from u in DB.Users
                 where u.UserName.CompareTo(TextBox1.Text) == 0
                 select u).SingleOrDefault();


            if (U != null)
            {
                //User Name already exists
                Message.Text = "The user already done!";
                //MessageIcon.Visible = true;
            }
            else
            {
                //user name dos not exist

                //New User
                Model.User NewUser = new Model.User();
                Guid g = new Guid();
                g = Guid.NewGuid();
                NewUser.GU_ID = g;

                NewUser.Name = name.Text;
                NewUser.UserName = TextBox1.Text;
                NewUser.Pass = Security.EncryptText(TextBox2.Text, NewUser.GU_ID.ToString("N").Substring(0, 16));

                NewUser.Role = "De";
                NewUser.Block = false;
                //NewUser.Name = TextBox3.Text;
                //NewUser.Tel = TextBox3.Text; 
                //NewUser.Address = TextBox6.Text;
                NewUser.Date = DateTime.Now;
                NewUser.PDate = MDate;
                //if (CheckBox1.Checked == true)
                //    NewUser.Rss = true;
                //else
                //    NewUser.Rss = false;

                //MemoryStream m = new MemoryStream();
                //System.Drawing.Bitmap.FromFile(MapPath("~/image/User_logo.png")).Save(m, System.Drawing.Imaging.ImageFormat.Jpeg);
                //NewUser.Image = m.ToArray();

                //NewUser.Image_t = m.ToArray();


                DB.Users.AddObject(NewUser);


                Model.Balance NB = new Model.Balance();

                NB.Remain = 0;
                NB.PDate = MDate;
                NB.Date = DateTime.Now;
                NewUser.Balances = NB;





                DB.SaveChanges();

                


             

                Message.Text = "Register is complete";
                
                Button1.Enabled = false;


            }
        }

        catch (Exception) { Response.Redirect("E.aspx"); }
    }


}