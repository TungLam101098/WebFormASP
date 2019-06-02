<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateTB.aspx.cs" Inherits="QuanLy.UpdateTB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Chi Tiết</p>
    <asp:TextBox ID="txtThongBao" runat="server"></asp:TextBox>
    <asp:Button ID="Update" runat="server" Text="Cập Nhật" OnClick="Update_Click" />
</asp:Content>
