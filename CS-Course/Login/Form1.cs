namespace Login
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void txtusername_MouseClick(object sender, MouseEventArgs e)
        {
            txtusername.Clear();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "admin" && txtpassword.Text == "admin123")
            {
                MessageBox.Show("Login Sucessfull");
                txtusername.Clear();
                txtpassword.Clear();
            }
            else
            {
                MessageBox.Show("Please check username and password");
                txtusername.Clear();
                txtpassword.Clear();
            }
        }

        private void txtpassword_MouseClick(object sender, MouseEventArgs e)
        {
            txtpassword.Clear();
            txtpassword.PasswordChar = '*';
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
