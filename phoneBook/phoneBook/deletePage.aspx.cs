using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phoneBook
{
    public partial class deletePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void listingButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("listingPage.aspx");
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("editPage.aspx");
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("addPage.aspx");
        }
    }
}