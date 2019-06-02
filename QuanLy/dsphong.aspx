<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="dsphong.aspx.cs" Inherits="QuanLy.dsphong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="rpPhong" runat="server" 
                                  AutoGenerateColumns="false" 
                                  ShowFooter="true" 
                                  DataKeyNames="idPhong"
                                  ShowHeaderWhenEmpty="true"
                                  OnRowCommand="gvPhong_RowCommand" 
                                  OnRowEditing="gvPhong_RowEditing" 
                                  OnRowCancelingEdit="gvPhong_RowCancelingEdit"
                                  OnRowUpdating="gvPhong_RowUpdating"
                                  OnRowDeleting="gvPhong_RowDeleting"
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="172px" Width="731px">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                  <Columns>
                                    <asp:TemplateField HeaderText="Tên Phòng">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("Ten") %>' runat="server" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtTen" Text='<%# Eval("Ten") %>' runat="server" />
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtTenFooter" runat="server" />
                                        
                                    </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Đường Dẫn Hình">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("url") %>' runat="server" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txturl" Text='<%# Eval("url") %>' runat="server" />
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txturlFooter" runat="server" />
                                       
                                    </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Số Lượng Máy">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("SoLuong") %>' runat="server" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtSoLuong" Text='<%# Eval("SoLuong") %>' runat="server" />
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtSoLuongFooter" runat="server" />
                                    
                                    </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Trạng Thái">
                                    <ItemTemplate>
                                        <asp:Label Text='<%# Eval("TrangThai") %>' runat="server" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtTrangThai" Text='<%# Eval("TrangThai") %>' runat="server" />
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtTrangThaiFooter" runat="server" />
                                        
                                    </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ImageUrl="Assets/Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                                    <asp:ImageButton ImageUrl="Assets/Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:ImageButton ImageUrl="Assets/Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                                    <asp:ImageButton ImageUrl="Assets/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:ImageButton ImageUrl="Assets/Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                                    
                                </FooterTemplate>
                            </asp:TemplateField>
                            </Columns>

                            </asp:GridView>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click1" />
</asp:Content>
