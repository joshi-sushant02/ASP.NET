using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication2
{
    public partial class MyDemoPage : System.Web.UI.Page
    {
            SqlConnection con;
            SqlCommand cmd ;  
        protected void Page_Load(object sender, EventArgs e)
        {
            //con= new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");
            //cmd= new SqlCommand("Insert into userDetails (email,mobileNo,password) values('"+Text1.Value+"','"+Text2.Value+"','"+password.Value+"')", con);
            //
            //
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            //cmd = new SqlCommand("select * from userDetails",con);

        }
        protected void Login(object sender, EventArgs e)
        {

           string message = "Your details have been saved successfully.";
           string script = "window.onload = function(){ alert('";
           script += message;
           script += "')};";
           ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }
        protected void Login2(object sender, EventArgs e)
        {
            Text1.Visible = false;
            Text2.Visible = false;
            password.Visible = false;
            password1.Visible = false;
            
          

        }
        protected void Login3(object sender, EventArgs e)
        {

            con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");
            cmd = new SqlCommand("Insert into userDetails (email,mobileNo,password,securityQ) values('" + Text1.Value + "','" + Text2.Value + "','" + password.Value + "','" + securityQ.Value + "')", con);


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            cmd = new SqlCommand("select * from userDetails", con);
            con.Open();
           GridView1.DataSource= cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=user;Integrated Security=True");
            cmd = new SqlCommand("Insert into userDetails (email,mobileNo,password,securityQ) values('" + Text1.Value + "','" + Text2.Value + "','" + password.Value + "','" + securityQ.Value + "')", con);
            SqlCommand cmd1 = new SqlCommand("Insert into Login (email,mobileNo,password) values('" + Text1.Value + "','" + Text2.Value + "','" + password.Value + "')", con);


            con.Open();
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            con.Close();


            cmd = new SqlCommand("select * from userDetails", con);
            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();

            Response.Redirect("ProfilePage.aspx");
        }
    }
}