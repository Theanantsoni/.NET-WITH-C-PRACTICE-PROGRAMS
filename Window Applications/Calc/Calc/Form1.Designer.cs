
namespace Calc
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.txtans = new System.Windows.Forms.TextBox();
            this.btn1 = new System.Windows.Forms.Button();
            this.btn2 = new System.Windows.Forms.Button();
            this.btn3 = new System.Windows.Forms.Button();
            this.btndiv = new System.Windows.Forms.Button();
            this.btn4 = new System.Windows.Forms.Button();
            this.btn5 = new System.Windows.Forms.Button();
            this.btn6 = new System.Windows.Forms.Button();
            this.btnmul = new System.Windows.Forms.Button();
            this.btn7 = new System.Windows.Forms.Button();
            this.btn8 = new System.Windows.Forms.Button();
            this.btn9 = new System.Windows.Forms.Button();
            this.btnsub = new System.Windows.Forms.Button();
            this.btn0 = new System.Windows.Forms.Button();
            this.btnclr = new System.Windows.Forms.Button();
            this.btnequal = new System.Windows.Forms.Button();
            this.btnadd = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(68, 14);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(144, 32);
            this.label1.TabIndex = 0;
            this.label1.Text = "Calculator";
            // 
            // txtans
            // 
            this.txtans.Location = new System.Drawing.Point(69, 66);
            this.txtans.Multiline = true;
            this.txtans.Name = "txtans";
            this.txtans.Size = new System.Drawing.Size(344, 69);
            this.txtans.TabIndex = 1;
            this.txtans.TextChanged += new System.EventHandler(this.txtans_TextChanged);
            // 
            // btn1
            // 
            this.btn1.Location = new System.Drawing.Point(69, 149);
            this.btn1.Name = "btn1";
            this.btn1.Size = new System.Drawing.Size(66, 61);
            this.btn1.TabIndex = 2;
            this.btn1.Text = "1";
            this.btn1.UseVisualStyleBackColor = true;
            this.btn1.Click += new System.EventHandler(this.btn1_Click);
            // 
            // btn2
            // 
            this.btn2.Location = new System.Drawing.Point(158, 149);
            this.btn2.Name = "btn2";
            this.btn2.Size = new System.Drawing.Size(66, 61);
            this.btn2.TabIndex = 3;
            this.btn2.Text = "2";
            this.btn2.UseVisualStyleBackColor = true;
            this.btn2.Click += new System.EventHandler(this.btn2_Click);
            // 
            // btn3
            // 
            this.btn3.Location = new System.Drawing.Point(256, 149);
            this.btn3.Name = "btn3";
            this.btn3.Size = new System.Drawing.Size(66, 61);
            this.btn3.TabIndex = 4;
            this.btn3.Text = "3";
            this.btn3.UseVisualStyleBackColor = true;
            this.btn3.Click += new System.EventHandler(this.btn3_Click);
            // 
            // btndiv
            // 
            this.btndiv.Location = new System.Drawing.Point(347, 149);
            this.btndiv.Name = "btndiv";
            this.btndiv.Size = new System.Drawing.Size(66, 61);
            this.btndiv.TabIndex = 5;
            this.btndiv.Text = "/";
            this.btndiv.UseVisualStyleBackColor = true;
            this.btndiv.Click += new System.EventHandler(this.btndiv_Click);
            // 
            // btn4
            // 
            this.btn4.Location = new System.Drawing.Point(69, 242);
            this.btn4.Name = "btn4";
            this.btn4.Size = new System.Drawing.Size(66, 61);
            this.btn4.TabIndex = 6;
            this.btn4.Text = "4";
            this.btn4.UseVisualStyleBackColor = true;
            this.btn4.Click += new System.EventHandler(this.btn4_Click);
            // 
            // btn5
            // 
            this.btn5.Location = new System.Drawing.Point(158, 242);
            this.btn5.Name = "btn5";
            this.btn5.Size = new System.Drawing.Size(66, 61);
            this.btn5.TabIndex = 7;
            this.btn5.Text = "5";
            this.btn5.UseVisualStyleBackColor = true;
            this.btn5.Click += new System.EventHandler(this.btn5_Click);
            // 
            // btn6
            // 
            this.btn6.Location = new System.Drawing.Point(256, 242);
            this.btn6.Name = "btn6";
            this.btn6.Size = new System.Drawing.Size(66, 61);
            this.btn6.TabIndex = 8;
            this.btn6.Text = "6";
            this.btn6.UseVisualStyleBackColor = true;
            this.btn6.Click += new System.EventHandler(this.btn6_Click);
            // 
            // btnmul
            // 
            this.btnmul.Location = new System.Drawing.Point(347, 242);
            this.btnmul.Name = "btnmul";
            this.btnmul.Size = new System.Drawing.Size(66, 61);
            this.btnmul.TabIndex = 9;
            this.btnmul.Text = "*";
            this.btnmul.UseVisualStyleBackColor = true;
            this.btnmul.Click += new System.EventHandler(this.btnmul_Click);
            // 
            // btn7
            // 
            this.btn7.Location = new System.Drawing.Point(69, 334);
            this.btn7.Name = "btn7";
            this.btn7.Size = new System.Drawing.Size(66, 61);
            this.btn7.TabIndex = 10;
            this.btn7.Text = "7";
            this.btn7.UseVisualStyleBackColor = true;
            this.btn7.Click += new System.EventHandler(this.btn7_Click);
            // 
            // btn8
            // 
            this.btn8.Location = new System.Drawing.Point(158, 334);
            this.btn8.Name = "btn8";
            this.btn8.Size = new System.Drawing.Size(66, 61);
            this.btn8.TabIndex = 11;
            this.btn8.Text = "8";
            this.btn8.UseVisualStyleBackColor = true;
            this.btn8.Click += new System.EventHandler(this.btn8_Click);
            // 
            // btn9
            // 
            this.btn9.Location = new System.Drawing.Point(256, 334);
            this.btn9.Name = "btn9";
            this.btn9.Size = new System.Drawing.Size(66, 61);
            this.btn9.TabIndex = 12;
            this.btn9.Text = "9";
            this.btn9.UseVisualStyleBackColor = true;
            this.btn9.Click += new System.EventHandler(this.btn9_Click);
            // 
            // btnsub
            // 
            this.btnsub.Location = new System.Drawing.Point(347, 334);
            this.btnsub.Name = "btnsub";
            this.btnsub.Size = new System.Drawing.Size(66, 61);
            this.btnsub.TabIndex = 13;
            this.btnsub.Text = "-";
            this.btnsub.UseVisualStyleBackColor = true;
            this.btnsub.Click += new System.EventHandler(this.btnsub_Click);
            // 
            // btn0
            // 
            this.btn0.Location = new System.Drawing.Point(69, 419);
            this.btn0.Name = "btn0";
            this.btn0.Size = new System.Drawing.Size(66, 61);
            this.btn0.TabIndex = 14;
            this.btn0.Text = "0";
            this.btn0.UseVisualStyleBackColor = true;
            this.btn0.Click += new System.EventHandler(this.btn0_Click);
            // 
            // btnclr
            // 
            this.btnclr.Location = new System.Drawing.Point(158, 419);
            this.btnclr.Name = "btnclr";
            this.btnclr.Size = new System.Drawing.Size(66, 61);
            this.btnclr.TabIndex = 15;
            this.btnclr.Text = "CLR";
            this.btnclr.UseVisualStyleBackColor = true;
            this.btnclr.Click += new System.EventHandler(this.btnclr_Click);
            // 
            // btnequal
            // 
            this.btnequal.Location = new System.Drawing.Point(256, 419);
            this.btnequal.Name = "btnequal";
            this.btnequal.Size = new System.Drawing.Size(66, 61);
            this.btnequal.TabIndex = 16;
            this.btnequal.Text = "=";
            this.btnequal.UseVisualStyleBackColor = true;
            this.btnequal.Click += new System.EventHandler(this.btnequal_Click);
            // 
            // btnadd
            // 
            this.btnadd.Location = new System.Drawing.Point(347, 419);
            this.btnadd.Name = "btnadd";
            this.btnadd.Size = new System.Drawing.Size(66, 61);
            this.btnadd.TabIndex = 17;
            this.btnadd.Text = "+";
            this.btnadd.UseVisualStyleBackColor = true;
            this.btnadd.Click += new System.EventHandler(this.btnadd_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(496, 546);
            this.Controls.Add(this.btnadd);
            this.Controls.Add(this.btnequal);
            this.Controls.Add(this.btnclr);
            this.Controls.Add(this.btn0);
            this.Controls.Add(this.btnsub);
            this.Controls.Add(this.btn9);
            this.Controls.Add(this.btn8);
            this.Controls.Add(this.btn7);
            this.Controls.Add(this.btnmul);
            this.Controls.Add(this.btn6);
            this.Controls.Add(this.btn5);
            this.Controls.Add(this.btn4);
            this.Controls.Add(this.btndiv);
            this.Controls.Add(this.btn3);
            this.Controls.Add(this.btn2);
            this.Controls.Add(this.btn1);
            this.Controls.Add(this.txtans);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtans;
        private System.Windows.Forms.Button btn1;
        private System.Windows.Forms.Button btn2;
        private System.Windows.Forms.Button btn3;
        private System.Windows.Forms.Button btndiv;
        private System.Windows.Forms.Button btn4;
        private System.Windows.Forms.Button btn5;
        private System.Windows.Forms.Button btn6;
        private System.Windows.Forms.Button btnmul;
        private System.Windows.Forms.Button btn7;
        private System.Windows.Forms.Button btn8;
        private System.Windows.Forms.Button btn9;
        private System.Windows.Forms.Button btnsub;
        private System.Windows.Forms.Button btn0;
        private System.Windows.Forms.Button btnclr;
        private System.Windows.Forms.Button btnequal;
        private System.Windows.Forms.Button btnadd;
    }
}

