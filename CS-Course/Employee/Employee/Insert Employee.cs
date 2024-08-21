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
using System.Text.RegularExpressions;

namespace Employee
{
    public partial class InsertEmp : Form
    {
        public InsertEmp()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are you sure to exit?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
           // Regex rex = new Regex(@"^([\w-\.]+)@((\[[0-9]]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");
            Regex rex = new Regex(@"[a-zA-Z]+@[a-zA-Z]+.com$");
            Regex rex1 = new Regex(@"^(09)[0-9]{9}$");
            bool isValid = rex.IsMatch(txtemail.Text);
            bool isValid1 = rex1.IsMatch(txtphno.Text);
            if (!(isValid))
            {
                MessageBox.Show("Please Check Email Address");
            }
            else if (!(isValid1))
            {
                MessageBox.Show("Please Check Phone Number");
            }
            else
            {

                if (txtname.Text != "" && txtemail.Text != "" && txtdepartment.Text != "" && txtphno.Text != "" && txtaddress.Text != "")
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ASUS\Desktop\C#Lecture\Window Form Application\Employee\Employee\Employee\Employee.mdf;Integrated Security=True;");
                    con.Open();
                    try
                    {
                        String str = @"Insert into Employee(name,email,department,phno,address) values ('" + txtname.Text + "','" + txtemail.Text + "','" + txtdepartment.Text + "','" + txtphno.Text + "','" + txtaddress.Text + "')";

                        SqlCommand cmd = new SqlCommand(str, con);
                        cmd.ExecuteNonQuery();
                        MessageBox.Show("Insert Sucessfully");
                        Show();
                        txtname.Text = "";
                        txtemail.Text = "";
                        txtdepartment.Text = "";
                        txtphno.Text = "";
                        txtaddress.Text = "";
                        Show();
                    }
                    catch (SqlException exp)
                    {
                        MessageBox.Show(exp.Message);
                    }
                    con.Close();


                  /*  SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ASUS\Desktop\C#Lecture\Window Form Application\Employee\Employee\Employee\Employee.mdf;Integrated Security=True;");
                    con.Open();
                    string query = "select * from Employee";
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    SqlCommandBuilder b = new SqlCommandBuilder(da);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Employee");
                    DataTable dt = new DataTable();
                    dt = ds.Tables["Employee"];
                    DataRow row = dt.NewRow();
                    row["name"]=txtname.Text;
                    row["email"] =txtemail.Text; ;
                    row["department"]=txtdepartment.Text;
                    row["phno"] =txtphno.Text;
                    row["address"]=txtaddress.Text;
                    dt.Rows.Add(row);
                    da.Update(ds, "Employee");
                    MessageBox.Show("Insert Sucessfully");
                    Show();
                    con.Close();*/
                }

                else
                {
                    MessageBox.Show("Please check your data!");
                }
            }
        }
        public void Show()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Documents\Employee.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Employee", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dataGridView.DataSource = dt;
        }

        //(OR)
        /*  public void show()
      {

          SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ASUS\Desktop\C#Lecture\Window Form Application\Employee\Employee\Employee\Employee.mdf;Integrated Security=True;");
          con.Open();
          dataGridView.Visible = true;
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
          dataGridView.DataSource = dt;
          dr.Close();
          con.Close();
      }*/
        
        private void Form1_Load(object sender, EventArgs e)
        {
            Show();
        }

        private void txtphno_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtphno.Text, "[^0-9]"))
            {

                MessageBox.Show("Please enter only numbers.");
                txtphno.Text = txtphno.Text.Remove(txtphno.Text.Length - 1);
            }
            if (txtphno.Text.Length > 11)
            {
                MessageBox.Show("no more than 11 numbers");
                txtphno.Text = txtphno.Text.Remove(txtphno.Text.Length - 1); ;
                txtphno.Focus();
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            this.Hide();
            Update_Employee ue = new Update_Employee();
            ue.Show();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            this.Hide();
            Delete_Employee de = new Delete_Employee();
            de.Show();
        }
    }
}
