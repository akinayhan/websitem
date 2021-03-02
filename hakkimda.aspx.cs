using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace websitem
{
    public partial class hakkimda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnface_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("https://www.facebook.com/profile.php?id=100000262612451");
        }

        protected void btnins_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("https://www.instagram.com/aakinayhan/");
        
        }

        protected void btntwit_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("https://twitter.com/");
        }

        protected void btnytb_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("https://www.instagram.com/aakinayhan/");
        }
    }
}