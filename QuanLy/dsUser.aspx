<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="dsUser.aspx.cs" Inherits="QuanLy.dsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Danh Sách Thông Báo</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table  width="100px" cellspacing="0">
                  <thead>
                    <tr>
                      <th width="20px">id</th>
                      <th>Họ Tên</th>
                      <th>Số Điện Thoại</th>
                      <th>Địa Chỉ</th>
                      <th><asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox></th>
                      <th> <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" /></th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th><asp:TextBox ID="txtid" runat="server"></asp:TextBox></th>
                      <th><asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox></th>
                      <th><asp:TextBox ID="txtSDT" runat="server"></asp:TextBox></th>
                      <th><asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox></th>
                      <th><asp:Button ID="Add" runat="server" Text="Thêm" OnClick="Add_Click" /></th>
                    </tr>
                  </tfoot>
                  <tbody>
                      <asp:Repeater ID="RepeaterThongBao" runat="server">
                          <ItemTemplate>
                              <tr>
                              <td><%#Eval("idNguoiDat") %></td>
                              <td><%#Eval("HoTen") %></td>
                              <td><%#Eval("SDT") %></td>
                              <td><%#Eval("DiaChi") %></td>
                              <td><a href="UpdateNguoiDat.aspx?id=<%#Eval("idNguoiDat") %>" >Update</a></td>
                              <td><a href="dsUser.aspx?id=<%#Eval("idNguoiDat") %>" >Delete</a></td>
                            </tr>
                          </ItemTemplate>
                      </asp:Repeater>
                  </tbody>
                </table>
              </div>
            </div>
          </div>  
</asp:Content>
