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
    public partial class dsphong : System.Web.UI.Page
    {
        string connectionString = @"Data Source=MAYTINH\SQLEXPRESS;Initial Catalog=ASP;User ID=sa;Password=123";
        QuanLyDataContext db = new QuanLyDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack )
            {
                
                PopulateGridview();
            }
        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Phong", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                rpPhong.DataSource = dtbl;
                rpPhong.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                rpPhong.DataSource = dtbl;
                rpPhong.DataBind();
                rpPhong.Rows[0].Cells.Clear();
                rpPhong.Rows[0].Cells.Add(new TableCell());
                rpPhong.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                rpPhong.Rows[0].Cells[0].Text = "No Data Found ..!";
                rpPhong.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void gvPhong_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Phong (Ten, url, SoLuong, TrangThai) VALUES (@Ten,@url,@SoLuong,@TrangThai)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@Ten", (rpPhong.FooterRow.FindControl("txtTenFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@url", (rpPhong.FooterRow.FindControl("txturlFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@SoLuong", (rpPhong.FooterRow.FindControl("txtSoLuongFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@TrangThai", (rpPhong.FooterRow.FindControl("txtTrangThaiFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void gvPhong_RowEditing(object sender, GridViewEditEventArgs e)
        {
            rpPhong.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void gvPhong_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            rpPhong.EditIndex = -1;
            PopulateGridview();
        }

        protected void gvPhong_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE Phong SET Ten=@Ten, url=@url, SoLuong=@SoLuong, TrangThai=@TrangThai WHERE idPhong = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Ten", (rpPhong.Rows[e.RowIndex].FindControl("txtTen") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@url", (rpPhong.Rows[e.RowIndex].FindControl("txturl") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@SoLuong", (rpPhong.Rows[e.RowIndex].FindControl("txtSoLuong") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@TrangThai", (rpPhong.Rows[e.RowIndex].FindControl("txtTrangThai") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(rpPhong.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    rpPhong.EditIndex = -1;
                    PopulateGridview();

                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void gvPhong_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM Phong WHERE idPhong = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(rpPhong.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = sqlCon;
                cmd.CommandText = "Search_Phong";
                cmd.CommandType = CommandType.StoredProcedure;
                if (TextBox1.Text != null)
                {
                    SqlParameter param = new SqlParameter("@Ten", TextBox1.Text);
                    cmd.Parameters.Add(param);
                }
                if (TextBox2.Text != null)
                {
                    SqlParameter param = new SqlParameter("@url", TextBox2.Text);
                    cmd.Parameters.Add(param);
                }
                if (TextBox3.Text != null)
                {
                    SqlParameter param = new SqlParameter("@SoLuong", TextBox3.Text);
                    cmd.Parameters.Add(param);
                }
                if (TextBox4.Text != null)
                {
                    SqlParameter param = new SqlParameter("@TrangThai", TextBox4.Text);
                    cmd.Parameters.Add(param);
                }
                sqlCon.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                rpPhong.DataSource = rdr;
                rpPhong.DataBind();
            }
        }


        

    }
}



 