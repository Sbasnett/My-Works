using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EmpManagement
{
    public partial class employeeForm : Form
    {
        public employeeForm()
        {
            InitializeComponent();
        }

        private void employeeForm_Load(object sender, EventArgs e)
        {
            db.openConnection();
            db.closeConnection();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void Textbox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
