using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameCrud
{
    public partial class NameField : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Net C#\Test Practice Programs\Web Applications\NameCrud\NameCrud\App_Data\nameDB.mdf;Integrated Security=True");

        //remove "" in D:\Net C#\Test Practice Programs\Web Applications\NameCrud\NameCrud\App_Data\nameDB.mdf
        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into nametable VALUES ('" +txtname.Text+ "', '" +txtemail.Text+ "')";
            cmd.ExecuteNonQuery();

            txtname.Text = "";
            txtemail.Text = "";

            display_data();
        }


        public void display_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "select * from nametable";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            display_data();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "delete from nametable where u_id = '" + txtid.Text + "'";
            cmd.ExecuteNonQuery();

            txtid.Text = "";
            display_data();

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "Update nametable set u_name = '"+txtname.Text+"' WHERE u_id = '"+txtid.Text+"' ";
            cmd.ExecuteNonQuery();

            txtid.Text = "";
            txtname.Text = "";

            display_data();
        }
    }
}