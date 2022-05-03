using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class MyDemoPage2 : System.Web.UI.Page
    {
        public String name = "";
        public String name2 = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void list(object sender, EventArgs e)
        {
            if (Movie_name_1.Checked)
            {


                name = name + "   " + Movie_name_1.Text;
                Label1.Text= name;
                    
             }
            if (Movie_name_2.Checked)
            {


                name = name + "   " + Movie_name_2.Text;
                Label1.Text = name;

            }
            if (Movie_name_3.Checked)
            {


                name = name + "   " + Movie_name_3.Text;
                Label1.Text = name;

            }
            if (Movie_name_4.Checked)
            {


                name = name + "   " + Movie_name_4.Text;
                Label1.Text = name;

            }
            else
            {
                
                Label1.Text = name;
                name = "";
            }


        }



        protected void radio(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {


                name2 = name2 + "   " + RadioButton1.Text;
                Label2.Text = name2;

            }
            if (RadioButton2.Checked)
            {


                name2= name2 + "   " + RadioButton2.Text;
                Label2.Text = name2;

            }
            if (RadioButton3.Checked)
            {


                name2 = name2 + "   " + RadioButton3.Text;
                Label2.Text = name2;

            }
            if (RadioButton4.Checked)
            {


                name2 = name2 + "   " + RadioButton4.Text;
                Label2.Text = name2;

            }
            else
            {
               
            }


        }



    }
}