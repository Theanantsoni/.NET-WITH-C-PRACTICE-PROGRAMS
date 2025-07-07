using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Windows_Form_Notepad
{
    public partial class Form1 : Form
    {
        Child_MDI ch = new Child_MDI(); 
        public Form1()
        {
            InitializeComponent();
        }

        private void fIleToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void openFIleToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ch.MdiParent = this;
            ch.Show();
        }

        private void saveFileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            RichTextBox ms = (RichTextBox)ch.Controls["richTextBox1"];
            SaveFileDialog sd = new SaveFileDialog();
            if (sd.ShowDialog() == DialogResult.OK)
            {
                System.IO.File.WriteAllText(sd.FileName, ms.);
            }
        }

        private void exitAppToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
