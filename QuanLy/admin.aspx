<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="QuanLy.admin" %>
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
                      <th>Tổng Thông Báo</th>
                      <th>Tổng Phòng</th>
                      <th>Tổng Người Đặt</th>
                      <th>Tổng Chi Tiết</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th><a href="dsThongBao.aspx">Chi Tiết</a></th>
                      <th><a href="dsphong.aspx">Chi Tiết</a></th>
                       <th><a href="dsUser.aspx">Chi Tiết</a></th>
                        <th><a href="dsdangky.aspx">Chi Tiết</a></th>
                    </tr>
                  </tfoot>
                  <tbody>
                       <tr>
                       <td><asp:Label ID="txtThongBao" runat="server" Text="Label"></asp:Label></td> 
                        <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td> 
                        <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td> 
                        <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td> 
                       </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>  
</asp:Content>
