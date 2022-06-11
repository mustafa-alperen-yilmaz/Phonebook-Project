using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace phoneBook
{
    public partial class addPage : System.Web.UI.Page
    {
        string constr = "server =DESKTOP-LHCFT70\\MSSQLSERVER03 ; database=Phonebook ; Trusted_Connection=True;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            try
            {

                SqlCommand cmd = new SqlCommand("INSERT INTO phoneBook (Name , LastName , Phone ) VALUES (@name , @lastname , @phone)");
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@name", nameTxtBox.Text.Trim());
                cmd.Parameters.AddWithValue("@lastname", surnameTxtBox.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", phoneTxtBox.Text.Trim());
                if (String.IsNullOrEmpty(nameTxtBox.Text) || String.IsNullOrEmpty(surnameTxtBox.Text) || String.IsNullOrEmpty(phoneTxtBox.Text)) {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Please Write All infos", "alert('Record Inserted Failed')", true);
                   
                }
                else {

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("listingPage.aspx");
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Its DOne ", "alert('Record Inserted Succesful')", true);
                }

                }
            catch
            {
                
            }
            nameTxtBox.Text = "";
            surnameTxtBox.Text = "";
            phoneTxtBox.Text = "";
        }

        protected void listingButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("listingPage.aspx");
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("deletePage.aspx");
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("editPage.aspx");
        }
    }
}