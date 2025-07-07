using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exam_calc
{
    public partial class exam_calc : System.Web.UI.Page
    {
        static float a, c, d;
        static char b;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnone_Click(object sender, EventArgs e)
        {
            if((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btnone.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btnone.Text;
            }
        }

        protected void btntwo_Click(object sender, EventArgs e)
        {
            if((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btntwo.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btntwo.Text;
            }
        }

        protected void btnthree_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btnthree.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btnthree.Text;
            }
        }

        protected void btnfour_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btnfour.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btnfour.Text;
            }
        }

        protected void btnfive_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btnfive.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btnfive.Text;
            }
        }

        protected void btnsix_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btnsix.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btnsix.Text;
            }
        }

        protected void btnseven_Click(object sender, EventArgs e)
        {
            if((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btnseven.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btnseven.Text;
            }
        }

        protected void btneight_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btneight.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btneight.Text;
            }
        }

        protected void btnnine_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btnnine.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btnnine.Text;
            }
        }

        protected void btnzero_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btnzero.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btnzero.Text;
            }
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtans.Text = "";
        }

        protected void btnequal_Click(object sender, EventArgs e)
        {
            c = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            if(b == '+')
            {
                d = a + c;
                txtans.Text += d;
                a = d;
            }
            else if(b == '-')
            {
                d = a - c;
                txtans.Text += d;
                a = d;
            }
            else if(b == '*')
            {
                d = a * b;
                txtans.Text += d;
                a = d;
            }
            else
            {
                d = a / b;
                txtans.Text += d;
                a = d;
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            a = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            b = '+';
            txtans.Text += b;
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            a = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            b = '-';
            txtans.Text += b;
        }

        protected void btnmul_Click(object sender, EventArgs e)
        {
            a = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            b = '*';
            txtans.Text += b;
        }

        protected void btndiv_Click(object sender, EventArgs e)
        {
            a = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            b = '/';
            txtans.Text += b;
        }
    }
}