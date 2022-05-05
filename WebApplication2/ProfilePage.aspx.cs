using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");
           


           SqlCommand cmd = new SqlCommand("select * from userDetails where  id=(select max(id) from userDetails)", con);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read()) {
                
            Label1.Text = dr.GetValue(1).ToString();
            Label2.Text = dr.GetValue(2).ToString();
            Label3.Text = dr.GetValue(4).ToString();
                dr.Close(); 
            }
            con.Close();

        }
    }
}