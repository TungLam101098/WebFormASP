using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace QuanLy
{
    public partial class DatPhong : System.Web.UI.Page
    {
        
        String db = @"Data Source=MAYTINH\SQLEXPRESS;Initial Catalog=ASP;User ID=sa;Password=123";
        QuanLyDataContext dbc = new QuanLyDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Lich.Visible = false;
                theDiv.Visible = false;
            }
        }

        protected void Check_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(txtCheck.Text);
            var dl = dbc.select_IdNguoiDat(id);
            int kt = dl.Count();
            if (kt > 0)
            {
                theDiv.Visible = true;
                txtKiemTra.Text = "";
            }
            else
            {
                txtKiemTra.ForeColor = Color.Red;
                txtKiemTra.Text = "Id saiiii!!! Hãy Nhập lại";
            }
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Lich.Visible)
            {
                Lich.Visible = false;
            }
            else { Lich.Visible = true; }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtNgay.Text = Lich.SelectedDate.ToString("d");
            Lich.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {

            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Red;
            }
        }


        protected void DangKi_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["idPhong"]);
            using(SqlConnection sql = new SqlConnection(db))
            {
                try{
                    sql.Open();
                    String query = "insert into ChiTiet(idPhong,NgayDat,idNguoiDat) values (@idPhong, @NgayDat, @idNguoiDat)";
                    SqlCommand sqlCmd = new SqlCommand(query, sql);
                    sqlCmd.Parameters.Add("@idPhong",id);
                    sqlCmd.Parameters.Add("@NgayDat", txtNgay.Text + rpGioDat.SelectedItem.Text + rpGioTra.SelectedItem.Text);
                    sqlCmd.Parameters.Add("@idNguoiDat", SqlDbType.Int).Value = txtCheck.Text;
                    sqlCmd.ExecuteNonQuery();
                    lbtc.Text = "Đặt Phòng Thành Công";
                    lbloi.Text = "";
                }
                catch (Exception ex)
                {
                    throw;
                }

            }

        }

        
    }
}