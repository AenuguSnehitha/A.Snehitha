using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillTrackerAssignment
{
    public partial class GenerateNewBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindgrid();
            Duedate();


        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\ProjectsV13;Initial Catalog=Bill;Integrated Security=True");
            con.Open();
            string q = "insert into Bill values('" + TextBox1.Text + " ', '" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "' )";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Generated Successfully";

        }

        private void Bindgrid()
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\ProjectsV13;Initial Catalog=Bill;Integrated Security=True");
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from Bill", con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        private void Duedate()
        {
            string p = "select * from Bill where(BillDueDate>='13/02/2020')";
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\ProjectsV13;Initial Catalog=Bill;Integrated Security=True");
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(p, con);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

        }

        protected void GridView1_PageIndexChanging(object sender,GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bindgrid();
        }
        protected void GridView2_PageIndexChanging(object sender,GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            Duedate();
        }

        
    }
}