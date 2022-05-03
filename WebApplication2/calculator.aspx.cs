using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class calculator : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {
            Boolean add = false;
        }

        

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text += Button3.Text;
            Label5.Text += Button3.Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Text += Button4.Text;
            Label5.Text += Button4.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text += Button1.Text;
            Label5.Text += Button1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text += Button2.Text;
            Label5.Text += Button2.Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
         
            int   a = Convert.ToInt32(Label5.Text);
            Label1.Text = Label2.Text +"+" + a;
           
            Label5.Text = "0";
            
            int b= Convert.ToInt32(Label2.Text);
            
            int c = a + b;
            Label2.Text =c.ToString();
            

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            Label2.Text = 0.ToString();
            Label5.Text = "0";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label1.Text += Button7.Text;
            Label5.Text += Button7.Text;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Label1.Text += Button8.Text;
            Label5.Text += Button8.Text;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Label1.Text += Button10.Text;
            Label5.Text += Button10.Text;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Label1.Text += Button11.Text;
            Label5.Text += Button11.Text;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Label1.Text += Button12.Text;
            Label5.Text += Button12.Text;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Label1.Text += Button13.Text;
            Label5.Text += Button13.Text;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

           int  a = Convert.ToInt32(Label5.Text);
            Label1.Text = Label2.Text+"*"+a;

            Label5.Text = "0";
            int b = Convert.ToInt32(Label2.Text);
            int c = a * b;
            Label2.Text = c.ToString();
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            
        }
    }
}