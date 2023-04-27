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
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
 {
    
    }
   

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Login1Name"] = "";
        Session["Login1"] = "";

        Response.Redirect("Default.aspx");
    }

   
   
}
