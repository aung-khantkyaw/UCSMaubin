namespace MobilePhoneSalesSystem
{
    partial class ViewSalesReport
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
            dataGridViewSalesReport = new DataGridView();
            btnBack = new Button();
            ((System.ComponentModel.ISupportInitialize)dataGridViewSalesReport).BeginInit();
            SuspendLayout();
            // 
            // dataGridViewSalesReport
            // 
            dataGridViewSalesReport.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewSalesReport.Location = new Point(12, 53);
            dataGridViewSalesReport.Name = "dataGridViewSalesReport";
            dataGridViewSalesReport.Size = new Size(776, 385);
            dataGridViewSalesReport.TabIndex = 0;
            // 
            // btnBack
            // 
            btnBack.Font = new Font("Segoe UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnBack.Location = new Point(12, 12);
            btnBack.Name = "btnBack";
            btnBack.Size = new Size(75, 35);
            btnBack.TabIndex = 1;
            btnBack.Text = "Back";
            btnBack.UseVisualStyleBackColor = true;
            btnBack.Click += btnBack_Click;
            // 
            // ViewSalesReport
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(btnBack);
            Controls.Add(dataGridViewSalesReport);
            Name = "ViewSalesReport";
            Text = "View Sales Report";
            Load += ViewSalesReport_Load;
            ((System.ComponentModel.ISupportInitialize)dataGridViewSalesReport).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView dataGridViewSalesReport;
        private Button btnBack;
    }
}