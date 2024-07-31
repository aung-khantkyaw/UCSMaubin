namespace ResultForm
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            panel1 = new Panel();
            pictureBox1 = new PictureBox();
            panel2 = new Panel();
            btnReult = new Button();
            txt3 = new TextBox();
            txt2 = new TextBox();
            txt1 = new TextBox();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            panel2.SuspendLayout();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.BackColor = SystemColors.ControlLightLight;
            panel1.Controls.Add(pictureBox1);
            panel1.Location = new Point(426, 85);
            panel1.Name = "panel1";
            panel1.Size = new Size(200, 104);
            panel1.TabIndex = 0;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.ImageLocation = "";
            pictureBox1.Location = new Point(50, 20);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(100, 65);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 0;
            pictureBox1.TabStop = false;
            // 
            // panel2
            // 
            panel2.BackColor = SystemColors.ControlLightLight;
            panel2.Controls.Add(btnReult);
            panel2.Controls.Add(txt3);
            panel2.Controls.Add(txt2);
            panel2.Controls.Add(txt1);
            panel2.Controls.Add(label4);
            panel2.Controls.Add(label3);
            panel2.Controls.Add(label2);
            panel2.Location = new Point(99, 208);
            panel2.Name = "panel2";
            panel2.Size = new Size(527, 350);
            panel2.TabIndex = 1;
            // 
            // btnReult
            // 
            btnReult.BackColor = SystemColors.Highlight;
            btnReult.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnReult.ForeColor = SystemColors.ButtonFace;
            btnReult.Location = new Point(211, 281);
            btnReult.Name = "btnReult";
            btnReult.Size = new Size(75, 30);
            btnReult.TabIndex = 6;
            btnReult.Text = "Result";
            btnReult.UseVisualStyleBackColor = false;
            btnReult.Click += btnReult_Click;
            // 
            // txt3
            // 
            txt3.Location = new Point(235, 210);
            txt3.Name = "txt3";
            txt3.Size = new Size(197, 23);
            txt3.TabIndex = 5;
            // 
            // txt2
            // 
            txt2.Location = new Point(235, 136);
            txt2.Name = "txt2";
            txt2.Size = new Size(197, 23);
            txt2.TabIndex = 4;
            // 
            // txt1
            // 
            txt1.Location = new Point(235, 62);
            txt1.Name = "txt1";
            txt1.Size = new Size(197, 23);
            txt1.TabIndex = 3;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label4.Location = new Point(85, 208);
            label4.Name = "label4";
            label4.Size = new Size(58, 21);
            label4.TabIndex = 2;
            label4.Text = "Mark3";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label3.Location = new Point(85, 134);
            label3.Name = "label3";
            label3.Size = new Size(58, 21);
            label3.TabIndex = 1;
            label3.Text = "Mark2";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label2.Location = new Point(85, 60);
            label2.Name = "label2";
            label2.Size = new Size(58, 21);
            label2.TabIndex = 0;
            label2.Text = "Mark1";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Black", 36F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(99, 105);
            label1.Name = "label1";
            label1.Size = new Size(318, 65);
            label1.TabIndex = 0;
            label1.Text = "Exam Result";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.AppWorkspace;
            ClientSize = new Size(800, 622);
            Controls.Add(label1);
            Controls.Add(panel2);
            Controls.Add(panel1);
            Name = "Form1";
            Text = "ResultForm";
            panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            panel2.ResumeLayout(false);
            panel2.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Panel panel1;
        private Panel panel2;
        private Label label1;
        private PictureBox pictureBox1;
        private Button btnReult;
        private TextBox txt3;
        private TextBox txt2;
        private TextBox txt1;
        private Label label4;
        private Label label3;
        private Label label2;
    }
}
