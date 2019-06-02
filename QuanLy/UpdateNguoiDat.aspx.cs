using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLy
{
    public partial class UpdateNguoiDat : System.Web.UI.Page
    {
        QuanLyDataContext db = new QuanLyDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Update_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["id"]);
            db.Update_NguoiDat(id, TextBox1.Text,TextBox2.Text,TextBox3.Text);
            Response.Redirect("dsUser.aspx");
        }
    }
}