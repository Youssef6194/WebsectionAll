using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";

                string inserData = "INSERT INTO Member Values(@FirstName, @LastName, @Gender, @Email, @Phone, @Country, @Password)";

                SqlCommand cmdInsert = new SqlCommand(inserData, connection);
            try
            {


                cmdInsert.Parameters.AddWithValue("@FirstName", txtFname.Text);
                cmdInsert.Parameters.AddWithValue("@LastName", txtLname.Text);
                cmdInsert.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmdInsert.Parameters.AddWithValue("@Phone", txtPhone.Text);
                cmdInsert.Parameters.AddWithValue("@Country", DropDownList1.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@Password", txtPass.Text);

                connection.Open();

                cmdInsert.ExecuteNonQuery();

                connection.Close();


                if (hamadaUP.HasFile)
                {
                    hamadaUP.SaveAs(Server.MapPath("userPic") + "\\" + "uditudygsr,uukd.jpg");
                }


                lblMsg.Text = "Data Saved!";
            }
            catch (SqlException err)
            {
                if (err.Number == 2627)
                {
                    lblMsg.Text = "email already exist!";
                }
                else
                {
                    lblMsg.Text = "Database error!";
                }
            }
        }
    }
}