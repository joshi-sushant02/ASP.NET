using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication2
{
    public partial class bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");



            SqlCommand cmd = new SqlCommand("select * from bill2 where  id=(select max(id) from bill2)", con);
            SqlCommand cmd2 = new SqlCommand("select * from Login where  id=(select max(id) from Login)", con);
           
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {


              peoplee.Text = dr.GetValue(2).ToString();
               typee.Text = dr.GetValue(1).ToString();
               timee.Text = dr.GetValue(3).ToString();
                date.Text = DateTime.Now.ToString();
               date2.Text = dr.GetValue(4).ToString();
               
                dr.Close();
             
            }
             dr = cmd2.ExecuteReader();
            if (dr.Read())
            {


                emaill.Text = dr.GetValue(1).ToString();
                mobilee.Text = dr.GetValue(2).ToString();

                dr.Close();

            }

            con.Close();
            
            
            
            

            



        }
    }
}