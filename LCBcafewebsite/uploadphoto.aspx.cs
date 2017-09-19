using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LCBcafewebsite
{
    public partial class uploadphoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ID"];
            string filename = ProductID + ".jpg";
            productimg.ImageUrl = "~/photos" + filename;
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            string ID = Request.QueryString["ID"];
            string filename = ID + ".jpg";
            string saveLocation = Server.MapPath("~/photos" + filename);
            FileUpload1.SaveAs(saveLocation);
        }
    }
}