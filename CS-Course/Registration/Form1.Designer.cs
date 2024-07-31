namespace Registration
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
            panel1 = new Panel();
            dtp1 = new DateTimePicker();
            cboYear = new ComboBox();
            rdoFemale = new RadioButton();
            rdoMale = new RadioButton();
            txtAddress = new TextBox();
            txtName = new TextBox();
            txtId = new TextBox();
            label6 = new Label();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            Label2 = new Label();
            Label1 = new Label();
            btnInsert = new Button();
            btnCancel = new Button();
            panel1.SuspendLayout();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.BackColor = SystemColors.ActiveCaption;
            panel1.Controls.Add(dtp1);
            panel1.Controls.Add(cboYear);
            panel1.Controls.Add(rdoFemale);
            panel1.Controls.Add(rdoMale);
            panel1.Controls.Add(txtAddress);
            panel1.Controls.Add(txtName);
            panel1.Controls.Add(txtId);
            panel1.Controls.Add(label6);
            panel1.Controls.Add(label5);
            panel1.Controls.Add(label4);
            panel1.Controls.Add(label3);
            panel1.Controls.Add(Label2);
            panel1.Controls.Add(Label1);
            panel1.Location = new Point(12, 12);
            panel1.Name = "panel1";
            panel1.Size = new Size(776, 410);
            panel1.TabIndex = 0;
            // 
            // dtp1
            // 
            dtp1.Location = new Point(220, 275);
            dtp1.Name = "dtp1";
            dtp1.Size = new Size(265, 23);
            dtp1.TabIndex = 12;
            dtp1.ValueChanged += dtp1_ValueChanged;
            // 
            // cboYear
            // 
            cboYear.FormattingEnabled = true;
            cboYear.Items.AddRange(new object[] { "First Year", "Second Year", "Third Year", "Fourth Year", "Final Year" });
            cboYear.Location = new Point(220, 224);
            cboYear.Name = "cboYear";
            cboYear.Size = new Size(265, 23);
            cboYear.TabIndex = 11;
            // 
            // rdoFemale
            // 
            rdoFemale.AutoSize = true;
            rdoFemale.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            rdoFemale.Location = new Point(355, 168);
            rdoFemale.Name = "rdoFemale";
            rdoFemale.Size = new Size(63, 19);
            rdoFemale.TabIndex = 10;
            rdoFemale.TabStop = true;
            rdoFemale.Text = "Female";
            rdoFemale.UseVisualStyleBackColor = true;
            // 
            // rdoMale
            // 
            rdoMale.AutoSize = true;
            rdoMale.Font = new Font("Segoe UI Semibold", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            rdoMale.Location = new Point(220, 168);
            rdoMale.Name = "rdoMale";
            rdoMale.Size = new Size(51, 19);
            rdoMale.TabIndex = 9;
            rdoMale.TabStop = true;
            rdoMale.Text = "Male";
            rdoMale.UseVisualStyleBackColor = true;
            // 
            // txtAddress
            // 
            txtAddress.Location = new Point(220, 333);
            txtAddress.Name = "txtAddress";
            txtAddress.Size = new Size(265, 23);
            txtAddress.TabIndex = 8;
            // 
            // txtName
            // 
            txtName.Location = new Point(220, 111);
            txtName.Name = "txtName";
            txtName.Size = new Size(265, 23);
            txtName.TabIndex = 7;
            // 
            // txtId
            // 
            txtId.Location = new Point(220, 55);
            txtId.Name = "txtId";
            txtId.Size = new Size(265, 23);
            txtId.TabIndex = 6;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label6.Location = new Point(57, 334);
            label6.Name = "label6";
            label6.Size = new Size(57, 17);
            label6.TabIndex = 5;
            label6.Text = "Address";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label5.Location = new Point(57, 279);
            label5.Name = "label5";
            label5.Size = new Size(35, 17);
            label5.TabIndex = 4;
            label5.Text = "DOB";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label4.Location = new Point(57, 225);
            label4.Name = "label4";
            label4.Size = new Size(34, 17);
            label4.TabIndex = 3;
            label4.Text = "Year";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label3.Location = new Point(57, 168);
            label3.Name = "label3";
            label3.Size = new Size(52, 17);
            label3.TabIndex = 2;
            label3.Text = "Gender";
            // 
            // Label2
            // 
            Label2.AutoSize = true;
            Label2.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Label2.Location = new Point(57, 112);
            Label2.Name = "Label2";
            Label2.Size = new Size(44, 17);
            Label2.TabIndex = 1;
            Label2.Text = "Name";
            // 
            // Label1
            // 
            Label1.AutoSize = true;
            Label1.Font = new Font("Segoe UI Semibold", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Label1.Location = new Point(57, 56);
            Label1.Name = "Label1";
            Label1.Size = new Size(20, 17);
            Label1.TabIndex = 0;
            Label1.Text = "Id";
            // 
            // btnInsert
            // 
            btnInsert.BackColor = SystemColors.Highlight;
            btnInsert.Font = new Font("Segoe UI", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnInsert.ForeColor = SystemColors.ButtonHighlight;
            btnInsert.Location = new Point(217, 457);
            btnInsert.Name = "btnInsert";
            btnInsert.Size = new Size(75, 37);
            btnInsert.TabIndex = 13;
            btnInsert.Text = "Insert";
            btnInsert.UseVisualStyleBackColor = false;
            btnInsert.Click += btnInsert_Click;
            // 
            // btnCancel
            // 
            btnCancel.BackColor = Color.Red;
            btnCancel.Font = new Font("Segoe UI", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnCancel.ForeColor = SystemColors.ControlLightLight;
            btnCancel.Location = new Point(384, 457);
            btnCancel.Name = "btnCancel";
            btnCancel.Size = new Size(75, 37);
            btnCancel.TabIndex = 14;
            btnCancel.Text = "Cancel";
            btnCancel.UseVisualStyleBackColor = false;
            btnCancel.Click += btnCancel_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.AppWorkspace;
            ClientSize = new Size(800, 522);
            Controls.Add(btnCancel);
            Controls.Add(btnInsert);
            Controls.Add(panel1);
            Name = "Form1";
            Text = "Registration";
            Load += Form1_Load;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private Label label5;
        private Label label4;
        private Label label3;
        private Label Label2;
        private Label Label1;
        private DateTimePicker dtp1;
        private ComboBox cboYear;
        private RadioButton rdoFemale;
        private RadioButton rdoMale;
        private TextBox txtAddress;
        private TextBox txtName;
        private TextBox txtId;
        private Label label6;
        private Button btnInsert;
        private Button btnCancel;
    }
}
