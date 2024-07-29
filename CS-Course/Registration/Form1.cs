namespace Registration
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            dtp1.Format = DateTimePickerFormat.Custom;
            dtp1.CustomFormat = "dd-MM-yyyy";
            String gender = string.Empty;
            if (rdoMale.Checked)
            {
                gender = "Male";
            }
            else if (rdoFemale.Checked)
            {
                gender = "Female";
            }
            if (txtId.Text != "" && txtName.Text != "" && cboYear.Text != "" && dtp1.Text != "" && txtAddress.Text != "")
            {
                MessageBox.Show(
                    $" Id = {txtId.Text} \n Name = {txtName.Text} \n Gender = {gender} \n Year = {cboYear.Text} \n DOB = {dtp1.Text} \n Address = {txtAddress.Text}"
                    );
            }
            else
            {
                MessageBox.Show("Please Enter Data Completely");
            }

            txtId.Clear();
            txtName.Clear();
            txtAddress.Clear();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
