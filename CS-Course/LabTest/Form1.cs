using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
namespace LabTest
{
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        public void Show()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\LabTest.mdf;Integrated Security=True;Connect Timeout=30;");
            conn.Open();

            SqlCommand sqlCommand = new SqlCommand("Select * from EmployeeLabtest", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            dataGridView.DataSource = dataTable;

            conn.Close();
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {
            int id = 1;
            txtId.Text = id.ToString();
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\LabTest.mdf;Integrated Security=True;Connect Timeout=30;");
            conn.Open();
            SqlCommand selectAll = new SqlCommand("Select * from EmployeeLabtest", conn);
            SqlDataReader reader = selectAll.ExecuteReader();
            while (reader.Read())
            {
                id = Convert.ToInt32(reader["emp_id"]);
                id++;
                txtId.Text = id.ToString();
            }
            Regex emailRex = new Regex(@"[a-zA-Z]+@[a-zA-Z]+.com$");
            Regex phoneRex = new Regex(@"^(09)[0-9]{9}$");
            bool isEmailValid = emailRex.IsMatch(txtEmail.Text);
            bool isPhoneValid = phoneRex.IsMatch(txtPhone.Text);

            if (!isEmailValid)
            {
                MessageBox.Show("Please Check Email Address");
            }
            else if (!isPhoneValid)
            {
                MessageBox.Show("Please Check Phone Number");
            }
            else
            {
                if (txtName.Text != "" && txtEmail.Text != "" && txtDept.Text != "" && txtPhone.Text != "" && txtPhone.Text != "")
                {
                    SqlConnection conn1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\LabTest.mdf;Integrated Security=True;Connect Timeout=30;");
                    conn1.Open();
                    try
                    {
                        String sql = "insert into EmployeeLabtest (name, email, department, phno, address) values ('" + txtName.Text + "' , '" + txtEmail.Text + "' , '" + txtDept.Text + "' , '" + txtPhone.Text + "' , '" + txtAddress.Text + "')";
                        SqlCommand sqlCommand = new SqlCommand(sql, conn1);
                        sqlCommand.ExecuteNonQuery();
                        MessageBox.Show("Insert Successful");
                        txtName.Text = "";
                        txtEmail.Text = "";
                        txtPhone.Text = "";
                        txtDept.Text = "";
                        txtAddress.Text = "";
                        id++;
                        txtId.Text = id.ToString();
                        Show();
                    }
                    catch (SqlException exp)
                    {
                        MessageBox.Show(exp.Message);
                    }
                    conn1.Close();
                }
                else
                {
                    MessageBox.Show("Check Your data.");
                }
            }
            conn.Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Show();
            int id = 1;
            txtId.Text = id.ToString();
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\LabTest.mdf;Integrated Security=True;Connect Timeout=30;");
            conn.Open();
            SqlCommand selectAll = new SqlCommand("Select * from EmployeeLabtest", conn);
            SqlDataReader reader = selectAll.ExecuteReader();
            while (reader.Read())
            {
                id = Convert.ToInt32(reader["emp_id"]);
                id++;
                txtId.Text = id.ToString();
            }
            conn.Close();
        }

        private void dataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (dataGridView.Rows[e.RowIndex].Cells[0].Value != null)
                {
                    dataGridView.CurrentRow.Selected = true;
                    txtId.Text = dataGridView.Rows[e.RowIndex].Cells[0].Value.ToString();
                    txtName.Text = dataGridView.Rows[e.RowIndex].Cells[1].Value.ToString();
                    txtEmail.Text = dataGridView.Rows[e.RowIndex].Cells[2].Value.ToString();
                    txtDept.Text = dataGridView.Rows[e.RowIndex].Cells[3].Value.ToString();
                    txtPhone.Text = dataGridView.Rows[e.RowIndex].Cells[4].Value.ToString();
                    txtAddress.Text = dataGridView.Rows[e.RowIndex].Cells[5].Value.ToString();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_Exit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure to exit?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes) 
            { 
                Application.Exit();
            }
        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\LabTest.mdf;Integrated Security=True;Connect Timeout=30;");
            conn.Open();
            try
            {
                String sql = "update EmployeeLabtest set name = '" + txtName.Text + "' , email = '" + txtEmail.Text + "' , department = '" + txtDept.Text + "' , phno = '" + txtPhone.Text + "' , address = '" + txtAddress.Text + "' where emp_id = '" + txtId.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.ExecuteNonQuery();
                txtName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtDept.Text = "";
                txtAddress.Text = "";
                int id = 1;
                SqlCommand selectAll = new SqlCommand("Select * from EmployeeLabtest", conn);
                SqlDataReader reader = selectAll.ExecuteReader();
                while (reader.Read())
                {
                    id = Convert.ToInt32(reader["emp_id"]);
                    id++;
                    txtId.Text = id.ToString();
                }
                Show();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\LabTest.mdf;Integrated Security=True;Connect Timeout=30;");
            conn.Open();
            try
            {
                String sql = "Delete from EmployeeLabtest where emp_id = '" + txtId.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                SqlDataReader dataReader = sqlCommand.ExecuteReader();
                txtName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtDept.Text = "";
                txtAddress.Text = "";
                dataReader.Close();
                int id = 1;
                SqlCommand selectAll = new SqlCommand("Select * from EmployeeLabtest", conn);
                SqlDataReader reader = selectAll.ExecuteReader();
                while (reader.Read())
                {
                    id = Convert.ToInt32(reader["emp_id"]);
                    id++;
                    txtId.Text = id.ToString();
                }
                Show();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        
    }
}
