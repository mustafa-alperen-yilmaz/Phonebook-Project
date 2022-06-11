using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phoneBook
{
    public partial class editPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void listingButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("listingPage.aspx");
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("deletePage.aspx");
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("addPage.aspx");
        }
    }
}