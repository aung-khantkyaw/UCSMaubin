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
    public partial class Click : Form
    {
        public Click()
        {
            InitializeComponent();
        }

        private void dataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (dataGridView.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
                {
                    dataGridView.CurrentRow.Selected = true;
                    //txtId.Text = dataGridView.Rows[e.RowIndex].Cells[0].Value.ToString();
                    txtname.Text = dataGridView.Rows[e.RowIndex].Cells["name"].FormattedValue.ToString();
                    txtemail.Text = dataGridView.Rows[e.RowIndex].Cells["email"].FormattedValue.ToString();
                    txtdepartment.Text = dataGridView.Rows[e.RowIndex].Cells["department"].FormattedValue.ToString();
                    txtphno.Text = dataGridView.Rows[e.RowIndex].Cells["phno"].FormattedValue.ToString();
                    txtaddress.Text = dataGridView.Rows[e.RowIndex].Cells["address"].FormattedValue.ToString();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
           

        }

        private void Click_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ASUS\Desktop\C#Lecture\Window Form Application\Employee\Employee\Employee.mdf;Integrated Security=True;");

            con.Open();
            dataGridView.Visible = true;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = @"select * from Employee";
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

        }
    }
}
