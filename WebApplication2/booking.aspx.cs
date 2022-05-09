using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void booked(object sender, EventArgs e)
        {
            

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert into bill2 (Type,people,time,date) values('" + type.Value + "','" + people.Value + "','" + time.Value + "','" + date.Value + "')", con);
            
            con.Open();
            cmd.ExecuteNonQuery();
            
            con.Close();
            
            
            
            
            Response.Redirect("bill.aspx");
        }


    }
}