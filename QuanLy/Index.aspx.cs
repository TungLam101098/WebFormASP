using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLy
{
    public partial class Index : System.Web.UI.Page
    {
        QuanLyDataContext db = new QuanLyDataContext();
        string connectionString = @"Data Source=MAYTINH\SQLEXPRESS;Initial Catalog=ASP;User ID=sa;Password=123";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Xoa();

                View();
            }
            
        }
        void View()
        {
            rpThongBao.DataSource = db.Select_ThongBao();
            rpThongBao.DataBind();
            rpPhong.DataSource = db.Select_Phong();
            rpPhong.DataBind();
            check.Visible = false;
            kiemtra.Visible = true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(idUser.Text);
            var dl = db.select_IdNguoiDat(id);
            int kt = dl.Count();
            if (kt > 0)
            {
                check.Visible = true;
                kiemtra.Visible = false;
                txtKiemTra.Text = "";               
                rpLich.DataSource = db.Select_ID(id);
                rpLich.DataBind();
                
                
            }
            else
            {
                check.Visible = false;
                kiemtra.Visible = true;
                txtKiemTra.Text = "Id saiiii!!! Hãy Nhập lại";
            }
            
        }
        void Xoa()
        {
            int id = Convert.ToInt32(Request["id"]);
            db.Delete_Chitiet(id);
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = sqlCon;
                cmd.CommandText = "Search_ChiTiet";
                cmd.CommandType = CommandType.StoredProcedure;
                if (txtSearch.Text != null)
                {
                    SqlParameter param = new SqlParameter("@id", txtSearch.Text);
                    cmd.Parameters.Add(param);
                }

                sqlCon.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rpLich.DataSource = rdr;
                rpLich.DataBind();
            }
        }

    }
}