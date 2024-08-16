using System.Data;
using System.Data.SqlClient;

namespace StudentRecordForm
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

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure to exit", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        public void Show()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\StudentRecord.mdf;Integrated Security=True;");
            conn.Open();

            dataGridView.Visible = true;
            String str = @"select * from Student";
            SqlCommand com = new SqlCommand(str, conn);

            SqlDataReader dr = com.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("Student");
            dt.Columns.Add("Student Name");
            dt.Columns.Add("Student Email");
            dt.Columns.Add("Student Major");
            dt.Columns.Add("Student State");

            while (dr.Read())
            {
                DataRow r = dt.NewRow();
                r["Student"] = "MUB-"+dr["Student_Id"];
                r["Student Name"] = dr["Name"];
                r["Student Email"] = dr["Email"];
                r["Student Major"] = dr["Major"];
                r["Student State"] = dr["State"];

                dt.Rows.Add(r);
            }

            dataGridView.DataSource = dt;
            dr.Close();
            conn.Close();
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtEmail.Text != "" && txtMajor.Text != "" && txtState.Text != "")
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\StudentRecord.mdf;Integrated Security=True;");
                conn.Open();
                try
                {
                    //String str = @"Insert into Student(Name, Email, Major, State) values (@name, @email, @major, @state)";

                    String str = @"Insert into Student values('" + txtName.Text + "' , '" + txtEmail.Text + "' , '" + txtMajor.Text + "' , '" + txtState.Text + "')";
                    SqlCommand cmd = new SqlCommand(str, conn);

                    //cmd.Parameters.AddWithValue("@name", txtName.Text);
                    //cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    //cmd.Parameters.AddWithValue("@major", txtMajor.Text);
                    //cmd.Parameters.AddWithValue("@state", txtState.Text);

                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Insert Successfully");
                    Show();
                    //this.Hide();

                    txtName.Text = "";
                    txtEmail.Text = "";
                    txtMajor.Text = "";
                    txtState.Text = "";
                }
                catch (SqlException exp)
                {
                    MessageBox.Show(exp.Message);
                }
                conn.Close();
            }
            else
            {
                MessageBox.Show("Please check your data!");
            }
        }
        

        private void Form1_Load(object sender, EventArgs e)
        {
            Show();
            //SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\StudentRecord.mdf;Integrated Security=True;");
            //conn.Open();

            //dataGridView.Visible = true;
            //String str = @"select * from Student";
            //SqlCommand com = new SqlCommand(str, conn);

            //SqlDataReader dr = com.ExecuteReader();
            //DataTable dt = new DataTable();
            //dt.Columns.Add("Student_Id");
            //dt.Columns.Add("Name");
            //dt.Columns.Add("Email");
            //dt.Columns.Add("Major");
            //dt.Columns.Add("State");

            //while (dr.Read())
            //{
            //    DataRow r = dt.NewRow();
            //    r["Student_Id"] = dr["Student_Id"];
            //    r["Name"] = dr["Name"];
            //    r["Email"] = dr["Email"];
            //    r["Major"] = dr["Major"];
            //    r["State"] = dr["State"];

            //    dt.Rows.Add(r);
            //}

            //dataGridView.DataSource = dt;
            //dr.Close();
            //conn.Close();
        }
    }
}
