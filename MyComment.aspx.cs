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

public partial class MyComment : System.Web.UI.Page
{

    int p1 = 0, p2 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;

        Model.ModelContainer db = new Model.ModelContainer();


        Guid id = Guid.Parse(Session["Login1"].ToString());


        var U = (from r in db.Users
                 where r.GU_ID == id
                 select r).SingleOrDefault();


        var Result = (from r in db.Sub_comment
                      orderby r.Id descending
                      where r.User_id == U.Id 
                      select r);


        ListView2.DataSource = Result;
        ListView2.DataBind();



    }


    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < ListView2.Items.Count; i++)
            ((CheckBox)ListView2.Items[i].Controls[1]).Checked = ((CheckBox)(sender)).Checked;

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Model.ModelContainer db = new Model.ModelContainer();
        Guid id = Guid.Parse(Session["Login1"].ToString());


        var U = (from r in db.Users
                 where r.GU_ID == id
                 select r).SingleOrDefault();

        var Result = (from r in db.Sub_comment
                      orderby r.Id descending
                      where r.User_id == U.Id
                      select r);


        ListView2.DataSource = Result;
        ListView2.DataBind();
        DataPager1.DataBind();

        DataPager1.SetPageProperties(0, DataPager1.MaximumRows, false);
        ListView2.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        
        Model.ModelContainer db = new Model.ModelContainer();
        Guid id = Guid.Parse(Session["Login1"].ToString());


        var U = (from r in db.Users
                 where r.GU_ID == id
                 select r).SingleOrDefault();

        var Result = (from r in db.Sub_comment
                      orderby r.Id descending
                      where r.User_id == U.Id
                      select r);


        ListView2.DataSource = Result;
        ListView2.DataBind();
        DataPager1.DataBind();

        var mr = DataPager1.MaximumRows;
        if (DataPager1.TotalRowCount > 0)
        {
            if (DataPager1.TotalRowCount % mr == 0)
                DataPager1.SetPageProperties(DataPager1.TotalRowCount - mr, mr, false);
            else
                DataPager1.SetPageProperties(DataPager1.TotalRowCount - (DataPager1.TotalRowCount % mr), mr, false);
            ListView2.DataBind();
        }
    }

    protected void ListView2_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
       
        Model.ModelContainer db = new Model.ModelContainer();
        Guid id = Guid.Parse(Session["Login1"].ToString());


        var U = (from r in db.Users
                 where r.GU_ID == id
                 select r).SingleOrDefault();


        var Result = (from r in db.Sub_comment
                      orderby r.Id descending
                      where r.User_id == U.Id
                      select r);


        ListView2.DataSource = Result;
        ListView2.DataBind();
        DataPager1.DataBind();


        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

        ListView2.DataBind();
        p1 = e.StartRowIndex;
    }

  

    protected void Button11_Click(object sender, EventArgs e)
    {
        int GI = -1;
        Model.ModelContainer DB = new Model.ModelContainer();
        for (int i = 0; i < ListView2.Items.Count; i++)
        {
            if (((CheckBox)ListView2.Items[i].Controls[1]).Checked)
            {
                int id = int.Parse(ListView2.DataKeys[i].Value.ToString());
                var PBG = (from r in DB.Sub_comment
                           orderby r.Id descending
                           where r.Id == id
                           select r).Single();

                DB.Sub_comment.DeleteObject(PBG);

               
            }
        }
        DB.SaveChanges();

        Response.Redirect("mycomment.aspx");

    }
    protected void Button12_Click(object sender, EventArgs e)
    {

        Response.Redirect("Dashboard.aspx");

    }
}