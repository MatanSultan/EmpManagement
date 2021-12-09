using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpManagement
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["name"] == null)
                Response.Redirect("Login");
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            nametxt.Text = Gendertxt.Text = jobtotel.Text = Emailtxt.Text = Error.Text = "";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MainConnection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from dbUserMange where IDNumer='" + txtId.Text.Trim() + "'";
            cmd.CommandType = System.Data.CommandType.Text;

            SqlDataReader reader;
            con.Open();
            reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                nametxt.Text = reader.GetString(1);
                Emailtxt.Text = reader.IsDBNull(2) ? "-" : reader.GetString(2);
            //    Gendertxt.Text = reader.GetBoolean(3) == false ? "Male" : "Female";
              // jobtotel.Text = reader.GetString(4);
            }
            else
            {
                Error.Text = "The ID you specified does not exist in the system";
            }

            reader.Close();
            con.Close();
        }
    }
}
