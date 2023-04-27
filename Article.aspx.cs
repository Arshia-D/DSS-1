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
public partial class Article : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int GI = -1;

        if (Request.QueryString["id"] != null)

            GI = int.Parse(Request.QueryString["id"]);
        else
            Response.Redirect("default.aspx");

        Model.ModelContainer db = new Model.ModelContainer();
        try
        {
        var D = (from r in db.SubGroups
                 where r.Id == GI
                 select r).SingleOrDefault();

        this.Title = D.Title;

        title.Text = D.Title;
        Navigate2.Text = D.Title;
        Visit.Text = D.Visit.ToString();
        Des.Text = D.Des;

        


        Image1.ImageUrl = "~/Gallery/l/" + D.Image_Name;
        Image1.ToolTip = D.Title;
        Image1.AlternateText = D.Title;

        
        //Label12.Text = D.Group.Title;
        

        var Ax = (from r in db.Details

                  where r.SubGroup.Id == D.Id
                  select r);

        ListView1.DataSource = Ax;
        ListView1.DataBind();

        var sub = D.Group.Title;

        var w = (from r in db.SubGroups
                 orderby r.Id descending
                 where r.Group.Title == "articles" && r.Id != D.Id
                 select r).Take(10);
        web.DataSource = w;
        web.DataBind();

        Int32 vis = D.Visit.Value;
        vis++;
        D.Visit = vis;
        db.SaveChanges();

        }
        catch (Exception) { Response.Redirect("Articles.aspx"); }

        try
        {
            var D1 = (from r in db.SubGroups
                      where r.Id > GI && r.Group.Title == "articles"
                      select r).FirstOrDefault();

            if (D1.Title != null)
            {
                Next.Text = D1.Title;
                aNext.HRef = "Article.aspx?id=" + D1.Id;
            }
            else
            {
                Next.Text = "";
                aNext.Disabled = true;
            }
        }
        catch (Exception) { }


        try
        {
            var D2 = (from r in db.SubGroups
                      orderby r.Id descending
                      where r.Id < GI && r.Group.Title == "articles"
                      select r).FirstOrDefault();
            if (D2.Title != null)
            {
                Pre.Text = D2.Title;
                aPre.HRef = "Article.aspx?id=" + D2.Id;
            }
            else
            {
                Pre.Text = "";
                aPre.Disabled = true;
            }

        }
        catch (Exception) { }

        var x3 = (from r in db.Sub_comment
                  join r2 in db.Users on r.User_id equals r2.Id
                  orderby r.Date descending
                  where r.SubGroup.Id == GI && r.Block != true
                  select new { PD = r.PDate, TI = r.Time, DE = r.Des, NA = r2.Name, ID = r2.Id });


        Comment.DataSource = x3;
        Comment.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
        int year = pc.GetYear(DateTime.Now);
        int month = pc.GetMonth(DateTime.Now);
        int day = pc.GetDayOfMonth(DateTime.Now);
        string MDate = year.ToString() + "/" + month.ToString() + "/" + day.ToString();

        Model.ModelContainer DB = new Model.ModelContainer();

        int sub_id = int.Parse(Request.QueryString["id"]);
        string idd = Request.QueryString["id"];
        var x = (from r in DB.SubGroups
                 where r.Id == sub_id
                 select r).SingleOrDefault();

        Model.Sub_comment com = new Model.Sub_comment();
        com.Des = TextBox3.Text;

        com.Date = DateTime.Now;

        DateTime dt = DateTime.Now;
        com.Time = dt.ToString("HH:mm");

        com.PDate = MDate;
        com.Checked = true;
        com.Block = false;

        //////////////////////////////////////////user logedin//////////////////////////////////////

        if ((Session["Login1"] != null) && (Session["Login1"].ToString() != ""))
        {


            //try
            {

                Guid U_id = Guid.Parse(Session["Login1"].ToString());

                var user = (from r in DB.Users
                            where r.GU_ID == U_id
                            select r).SingleOrDefault();
                com.User_id = user.Id;
                com.Name = user.Name;
                
                x.Sub_comment.Add(com);
                DB.SaveChanges();
                Response.Redirect("article.aspx?id=" + sub_id);
            }
            //catch (Exception) { }

        }
        //////////////////////////////////////////////////////user no login////////////////////////////////////////////////////

        //if (Session["Login1"] == null)
        else
        {

            Model.User U = null;

            //try
            {

                U = (from u in DB.Users
                     where u.UserName.CompareTo(TextBox2.Text) == 0
                     select u).SingleOrDefault();


                if (U != null)   ////////////////////////////////user is don//////////////////////////////////
                {
                    var user = (from r in DB.Users
                                where r.GU_ID == U.GU_ID
                                select r).SingleOrDefault();
                    com.User_id = user.Id;
                    com.Name = user.Name;
                    x.Sub_comment.Add(com);
                    DB.SaveChanges();
                    Response.Redirect("article.aspx?id=" + sub_id);
                    //Button1.Enabled = false;

                   
                }
                else
                {
                    Message.Text = "کاربر گرامی Save Comment نیازMyد Save Name در سایت میباشد";
                    MessageIcon.Visible = true;
                
                }


            }
            //catch (Exception) { }

        }

       

      

    }

    
    private string SubStringText(object InputText, object StartIndex, object Length)
    {
        string StrText = InputText.ToString();
        int StrLenght = Convert.ToInt32(Length);
        if (StrText.Length > StrLenght)
        {
            return StrText.Substring(Convert.ToInt32(StartIndex), StrLenght) + "";

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
}