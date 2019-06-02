<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="dsdangky.aspx.cs" Inherits="QuanLy.dsdangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Danh Sách Thông Báo</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100px" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID Phòng</th>
                      <th>Ngày Đặt</th>
                      <th>ID Người Đặt</th>
                      <th><asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox></th>
                      <th> <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" /></th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th><asp:TextBox ID="txtidPhong" runat="server"></asp:TextBox></th>
                      <th><asp:TextBox ID="txtNgay" runat="server"></asp:TextBox></th>
                      <th><asp:TextBox ID="txtdNguoiDat" runat="server"></asp:TextBox></th>
                      <th><asp:Button ID="Add" runat="server" Text="Thêm" OnClick="Add_Click" /></th>
                    </tr>
                  </tfoot>
                  <tbody>
                      <asp:Repeater ID="RepeaterThongBao" runat="server">
                          <ItemTemplate>
                              <tr>
                              <td><%#Eval("idPhong") %></td>
                              <td><%#Eval("NgayDat") %></td>
                              <td><%#Eval("idNguoiDat") %></td>
                              <td><a href="UpdateNguoiDat.aspx?id=<%#Eval("id") %>" >Update</a></td>
                              <td><a href="dsdangky.aspx?id=<%#Eval("id") %>" >Delete</a></td>
                            </tr>
                          </ItemTemplate>
                      </asp:Repeater>
                  </tbody>
                </table>
              </div>
            </div>
          </div>  
</asp:Content>
