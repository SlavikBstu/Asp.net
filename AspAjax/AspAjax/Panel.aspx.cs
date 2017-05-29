using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspAjax
{
    public partial class Panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Label2.Text = Label3.Text = DateTime.Now.ToLongTimeString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = Label2.Text = DateTime.Now.ToLongTimeString();
            if (IsPostBack)
                throw new ApplicationException("Какая-то ошибка");
        }

        protected void cmdRefreshTime_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(10000);
            Label1.Text = DateTime.Now.ToLongTimeString();
        }
    }
}