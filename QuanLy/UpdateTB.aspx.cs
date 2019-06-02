using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLy
{
    public partial class UpdateTB : System.Web.UI.Page
    {
        QuanLyDataContext db = new QuanLyDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["id"]);
            db.Update_ThongBao(id,txtThongBao.Text);
            Response.Redirect("dsThongBao.aspx");
        }
    }
}