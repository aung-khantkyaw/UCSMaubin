using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MobilePhoneSalesSystem
{
    public partial class ViewSalesReport : Form
    {
        public ViewSalesReport()
        {
            InitializeComponent();
        }

        private void ViewSalesReport_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\DELL\\Documents\\MobilePhoneSales.mdf;Integrated Security=True;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string query = "SELECT * FROM SalesInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            dataGridViewSalesReport.DataSource = dataTable;
            conn.Close();
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            MobileSalesEntry mobileSalesEntryForm = new MobileSalesEntry();
            mobileSalesEntryForm.Show();
            this.Hide();
        }
    }
}
