using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("select * from userDetails where email='" + Text1.Value + "' AND password='" + password.Value + "'", con);
            
              
            SqlDataReader dr = cmd.ExecuteReader();
            
                if (dr.Read())
                {

                    

                    SqlCommand cmd1 = new SqlCommand("Insert into Login (email,mobileNo,password) values('" + Text1.Value + "','" + dr.GetValue(2).ToString() + "','" + password.Value + "')", con);
                    dr.Close();
                    cmd1.ExecuteNonQuery();
                    Response.Redirect("HomePage.aspx");
                    }
                else 
                {
                    

Response.Write("<script>alert('Invalid Email Id OR Password')</script>");
                }    


                
            
            }

            catch (Exception ex)
            {
                Response.Write(ex);
                

            }
            con.Close();
        }

        

       
    }
}