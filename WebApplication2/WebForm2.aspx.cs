using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");



            SqlCommand cmd = new SqlCommand("update userDetails set securityQ ='" + SecurityQ.Text + "' where id=5", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}