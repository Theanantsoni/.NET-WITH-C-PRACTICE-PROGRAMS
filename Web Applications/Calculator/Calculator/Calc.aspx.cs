using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class Calc : System.Web.UI.Page
    {
        static float a, c, d;
        static char b;

        protected void btn1_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn1.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn1.Text;
            }
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            if((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn2.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn2.Text;
            }
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            if((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn3.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn3.Text;
            }
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            if((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn4.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn4.Text;
            }
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn5.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn5.Text;
            }
        }

        protected void btn6_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn6.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn6.Text;
            }
        }

        protected void btn7_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn7.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn7.Text;
            }
        }

        protected void btn8_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn8.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn8.Text;
            }
        }

        protected void btn9_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn9.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn9.Text;
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
                d = a * c;
                txtans.Text += d;

                a = d;
            }
            else
            {
                d = a / c;
                txtans.Text += d;

                a = d;
            }
        }

        protected void btnclr_Click(object sender, EventArgs e)
        {
            txtans.Text = "";
        }

        protected void btn0_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "+") || (txtans.Text == "-") || (txtans.Text == "/") || (txtans.Text == "*"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn0.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn0.Text;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}