using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLy
{
    public partial class login : System.Web.UI.Page
    {
        QuanLyDataContext db = new QuanLyDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var dl = db.Login_User(txtUserName.Text, txtPassword.Text);
            int kt = dl.Count();
            if (kt > 0)
            {

                Response.Redirect("admin.aspx");
            }
            else
            {
                lblThongBao.Text = "Đăng nhập thất bại. Mời bạn nhập lại !";
                txtUserName.Text = "";
                txtPassword.Text = "";
                txtUserName.Focus();
            }
        }
    }

}