using System;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

namespace FormCrud
{
    public partial class Form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Net C#\Test Practice Programs\Web Applications\Form Crud\FormCrud\FormCrud\App_Data\formdata.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            /* if (!IsPostBack)
             {
                 display_data();
             }*/
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {

            // Trigger all validators in group
            Page.Validate("Register");

            if (Page.IsValid)
            {
                string gender = "";

                if (rdomale.Checked)
                    gender = "Male";
                else if (rdofemale.Checked)
                    gender = "Female";

                string hobby = "";

                if (chkwriting.Checked)
                    hobby += "Writing, ";
                if (chkreading.Checked)
                    hobby += "Reading, ";
                if (chkcoding.Checked)
                    hobby += "Coding, ";
                if (chkdesigning.Checked)
                    hobby += "Designing, ";

                hobby = hobby.TrimEnd(',', ' ');

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO formdatatable VALUES ('" + txtname.Text + "', '" + txtcontact.Text + "','" + gender + "', '" + txtaddress.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtconpass.Text + "','" + ddselcountry.Text + "','" + ddselstate.Text + "','" + ddselcity.Text + "','" + hobby + "')";
                cmd.ExecuteNonQuery();

                // Reset fields
                txtname.Text = "";
                txtcontact.Text = "";
                txtaddress.Text = "";
                txtemail.Text = "";
                txtpass.Text = "";
                txtconpass.Text = "";

                ddselcountry.ClearSelection();
                ddselstate.ClearSelection();
                ddselcity.ClearSelection();

                rdomale.Checked = false;
                rdofemale.Checked = false;

                chkwriting.Checked = false;
                chkreading.Checked = false;
                chkcoding.Checked = false;
                chkdesigning.Checked = false;

                display_data();
            }
        }



        public void display_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from formdatatable";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from formdatatable where Id = '"+txttaskid.Text+"'";
            cmd.ExecuteNonQuery();

            txtemail.Text = "";
            display_data();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            // Step 1: Check if ID field is empty. If yes, stop and do not proceed with update.
            if (string.IsNullOrWhiteSpace(txttaskid.Text))
            {
                return; // Skip update if ID is blank
            }

            // Step 2: Trigger the validation for all fields.
            Page.Validate("Register");

            // Step 3: If any validation fails, exit the function (do not update).
            if (!Page.IsValid)
            {
                return; // Exit if validation fails
            }

            // Step 4: Prepare the values to be updated.
            string gender = rdomale.Checked ? "Male" : (rdofemale.Checked ? "Female" : "");

            string hobby = "";
            if (chkwriting.Checked) hobby += "Writing, ";
            if (chkreading.Checked) hobby += "Reading, ";
            if (chkcoding.Checked) hobby += "Coding, ";
            if (chkdesigning.Checked) hobby += "Designing, ";

            hobby = hobby.TrimEnd(',', ' ');

            // Step 5: Update the data in the database
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update formdatatable set u_fname = '" + txtname.Text + "', u_contact = '" + txtcontact.Text + "' , u_gender = '" + gender + "' , u_address = '" + txtaddress.Text + "', u_email =  '" + txtemail.Text + "', u_pass = '" + txtpass.Text + "' , u_conpass = '" + txtconpass.Text + "' , u_country = '" + ddselcountry.Text + "' , u_state = '" + ddselstate.Text + "' , u_city = '" + ddselcity.Text + "', u_hobby = '" + hobby + "' Where Id = '" + txttaskid.Text + "'";
            cmd.ExecuteNonQuery();

            // Step 6: Reset the form fields after successful update
            txtname.Text = "";
            txtcontact.Text = "";
            txtaddress.Text = "";
            txtemail.Text = "";
            txtpass.Text = "";
            txtconpass.Text = "";

            ddselcountry.ClearSelection();
            ddselstate.ClearSelection();
            ddselcity.ClearSelection();

            rdomale.Checked = false;
            rdofemale.Checked = false;

            chkwriting.Checked = false;
            chkreading.Checked = false;
            chkcoding.Checked = false;
            chkdesigning.Checked = false;

            hobby = "";
            txttaskid.Text = "";

            // Step 7: Display the updated data
            display_data();
        }


        protected void btnview_Click(object sender, EventArgs e)
        {
            display_data();
        }

        protected void CustomValidator1_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
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

        protected void CustomValidator2_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = chkwriting.Checked || chkreading.Checked || chkdesigning.Checked || chkcoding.Checked;
        }
    }
}
