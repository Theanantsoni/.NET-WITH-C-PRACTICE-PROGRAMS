using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calc
{
    public partial class Form1 : Form
    {
        static float a, c, d;
        static char b;

        public Form1()
        {
            InitializeComponent();
        }

        private void txtans_TextChanged(object sender, EventArgs e)
        {

        }

        private void btn1_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn1.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn1.Text;
            }
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            if((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn2.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn2.Text;
            }
        }

        private void btn3_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn3.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn3.Text;
            }
        }

        private void btn4_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn4.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn4.Text;
            }
        }

        private void btn5_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn5.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn5.Text;
            }
        }

        private void btn6_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn6.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn6.Text;
            }
        }

        private void btn7_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn7.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn7.Text;
            }
        }

        private void btn8_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn8.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn8.Text;
            }
        }

        private void btn9_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn9.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn9.Text;
            }
        }

        private void btn0_Click(object sender, EventArgs e)
        {
            if ((txtans.Text == "/") || (txtans.Text == "*") || (txtans.Text == "-") || (txtans.Text == "+"))
            {
                txtans.Text = "";
                txtans.Text = txtans.Text + btn0.Text;
            }
            else
            {
                txtans.Text = txtans.Text + btn0.Text;
            }
        }

        private void btnclr_Click(object sender, EventArgs e)
        {
            txtans.Text = "";
        }

        private void btndiv_Click(object sender, EventArgs e)
        {
            a = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            b = '/';
            txtans.Text += b;
        }

        private void btnmul_Click(object sender, EventArgs e)
        {
            a = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            b = '*';
            txtans.Text += b;
        }

        private void btnsub_Click(object sender, EventArgs e)
        {
            a = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            b = '-';
            txtans.Text += b;
        }

        private void btnadd_Click(object sender, EventArgs e)
        {
            a = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            b = '+';
            txtans.Text += b;
        }

        private void btnequal_Click(object sender, EventArgs e)
        {
            c = Convert.ToInt32(txtans.Text);
            txtans.Text = "";

            if(b == '/')
            {
                d = a / c;
                txtans.Text += d;

                a = d;
            }
            else if(b == '*')
            {
                d = a * c;
                txtans.Text += d;

                a = d;
            }
            else if(b == '-')
            {
                d = a - c;
                txtans.Text += d;

                a = d;
            }
            else
            {
                d = a + c;
                txtans.Text += d;

                a = d;
            }
        }
    }
}
