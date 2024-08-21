using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Employee
{
    public partial class Delete_Employee : Form
    {
        public Delete_Employee()
        {
            InitializeComponent();
        }

        private void txtEmpId_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure to exit?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
        public void show()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ASUS\Desktop\C#Lecture\Window Form Application\Employee\Employee\Employee\Employee.mdf;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Employee", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dataGridView1.DataSource = dt;
        }

        
      /*  public void show()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ASUS\Desktop\C#Lecture\Window Form Application\Employee\Employee\Employee\Employee.mdf;Integrated Security=True;");
            con.Open();
            dataGridView1.Visible = true;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = @"select * from Employee";
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("emp_Id");
            dt.Columns.Add("name");
            dt.Columns.Add("email");
            dt.Columns.Add("department");
            dt.Columns.Add("phno");
            dt.Columns.Add("address");
            while (dr.Read())
            {
                DataRow r = dt.NewRow();
                r["emp_Id"] = dr["emp_Id"];
                r["name"] = dr["name"];
                r["email"] = dr["email"];
                r["department"] = dr["department"];
                r["phno"] = dr["phno"];
                r["address"] = dr["address"];

                dt.Rows.Add(r);
            }
            dataGridView1.DataSource = dt;
            dr.Close();
            con.Close();
        }*/
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if ((txtEmpId.Text !=""))
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ASUS\Desktop\C#Lecture\Window Form Application\Employee\Employee\Employee\Employee.mdf;Integrated Security=True;");
                string str = "Delete from Employee where Emp_Id='" + this.txtEmpId.Text + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                cmd.ExecuteNonQuery();
                MessageBox.Show("Delete Sucessfully");
                txtEmpId.Text = "";
                con.Close();
            }
            else
            {
                MessageBox.Show("Enter The Valid Emp_Id");
            }
            show();
        }
       
        private void Delete_Employee_Load(object sender, EventArgs e)
        {
            show();
        
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.Hide();
            InsertEmp insert = new InsertEmp();
            insert.Show();
            
        }
       
        }
    }

