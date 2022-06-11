using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace phoneBook
{
    public partial class Listing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("deletePage.aspx");
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