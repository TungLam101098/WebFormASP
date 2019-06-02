<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateNguoiDat.aspx.cs" Inherits="QuanLy.UpdateNguoiDat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>Họ Tên</p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <p>Số Điện Thoại</p>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <p>Địa Chỉ</p>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Update" runat="server" Text="Cập Nhật" OnClick="Update_Click" />
</asp:Content>
