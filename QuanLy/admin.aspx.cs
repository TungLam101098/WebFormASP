using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace QuanLy
{
    public partial class admin : System.Web.UI.Page
    {
        string connectionString = @"Data Source=MAYTINH\SQLEXPRESS;Initial Catalog=ASP;User ID=sa;Password=123";
        QuanLyDataContext db = new QuanLyDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                View();
            }
        }

        void View()
        {
            var query =  db.ThongBaos;
            int soluong = query.Count();
            txtThongBao.Text = soluong.ToString();
            var query1 = db.Phongs;
            int soluong1 = query1.Count();
            Label1.Text = soluong1.ToString();
            var query2 = db.NguoiDats;
            int soluong2 = query2.Count();
            Label2.Text = soluong2.ToString();
            var query3 = db.ChiTiets;
            int soluong3 = query3.Count();
            Label3.Text = soluong3.ToString();
        }

        

        
    }
}