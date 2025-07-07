using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Clear();
        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e) //richtext box
        {
            OpenFileDialog anant = new OpenFileDialog();
            anant.Title = "Open";
            anant.Filter = "Text Document(*.txt)|*.txt|All Files(*.*)|*.*";

            if (anant.ShowDialog() == DialogResult.OK)
            {
                richTextBox1.LoadFile(anant.FileName, RichTextBoxStreamType.PlainText);
                this.Text = anant.FileName;
            }

        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog anant = new SaveFileDialog();
            anant.Title = "Save";
            anant.Filter = "Text Document(*.txt)|*.txt|All Files(*.*)|*.*";

            if (anant.ShowDialog() == DialogResult.OK)
            {
                richTextBox1.SaveFile(anant.FileName, RichTextBoxStreamType.PlainText);
                this.Text = anant.FileName;
            }
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
             Close();
        }

        private void dateTimeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Text = System.DateTime.Now.ToString();
        }

        private void undoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Undo();
        }

        private void redoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Redo();
        }

        private void cutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Cut();
        }

        private void copyToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Copy();
        }

        private void pasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Paste();
        }

        private void selectAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.SelectAll();
        }

        private void fontToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FontDialog fnt = new FontDialog();
            if(fnt.ShowDialog() == DialogResult.OK)
            {
                richTextBox1.Font = fnt.Font;
            }
        }

        private void colorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ColorDialog clr = new ColorDialog();
            if(clr.ShowDialog() == DialogResult.OK)
            {
                richTextBox1.ForeColor = clr.Color;
            }
        }
    }
}
