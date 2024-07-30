namespace Items
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
            cbo = new ComboBox();
            txt = new TextBox();
            listBox = new ListBox();
            checkedListBox = new CheckedListBox();
            btnCombo = new Button();
            btnListBox = new Button();
            btnCheckListBox = new Button();
            listBox1 = new ListBox();
            btnView = new Button();
            SuspendLayout();
            // 
            // cbo
            // 
            cbo.FormattingEnabled = true;
            cbo.Location = new Point(119, 81);
            cbo.Name = "cbo";
            cbo.Size = new Size(201, 23);
            cbo.TabIndex = 0;
            // 
            // txt
            // 
            txt.Location = new Point(119, 29);
            txt.Name = "txt";
            txt.Size = new Size(201, 23);
            txt.TabIndex = 1;
            // 
            // listBox
            // 
            listBox.FormattingEnabled = true;
            listBox.ItemHeight = 15;
            listBox.Location = new Point(119, 141);
            listBox.Name = "listBox";
            listBox.Size = new Size(201, 94);
            listBox.TabIndex = 2;
            // 
            // checkedListBox
            // 
            checkedListBox.FormattingEnabled = true;
            checkedListBox.Location = new Point(120, 266);
            checkedListBox.Name = "checkedListBox";
            checkedListBox.Size = new Size(200, 94);
            checkedListBox.TabIndex = 3;
            // 
            // btnCombo
            // 
            btnCombo.Location = new Point(421, 81);
            btnCombo.Name = "btnCombo";
            btnCombo.Size = new Size(151, 23);
            btnCombo.TabIndex = 4;
            btnCombo.Text = "Insert to Combo Box";
            btnCombo.UseVisualStyleBackColor = true;
            btnCombo.Click += btnCombo_Click;
            // 
            // btnListBox
            // 
            btnListBox.Location = new Point(421, 178);
            btnListBox.Name = "btnListBox";
            btnListBox.Size = new Size(151, 23);
            btnListBox.TabIndex = 5;
            btnListBox.Text = "Insert to List Box";
            btnListBox.UseVisualStyleBackColor = true;
            btnListBox.Click += btnListBox_Click;
            // 
            // btnCheckListBox
            // 
            btnCheckListBox.Location = new Point(421, 302);
            btnCheckListBox.Name = "btnCheckListBox";
            btnCheckListBox.Size = new Size(151, 23);
            btnCheckListBox.TabIndex = 6;
            btnCheckListBox.Text = "Insert to CheckListBox";
            btnCheckListBox.UseVisualStyleBackColor = true;
            btnCheckListBox.Click += btnCheckListBox_Click;
            // 
            // listBox1
            // 
            listBox1.FormattingEnabled = true;
            listBox1.ItemHeight = 15;
            listBox1.Location = new Point(120, 394);
            listBox1.Name = "listBox1";
            listBox1.Size = new Size(200, 94);
            listBox1.TabIndex = 7;
            // 
            // btnView
            // 
            btnView.Location = new Point(421, 431);
            btnView.Name = "btnView";
            btnView.Size = new Size(151, 23);
            btnView.TabIndex = 8;
            btnView.Text = "View Your Choice";
            btnView.UseVisualStyleBackColor = true;
            btnView.Click += btnView_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 517);
            Controls.Add(btnView);
            Controls.Add(listBox1);
            Controls.Add(btnCheckListBox);
            Controls.Add(btnListBox);
            Controls.Add(btnCombo);
            Controls.Add(checkedListBox);
            Controls.Add(listBox);
            Controls.Add(txt);
            Controls.Add(cbo);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private ComboBox cbo;
        private TextBox txt;
        private ListBox listBox;
        private CheckedListBox checkedListBox;
        private Button btnCombo;
        private Button btnListBox;
        private Button btnCheckListBox;
        private ListBox listBox1;
        private Button btnView;
    }
}
