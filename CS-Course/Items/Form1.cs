namespace Items
{
	public partial class Form1 : Form
	{
		public Form1()
		{
			InitializeComponent();
		}

		private void btnCombo_Click(object sender, EventArgs e)
		{
			string st = txt.Text;
			cbo.Items.Add(st);
			txt.Text = "";
		}

		private void btnListBox_Click(object sender, EventArgs e)
		{
			string st;
			if (cbo.SelectedIndex != -1)
			{
				st = cbo.SelectedItem.ToString();
				listBox.Items.Add(st);
			}
		}

		private void btnCheckListBox_Click(object sender, EventArgs e)
		{
			string st = "";
			if (listBox.SelectedIndex != -1)
			{
				st = listBox.SelectedItem.ToString();
				checkedListBox.Items.Add(st);
			}
		}

		private void btnView_Click(object sender, EventArgs e)
		{
			for (int i = 0; i < checkedListBox.CheckedItems.Count; i++)
			{
				listBox1.Items.Add(checkedListBox.CheckedItems[i]);
			}
		}
	}
}
