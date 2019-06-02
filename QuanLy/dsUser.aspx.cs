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
    public partial class dsUser : System.Web.UI.Page
    {
        string connectionString = @"Data Source=MAYTINH\SQLEXPRESS;Initial Catalog=ASP;User ID=sa;Password=123";
        QuanLyDataContext db = new QuanLyDataContext();
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
            RepeaterThongBao.DataSource = db.select_NguoiDat();
            RepeaterThongBao.DataBind();
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            db.Insert_NguoiDat(txtid.Text,txtHoTen.Text,txtSDT.Text,txtDiaChi.Text);
            View();
        }
        void Xoa()
        {
            int id = Convert.ToInt32(Request["id"]);
            db.Delete_NguoiDat(id);
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = sqlCon;
                cmd.CommandText = "Search_NguoiDat";
                cmd.CommandType = CommandType.StoredProcedure;
                if (txtSearch.Text != null)
                {
                    SqlParameter param = new SqlParameter("@id", txtSearch.Text);
                    cmd.Parameters.Add(param);
                }

                sqlCon.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                RepeaterThongBao.DataSource = rdr;
                RepeaterThongBao.DataBind();
            }
        }
    }
}