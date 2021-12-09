using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpManagement
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["name"] == null)
                Response.Redirect("Login");
            if (!Page.IsPostBack)
            {
             

            }

        }

      
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MainConnection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from dbUserMange where IDNumer='" + txtIDnum.Text.Trim() + "' and Email='" + txtEmail.Text.Trim() + "'";
            cmd.CommandType = System.Data.CommandType.Text;

            SqlDataReader reader;
            con.Open();
            reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                Erorlbl.Text = "the user allready  exist in the  Data Base System. : ) ";
                reader.Close();
                con.Close();
                return;
            }

            reader.Close();
            con.Close();

            SqlConnection con2 = new SqlConnection();
            con2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MainConnection"].ConnectionString;
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con2;

            if (txtEmail.Text.Trim() != "")
                cmd2.CommandText = "insert into dbUserMange(FullName, IDNumer, password,Email, Gender)" +
                    " values('" + txtName.Text + "'," + txtIDnum.Text + "," +
                    " '" + txtPassword.Text + "'," +
                    " '" + txtEmail.Text.Trim() + "' ," +
                    " " + rblGender.SelectedValue + ")";
            else
                cmd2.CommandText = "insert into dbUserMange(FullName, IDNumer, password,Email, Gender,)" +
                    " values('" + txtName.Text + "'," + txtIDnum.Text + "," +
                    " '" + txtPassword.Text + "'," +
                    " '" + txtEmail.Text.Trim() + "' ," +
                    " " + rblGender.SelectedValue + ")";
            cmd2.CommandType = System.Data.CommandType.Text;
            con2.Open();

            if (cmd2.ExecuteNonQuery() == 1)
            {
                Erorlbl.Text = "the dieatels Submitt";
            }

            reader.Close();
            con.Close();

        }
    }
}