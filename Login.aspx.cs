using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BillTrackerAssignment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "select * from Login where Username='" + TextBox1.Text+"' and  Password='" + TextBox2.Text+"'" ;
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Login;Integrated Security=True");
            con.Open();
           
            SqlCommand cmd = new SqlCommand(q,con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("GenerateNewBill.aspx");
            }
            {
                Label1.Text = "You have not registered <br>  Please register";
                   
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string q = "insert into Login values(@Username,@Password)";
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Login;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@Username", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
            // SqlDataReader dr = cmd.ExecuteReader();
            cmd.ExecuteNonQuery();
           // if (dr.Read())
          //  {
                Label3.Text = "Go to login page <br>  please login now";
          //  }
           // else
           // {
             //   Label4.Text = "You registration is failed";
           // }
        }
    }
}