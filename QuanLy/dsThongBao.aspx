<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="dsThongBao.aspx.cs" Inherits="QuanLy.dsThongBao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Danh Sách Thông Báo</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>stt<asp:ImageButton ID="sortAsc" runat="server" Text="sắp xếp" OnClick="sort_Click" ImageUrl="~/Assets/img/1.png" />
                          <asp:ImageButton ID="sort" runat="server" Text="sắp xếp tăng" OnClick="sortAsc_Click" ImageUrl="~/Assets/img/hinh1.png"  />
                      </th>
                      <th>Chi tiết</th>
                      <th><asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox></th>
                      <th> <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" /></th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>stt</th>
                      <th><asp:TextBox ID="txtChiThiet" runat="server"></asp:TextBox></th>
                      <th><asp:Button ID="Add" runat="server" Text="Thêm" OnClick="Add_Click" /></th>
                    </tr>
                  </tfoot>
                  <tbody>
                      <asp:Repeater ID="RepeaterThongBao" runat="server">
                          <ItemTemplate>
                              <tr>
                              <td><%#Eval("idThongBao") %></td>
                              <td><%#Eval("ChiTiet") %></td>
                              <td><a href="UpdateTB.aspx?id=<%#Eval("idThongBao") %>" >Update</a></td>
                              <td><a href="dsThongBao.aspx?id=<%#Eval("idThongBao") %>" >Delete</a></td>
                            </tr>
                          </ItemTemplate>
                      </asp:Repeater>
                  </tbody>
                </table>
              </div>
            </div>
          </div>  
</asp:Content>
