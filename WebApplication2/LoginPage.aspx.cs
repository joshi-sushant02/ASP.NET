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
                if(Text1.Value== dr.GetValue(1).ToString()  || password.Value == dr.GetValue(3).ToString())
                {
                
                        SqlCommand cmd1 = new SqlCommand("Insert into Login (email,mobileNo,password) values('" + Text1.Value + "','" + dr.GetValue(2).ToString() + "','" + password.Value +"')", con);

                        Response.Redirect("ProfilePage.aspx");
                    }
                   
            
                    
                dr.Close();
            }
            
            }

            catch (Exception ex)
            {
                Response.Write("gcvdg");
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "done", "alert('" + ex.Message.Replace("'", "") + "');", true);
                // string message = string.Format("Message: {0}\\n\\n", ex.Message);
                // message += string.Format("StackTrace: {0}\\n\\n", ex.StackTrace.Replace(Environment.NewLine, string.Empty));
                // message += string.Format("Source: {0}\\n\\n", ex.Source.Replace(Environment.NewLine, string.Empty));
                // message += string.Format("TargetSite: {0}", ex.TargetSite.ToString().Replace(Environment.NewLine, string.Empty));
                // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);


            }
            con.Close();
        }

        

       
    }
}