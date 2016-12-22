using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary1;


namespace lab_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double summ, a, b;
            a = Convert.ToDouble(TextBox1.Text);
            b = Convert.ToDouble(TextBox2.Text);
            ClassLibrary1.Class1 class1   = new ClassLibrary1.Class1(a, b);
            summ = class1.addition();
            TextBox3.Text = Convert.ToString(summ);
            //  Result(TextBox1.Text, TextBox2.Text, '+');
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double summ, a, b;
            a = Convert.ToDouble(TextBox1.Text);
            b = Convert.ToDouble(TextBox2.Text);
            ClassLibrary1.Class1 class1 = new ClassLibrary1.Class1(a, b);
            summ = class1.subtraction();
            TextBox3.Text = Convert.ToString(summ);
            //  Result(TextBox1.Text, TextBox2.Text, '-');
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double summ, a, b;
            a = Convert.ToDouble(TextBox1.Text);
            b = Convert.ToDouble(TextBox2.Text);
            ClassLibrary1.Class1 class1 = new ClassLibrary1.Class1(a, b);
            summ = class1.multiplie();
            TextBox3.Text = Convert.ToString(summ);
            //  Result(TextBox1.Text, TextBox2.Text, '*');
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            double summ, a, b;
            a = Convert.ToDouble(TextBox1.Text);
            b = Convert.ToDouble(TextBox2.Text);
            ClassLibrary1.Class1 class1 = new ClassLibrary1.Class1(a, b);
            summ = class1.divide();
            TextBox3.Text = Convert.ToString(summ);
            //  Result(TextBox1.Text, TextBox2.Text, '/');
        }

   
    }
}