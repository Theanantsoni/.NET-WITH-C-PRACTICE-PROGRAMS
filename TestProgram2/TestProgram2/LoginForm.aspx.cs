using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestProgram2
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txtemail.Text;
            string pass = txtpass.Text;
            string contact = txtcontact.Text;

            emaildata.Text = "" + email;
            passdata.Text = "" + pass;
            contdata.Text = "" + contact;
        }
    }
}