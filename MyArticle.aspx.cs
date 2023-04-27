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

public partial class MyArticle : System.Web.UI.Page
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

       

        var Result = (from r in db.SubGroups
                      orderby r.Id descending
                      where r.Group.Title == "articles" && r.Agent==U.UserName 

                      select r);


        ListView2.DataSource = Result;
        ListView2.DataBind();
        DataPager1.DataBind();

      

    }


    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < ListView2.Items.Count; i++)
            ((CheckBox)ListView2.Items[i].Controls[1]).Checked = ((CheckBox)(sender)).Checked;

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        int GI = -1;
        Model.ModelContainer db = new Model.ModelContainer();
        GI = int.Parse(Request.QueryString["id"]);

        var Result = (from r in db.SubGroups
                      orderby r.Id descending
                      where (r.Group.Id == GI)
                      select r);


        ListView2.DataSource = Result;
        ListView2.DataBind();
        DataPager1.DataBind();

        DataPager1.SetPageProperties(0, DataPager1.MaximumRows, false);
        ListView2.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        int GI = -1;
        Model.ModelContainer db = new Model.ModelContainer();
        GI = int.Parse(Request.QueryString["id"]);

        var Result = (from r in db.SubGroups
                      orderby r.Id descending
                      where (r.Group.Id == GI)
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
        int GI = -1;
        Model.ModelContainer db = new Model.ModelContainer();
        GI = int.Parse(Request.QueryString["id"]);

        var Result = (from r in db.SubGroups
                      orderby r.Id descending
                      where (r.Group.Id == GI)
                      select r);


        ListView2.DataSource = Result;
        ListView2.DataBind();
        DataPager1.DataBind();


        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

        ListView2.DataBind();
        p1 = e.StartRowIndex;
    }

    protected void Button10_Click(object sender, EventArgs e)
    {

        try
        {
            Model.ModelContainer db = new Model.ModelContainer();
            Guid meID = Guid.Parse(Session["Login1"].ToString());
            var U = (from r in db.Users
                     where r.GU_ID == meID
                     select r).Single();



            System.Globalization.PersianCalendar pc = new System.Globalization.PersianCalendar();
            int year = pc.GetYear(DateTime.Now);
            int month = pc.GetMonth(DateTime.Now);
            int day = pc.GetDayOfMonth(DateTime.Now);
            string MDate = year.ToString() + "/" + month.ToString() + "/" + day.ToString();



            int GI = -1;

           


            var x = (from r in db.Groups
                     where r.Title == "articles"
                     select r).SingleOrDefault();


            Guid Gu = new Guid();
            Gu = Guid.NewGuid();
            string ID = Gu.ToString();
            string path;

            Model.SubGroup PB = new Model.SubGroup();

        

            PB.Title = TextBox1.Text;
            PB.Des = TextBox2.Text;


            PB.PDate = MDate;

            PB.Date = DateTime.Now;

            DateTime dt = DateTime.Now;
            PB.Time = dt.ToString("HH:mm");
            PB.Agent = U.UserName;


            try
            {

                if (FileUpload1.HasFile)
                {
                    if (FileUpload1.FileBytes.Length > 500000)
                    {
                        Message.Text = " توجه: سایز فایل زیاد است";

                        return;
                    }

                    Bitmap uploadedimage = new Bitmap(FileUpload1.PostedFile.InputStream);
                    string fileRelativePath;

                    String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();



                    string newName = ID;
                    string fileName = Server.HtmlEncode(FileUpload1.FileName);
                    string extension = System.IO.Path.GetExtension(fileName);




                    PB.Image_width = uploadedimage.Width;
                    PB.Image_height = uploadedimage.Height;
                    PB.Image_size = FileUpload1.FileBytes.Length;


                    //**********************************L********************************

                    float imgHeight2, imgWidth2;
                    imgHeight2 = uploadedimage.Height;
                    imgWidth2 = uploadedimage.Width;
                    float maxHeight2 = 3000;
                    float maxWidth2 = 1366;
                    float deltaWidth2 = imgWidth2 - maxWidth2;

                    float deltaHeight2 = imgHeight2 - maxHeight2;

                    newName = ID + "_L";
                    PB.Image_Name = newName + fileExtension;
                    path = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\L\\" + newName + fileExtension;
                    PB.Path = path;


                    float scaleFactor2;
                    if (deltaWidth2 > 0)
                    {
                        if (deltaHeight2 > deltaWidth2)

                            scaleFactor2 = maxHeight2 / imgHeight2;

                        else

                            scaleFactor2 = maxWidth2 / imgWidth2;

                        imgWidth2 = scaleFactor2 * imgWidth2;

                        imgHeight2 = scaleFactor2 * imgHeight2;

                        System.Drawing.Size NewSize1 = new System.Drawing.Size((int)imgWidth2, (int)imgHeight2);


                        System.Drawing.Bitmap bmpbig = new System.Drawing.Bitmap(uploadedimage, NewSize1);


                        fileRelativePath = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\L\\" + newName;
                        bmpbig.Save(fileRelativePath + fileExtension, ImageFormat.Jpeg);


                    }
                    else
                    {

                        FileUpload1.SaveAs(path);

                    }



                    //**********************************M********************************

                    float imgHeight1, imgWidth1;
                    imgHeight1 = uploadedimage.Height;
                    imgWidth1 = uploadedimage.Width;
                    float maxHeight1 = 2000;
                    float maxWidth1 = 800;
                    float deltaWidth1 = imgWidth1 - maxWidth1;

                    float deltaHeight1 = imgHeight1 - maxHeight1;

                    newName = ID + "_M";
                    PB.Image_Name_M = newName + fileExtension;
                    path = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\M\\" + newName + fileExtension;
                    PB.Path_M = path;

                    float scaleFactor1;
                    if (deltaWidth1 > 0)
                    {
                        if (deltaHeight1 > deltaWidth1)

                            scaleFactor1 = maxHeight1 / imgHeight1;

                        else

                            scaleFactor1 = maxWidth1 / imgWidth1;

                        imgWidth1 = scaleFactor1 * imgWidth1;

                        imgHeight1 = scaleFactor1 * imgHeight1;

                        System.Drawing.Size NewSize1 = new System.Drawing.Size((int)imgWidth1, (int)imgHeight1);


                        System.Drawing.Bitmap bmpbig = new System.Drawing.Bitmap(uploadedimage, NewSize1);



                        fileRelativePath = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\M\\" + newName;
                        bmpbig.Save(fileRelativePath + fileExtension, ImageFormat.Jpeg);


                    }
                    else
                    {

                        FileUpload1.SaveAs(path);

                    }

                    //**********************************S********************************

                    float imgHeight, imgWidth;

                    imgHeight = uploadedimage.Height;
                    imgWidth = uploadedimage.Width;
                    float maxHeight = 270;
                    float maxWidth = 480;

                    float deltaw = imgWidth - maxWidth;
                    float deltah = imgHeight - maxHeight;
                    deltaw = deltaw / 48;
                    deltah = deltah / 27;

                    newName = ID + "_S";
                    PB.Image_Name_S = newName + fileExtension;
                    path = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\S\\" + newName + fileExtension;
                    PB.Path_S = path;

                    //////////////////////////////////////////////////////////////////////////////////////////
                    float hdnx = 0, hdny = 0, hdnw = 0, hdnh = 0, temp, temp2;
                    if (deltah < deltaw)
                    {
                        hdnh = imgHeight;
                        float scale = hdnh / maxHeight;
                        hdnw = maxWidth * scale;
                        temp = imgWidth - hdnw;
                        temp2 = temp / 2;
                        hdnx = temp2;
                        hdny = 0;
                    }
                    else
                    {
                        hdnw = imgWidth;
                        float scale = hdnw / maxWidth;
                        hdnh = maxHeight * scale;
                        temp = imgHeight - hdnh;
                        temp2 = temp / 2;
                        hdny = temp2;
                        hdnx = 0;
                    }
                    Rectangle cropcords = new Rectangle(
                    Convert.ToInt32(hdnx),
                    Convert.ToInt32(hdny),
                    Convert.ToInt32(hdnw),
                    Convert.ToInt32(hdnh));

                    Bitmap bitMap = new Bitmap(cropcords.Width, cropcords.Height, uploadedimage.PixelFormat);
                    Graphics grph = Graphics.FromImage(bitMap);
                    grph.DrawImage(uploadedimage, new Rectangle(0, 0, bitMap.Width, bitMap.Height), cropcords, GraphicsUnit.Pixel);




                    imgHeight = bitMap.Height;
                    imgWidth = bitMap.Width;


                    float deltaWidth = imgWidth - maxWidth;

                    float deltaHeight = imgHeight - maxHeight;

                    float scaleFactor;

                    if (deltaHeight > deltaWidth)

                        scaleFactor = maxHeight / imgHeight;

                    else

                        scaleFactor = maxWidth / imgWidth;



                    imgWidth = scaleFactor * imgWidth;

                    imgHeight = scaleFactor * imgHeight;



                    //System.Drawing.Size NewSize = new System.Drawing.Size((int)imgWidth, (int)imgHeight);
                    System.Drawing.Size NewSize = new System.Drawing.Size(480, 270);

                    System.Drawing.Bitmap bmpSmall = new System.Drawing.Bitmap(bitMap, NewSize);

                    fileRelativePath = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\S\\" + newName;

                    bmpSmall.Save(fileRelativePath + fileExtension, ImageFormat.Jpeg);




                }

                else
                {
                    PB.Image_Name = "noimage.jpg";
                    PB.Image_Name_M = "noimage.jpg";
                    PB.Image_Name_S = "noimage.jpg";
                    PB.Image_width = 0;
                    PB.Image_height = 0;
                    PB.Image_size = 0;

                }

            }
            catch (Exception) { Message.Text = "فقط فرمت jpg  مورد قبول میباشد"; return; };


            x.SubGroups.Add(PB);
            db.SaveChanges();


            Response.Redirect("myarticle.aspx?id=" + GI);
        }
        catch (Exception) { Message.Text = "اشکال در Save"; return; };

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
                var PBG = (from r in DB.SubGroups
                           orderby r.Id descending
                           where r.Id == id
                           select r).Single();

                DB.SubGroups.DeleteObject(PBG);

                if (PBG.Image_Name != "noimage.jpg" && PBG.Image_Name != null)
                {
                    try
                    {
                        string path = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\L\\" + PBG.Image_Name;
                        //string path = PBG.Path;
                        FileInfo myfileinf = new FileInfo(path);
                        myfileinf.Delete();

                        string path_m = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\m\\" + PBG.Image_Name_M;
                        //string path_m = PBG.Path_M;
                        FileInfo myfileinf_m = new FileInfo(path_m);
                        myfileinf_m.Delete();

                        string path_s = Server.MapPath(Request.ApplicationPath) + "\\Gallery\\s\\" + PBG.Image_Name_S;
                        //string path_s = PBG.Path_S;
                        FileInfo myfileinf_s = new FileInfo(path_s);
                        myfileinf_s.Delete();
                    }
                    catch (Exception) { };
                }
            }
        }
        DB.SaveChanges();
        
        Response.Redirect("myarticle.aspx");

    }
    protected void Button12_Click(object sender, EventArgs e)
    {

        Response.Redirect("Dashboard.aspx");

    }
}