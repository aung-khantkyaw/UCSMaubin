namespace ResultForm
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnReult_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt1.Text != "" && txt2.Text != "" && txt3.Text != "")
                {
                    Int64 mark1 = Int64.Parse(txt1.Text);
                    Int64 mark2 = Int64.Parse(txt2.Text);
                    Int64 mark3 = Int64.Parse(txt3.Text);

                    if (mark1 >= 50 && mark2 >= 50 && mark3 >= 50)
                    {
                        MessageBox.Show("Result is Pass!");
                    }
                    else
                    {
                        MessageBox.Show("Result is Fail!");
                    }

                    txt1.Clear();
                    txt2.Clear();
                    txt3.Clear();
                }
                else
                {
                    MessageBox.Show("Please Enter Data Completely", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Message", MessageBoxButtons.OKCancel, MessageBoxIcon.Error);
            }
        }
    }
}
