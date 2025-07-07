using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Form_Js_Crud
{
    public partial class form : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(rdomale.Checked || rdofemale.Checked)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkcoding.Checked || chkreading.Checked || chkwriting.Checked;
        }

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Net C#\Test Practice Programs\Web Applications\Form_Js_Crud\Form_Js_Crud\App_Data\form_db.mdf;Integrated Security=True");

        protected void btninsert_Click(object sender, EventArgs e)
        {
            String gender = "";
            if(rdomale.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }

            String hobby = "";
            if(chkcoding.Checked)
            {
                hobby += "Coding,";
            }
            if(chkreading.Checked)
            {
                hobby += "Reading,";
            }
            if(chkwriting.Checked)
            {
                hobby += "Writing";
            }

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;

            cmd.CommandText = "INSERT INTO form_tbl VALUES ('"+txtname.Text+"', '"+txtcontact.Text+"', '"+gender+"', '"+ddcity.Text+"', '"+hobby+"')";
            cmd.ExecuteNonQuery();

            display_data();

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "UPDATE form_tbl SET e_contact = '"+txtcontact.Text+"' WHERE e_name = '"+txtname.Text+"' ";
            cmd.ExecuteNonQuery();

            display_data();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText= "DELETE FROM form_tbl WHERE e_name = '" + txtname.Text + "' ";
            cmd.ExecuteNonQuery();

            display_data();

        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            display_data();
        }

        public void display_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "SELECT * FROM form_tbl";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}