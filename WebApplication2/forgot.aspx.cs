using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void forgotpass(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");
            con.Open();

            try
            {


                SqlCommand cmd4 = new SqlCommand("select * from userDetails where email='" + Text1.Value  + "'", con);
                SqlDataReader dr1 = cmd4.ExecuteReader();
                if (dr1.Read())
                {
                    if (securityQ.Value == dr1.GetValue(4).ToString() && securityQ.Value!=" ")
                    {

                        SqlCommand cmd1 = new SqlCommand("Insert into Login (email,mobileNo,password) values('" + Text1.Value + "','" + dr1.GetValue(2).ToString() + "','" + password.Value + "')", con);

                        dr1.Close();
                        SqlCommand cmd2 = new SqlCommand("update  userDetails set password='" + password.Value + "'", con);
                        cmd1.ExecuteNonQuery();
                        cmd2.ExecuteNonQuery();
                        Response.Redirect("ProfilePage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Security Answer doesnt Match!!!')</script>");




                    }


                }
                else
                {
                        Response.Write("<script>alert('Invalid Email Id!!!')</script>");

                }

            }

            catch (Exception ex)
            {
               
                        Response.Write("<script>alert('Oops semthing went wrong!!!')</script>");

            }
            con.Close();



        }
    }
}