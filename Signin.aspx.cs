using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";

            string selectData = "SELECT * FROM Member WHERE Email = '"+ txtEmail.Text +"' AND Password = '" + txtPassword.Text+"'";

            SqlCommand cmdInsert = new SqlCommand(selectData, connection);

            SqlDataReader reader;

            connection.Open();

            reader = cmdInsert.ExecuteReader();

            if (reader.Read())
            {

                if (txtEmail.Text == "admin@admin.com" )
                {
                    Response.Redirect("~/ProfileAdmin.aspx");

                }
                else {
                    Response.Redirect("~/Profile.aspx");
                }
            }
            else {
                lblMsg.Text = "incorrect email and|or password!!!!";
            }

            connection.Close();



        }
    }
}