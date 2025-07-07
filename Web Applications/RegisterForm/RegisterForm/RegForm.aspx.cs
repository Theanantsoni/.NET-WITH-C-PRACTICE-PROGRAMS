using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterForm
{
    public partial class RegForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (rdomale.Checked || rdofemale.Checked)
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
            args.IsValid = chkreading.Checked || chkwriting.Checked || chkcoding.Checked || chkdesigning.Checked;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string name = txtname.Text;
            string address = txtaddress.Text;

            string email = txtemail.Text;
            string contact = txtcontact.Text;

            string password = txtpass.Text;
            string rptpass = txtrptpass.Text;

            string gender = "";
            if (rdomale.Checked)
            {
                gender = "Male";
            }
            else if (rdofemale.Checked)
            {
                gender = "Female";
            }
            else
            {
                gender = "Not Selected";
            }

            string country = ddselcountry.Text;
            string state = ddselstate.Text;

            string hobby = "";

            if (chkreading.Checked)
            {
                hobby += "Reading, ";
            }

            if (chkwriting.Checked)
            {
                hobby += "Writing, ";
            }

            if (chkcoding.Checked)
            {
                hobby += "Coding, ";
            }

            if (chkdesigning.Checked)
            {
                hobby += "Designing, ";
            }

            lblname.Text = "" + name;
            lbladdress.Text = "" + address;

            lblemail.Text = "" + email;
            lblcontact.Text = "" + contact;

            lblpass.Text = "" + password;
            lblrptpass.Text = "" + rptpass;

            lblgender.Text = "" + gender;

            lblcountry.Text = "" + country;
            lblstate.Text = "" + state;

            lblhobby.Text = "" + hobby;
        }
    }
}