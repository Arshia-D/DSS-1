using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
public partial class Articles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Model.ModelContainer db = new Model.ModelContainer();

        string GI = "articles";

       

        var Result1 = (from r in db.SubGroups
                       orderby r.Date descending
                       where r.Group.Title == GI
                       select r);
        Article.DataSource = Result1;
        Article.DataBind();



    }
    protected void Article_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

        Article.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataPager1.SetPageProperties(0, DataPager1.MaximumRows, false);
        Article.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        var mr = DataPager1.MaximumRows;
        if (DataPager1.TotalRowCount > 0)
        {
            if (DataPager1.TotalRowCount % mr == 0)
                DataPager1.SetPageProperties(DataPager1.TotalRowCount - mr, mr, false);
            else
                DataPager1.SetPageProperties(DataPager1.TotalRowCount - (DataPager1.TotalRowCount % mr), mr, false);
            Article.DataBind();
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