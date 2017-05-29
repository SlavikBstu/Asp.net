using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebService
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            localhost.WebService1 service = new localhost.WebService1();
            double x = Convert.ToDouble(TextBox1.Text);
            double y = Convert.ToDouble(TextBox2.Text);

            Label3.Text = service.Add(x, y).ToString();
            Label4.Text = service.Sub(x, y).ToString();
            Label5.Text = service.Mul(x, y).ToString();

        }
    }
}