using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class MyDemoPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

    }
}