namespace LabTest
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
            dataGridView = new DataGridView();
            btn_insert = new Button();
            btn_update = new Button();
            btn_delete = new Button();
            btn_Exit = new Button();
            txtName = new TextBox();
            txtEmail = new TextBox();
            txtDept = new TextBox();
            txtPhone = new TextBox();
            txtAddress = new TextBox();
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            label5 = new Label();
            label6 = new Label();
            txtId = new TextBox();
            ((System.ComponentModel.ISupportInitialize)dataGridView).BeginInit();
            SuspendLayout();
            // 
            // dataGridView
            // 
            dataGridView.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView.Location = new Point(12, 288);
            dataGridView.Name = "dataGridView";
            dataGridView.Size = new Size(776, 150);
            dataGridView.TabIndex = 0;
            dataGridView.CellClick += dataGridView_CellClick;
            // 
            // btn_insert
            // 
            btn_insert.Location = new Point(631, 53);
            btn_insert.Name = "btn_insert";
            btn_insert.Size = new Size(75, 23);
            btn_insert.TabIndex = 1;
            btn_insert.Text = "Insert";
            btn_insert.UseVisualStyleBackColor = true;
            btn_insert.Click += btn_insert_Click;
            // 
            // btn_update
            // 
            btn_update.Location = new Point(631, 101);
            btn_update.Name = "btn_update";
            btn_update.Size = new Size(75, 23);
            btn_update.TabIndex = 2;
            btn_update.Text = "Update";
            btn_update.UseVisualStyleBackColor = true;
            btn_update.Click += btn_update_Click;
            // 
            // btn_delete
            // 
            btn_delete.Location = new Point(631, 149);
            btn_delete.Name = "btn_delete";
            btn_delete.Size = new Size(75, 23);
            btn_delete.TabIndex = 3;
            btn_delete.Text = "Delete";
            btn_delete.UseVisualStyleBackColor = true;
            btn_delete.Click += btn_delete_Click;
            // 
            // btn_Exit
            // 
            btn_Exit.Location = new Point(631, 200);
            btn_Exit.Name = "btn_Exit";
            btn_Exit.Size = new Size(75, 23);
            btn_Exit.TabIndex = 4;
            btn_Exit.Text = "Exit";
            btn_Exit.UseVisualStyleBackColor = true;
            btn_Exit.Click += btn_Exit_Click;
            // 
            // txtName
            // 
            txtName.Location = new Point(169, 57);
            txtName.Name = "txtName";
            txtName.Size = new Size(238, 23);
            txtName.TabIndex = 5;
            // 
            // txtEmail
            // 
            txtEmail.Location = new Point(169, 101);
            txtEmail.Name = "txtEmail";
            txtEmail.Size = new Size(238, 23);
            txtEmail.TabIndex = 6;
            // 
            // txtDept
            // 
            txtDept.Location = new Point(169, 153);
            txtDept.Name = "txtDept";
            txtDept.Size = new Size(238, 23);
            txtDept.TabIndex = 7;
            // 
            // txtPhone
            // 
            txtPhone.Location = new Point(169, 200);
            txtPhone.Name = "txtPhone";
            txtPhone.Size = new Size(238, 23);
            txtPhone.TabIndex = 8;
            // 
            // txtAddress
            // 
            txtAddress.Location = new Point(169, 243);
            txtAddress.Name = "txtAddress";
            txtAddress.Size = new Size(238, 23);
            txtAddress.TabIndex = 9;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(36, 57);
            label1.Name = "label1";
            label1.Size = new Size(39, 15);
            label1.TabIndex = 10;
            label1.Text = "Name";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(36, 101);
            label2.Name = "label2";
            label2.Size = new Size(36, 15);
            label2.TabIndex = 11;
            label2.Text = "Email";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(36, 153);
            label3.Name = "label3";
            label3.Size = new Size(69, 15);
            label3.TabIndex = 12;
            label3.Text = "department";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(36, 200);
            label4.Name = "label4";
            label4.Size = new Size(58, 15);
            label4.TabIndex = 13;
            label4.Text = "phone no";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(36, 243);
            label5.Name = "label5";
            label5.Size = new Size(47, 15);
            label5.TabIndex = 14;
            label5.Text = "address";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(36, 9);
            label6.Name = "label6";
            label6.Size = new Size(17, 15);
            label6.TabIndex = 15;
            label6.Text = "Id";
            // 
            // txtId
            // 
            txtId.Location = new Point(169, 9);
            txtId.Name = "txtId";
            txtId.ReadOnly = true;
            txtId.Size = new Size(238, 23);
            txtId.TabIndex = 16;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(txtId);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(txtAddress);
            Controls.Add(txtPhone);
            Controls.Add(txtDept);
            Controls.Add(txtEmail);
            Controls.Add(txtName);
            Controls.Add(btn_Exit);
            Controls.Add(btn_delete);
            Controls.Add(btn_update);
            Controls.Add(btn_insert);
            Controls.Add(dataGridView);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridView).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView dataGridView;
        private Button btn_insert;
        private Button btn_update;
        private Button btn_delete;
        private Button btn_Exit;
        private TextBox txtName;
        private TextBox txtEmail;
        private TextBox txtDept;
        private TextBox txtPhone;
        private TextBox txtAddress;
        private Label label1;
        private Label label2;
        private Label label3;
        private Label label4;
        private Label label5;
        private Label label6;
        private TextBox txtId;
    }
}
