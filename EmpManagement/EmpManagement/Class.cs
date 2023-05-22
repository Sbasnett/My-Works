using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

namespace EmpManagement
{

     class db
    {

       
        //string con = @"Data Source=Sujan-PC\SQLEXPRESS;Initial Catalog=EmployeeDatabase;Integrated Security=True";
        public static SqlConnection con = new SqlConnection("Data Source=Sujan-PC\\SQLEXPRESS;Initial Catalog=EmployeeDatabase;Integrated Security=True");
        //string querystring = "Select * from Employees";
        public static SqlCommand cmd = new SqlCommand("", con);
        public static DataSet ds;
        public static SqlDataAdapter da;
        public static BindingSource BS;
        public static string aql;



       


            public static void openConnection() 
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                   // MessageBox.Show("The Connection is : " + con.State.ToString());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("connection Failed: " + ex.Message);
            }
        }

        public static void closeConnection()
        {
            try
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                   //MessageBox.Show("The Connection is : " + con.State.ToString());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Open connection Failed: " + ex.Message);
            }
        }

    }
}
