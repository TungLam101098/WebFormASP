<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="QuanLy.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="overlay"></div>
        <section class="top-part">
          <img controls autoplay loop>
            <img src="Assets/img/hinh.jpg" />
            
          </img>
        </section>
        
        <section class="cd-hero">

          <div class="cd-slider-nav">
              
            <nav>
              <span class="cd-marker item-1"></span>
              <ul>
                <li class="selected"><a href="Index.aspx"><div class="image-icon"><img src="Assets/img/home-icon.png"></div><h6>Trang Chủ</h6></a></li>
                <li><a href="#0"><div class="image-icon"><img src="Assets/img/featured-icon.png"></div><h6>Ds Phòng</h6></a></li>
                <li><a href="#0"><div class="image-icon"><img src="Assets/img/contact-icon.png"></div><h6>Lịch DK</h6></a></li>
                
              </ul>
            </nav> 
          </div> <!-- .cd-slider-nav -->

          <ul class="cd-hero-slider">

            <li class="selected">
              <div class="heading">
                <h1>QUẢN LÝ PHÒNG MÁY THỰC HÀNH</h1>
                <span>Chào mừng bạn quay lại trang Web</span>
              </div>
              <div class="cd-full-width first-slide">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content first-content">
                        <h4>Thông Báo Mới</h4>
                          <asp:Repeater ID="rpThongBao" runat="server">
                              <ItemTemplate>
                                  <p>
                                      <%# Eval("ChiTiet") %>
                                  </p>
                              </ItemTemplate>
                          </asp:Repeater>
                          <a href="login.aspx"><div class="image-icon"><img src="Assets/img/about-icon.png"></div><h6>Admin</h6></a>
                        <div class="primary-button">
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>

            <li>
              <div class="heading">
                <h1>Danh Sách Phòng Máy</h1>
                <span>Các phòng máy đạt chuẩn & bạn có thể đặt</span> 
              </div>
              <div class="cd-half-width second-slide">   
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content second-content">
                          <asp:Repeater ID="rpPhong" runat="server">
                              <ItemTemplate>
                                  <div class="row">
                                    <div class="col-md-7 left-image">
                                        <img src="<%# Eval("url")%>">
                                     </div>
                                  <div class="col-md-5">
                                    <div class="right-about-text">
                                 <h4><%#Eval("Ten") %></h4>
                                        <p>Số Lượng Máy</p>
                                    <p><%#Eval("SoLuong") %></p>
                                 <div class="primary-button">
                                <a href="DatPhong.aspx?idPhong=<%# Eval("idPhong") %>">Đặt Phòng</a>
                              </div>
                            </div>
                          </div>
                        </div>
                              </ItemTemplate>
                          </asp:Repeater>

                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>
            <li>
              <div class="heading">
                <h1>Xem Lịch đăng ký</h1>
                <span>Bạn cần có id đăng nhập mà chúng tôi đã cấp</span> 
              </div>
              <div class="cd-half-width fivth-slide">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content fivth-content">
                        <div class="row">
                          <div class="col-md-4">
                            <div class="left-info">
                              <p>Để tăng độ bảo mật chúng tôi cần id của bạn để thực hiện các yêu cầu khác
                              <br><br>
                              <em>Mọi thắc mắc liên hệ số điện thoại<br>0337806777</em>
                              </p>
                              <ul class="social-icons">
                                <i><a href="#"><i class="fa fa-facebook"></i></a></i>
                                <i><a href="#"><i class="fa fa-twitter"></i></a></i>
                                <i><a href="#"><i class="fa fa-linkedin"></i></a></i>
                                <i><a href="#"><i class="fa fa-rss"></i></a></i>
                                <i><a href="#"><i class="fa fa-behance"></i></a></i>
                              </ul>
                            </div>
                          </div>
                          <div class="col-md-8">
                            <div class="row">


                                <div class="card shadow mb-4" id="check" runat="server">
                                <div class="card-header py-3">
                                  <h6 class="m-0 font-weight-bold text-primary">Danh Sách Thông Báo</h6>
                                </div>
                                <div class="card-body">
                                  <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                      <thead>
                                        <tr>
                                          <th>Tên Phòng</th>
                                          <th>Ngày Đặt</th>
                                          <th><asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox></th>
                                          <th> <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" /></th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                          <asp:Repeater ID="rpLich" runat="server">
                                              <ItemTemplate>
                                                  <tr>
                                                  <td><%#Eval("Ten") %></td>
                                                  <td><%#Eval("NgayDat") %></td>
                                                  <td><a href="Index.aspx?id=<%#Eval("id") %>" >Delete</a></td>
                                                </tr>
                                              </ItemTemplate>
                                          </asp:Repeater>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              </div>  
                            <div runat="server" id="kiemtra">
                                <asp:Label ID="Label1" runat="server" Text="Mời Nhập id: "></asp:Label>
                                
                            <asp:TextBox ID="idUser" runat="server"></asp:TextBox>
                            <p>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Xác Nhận" />

                            </p>
                                <asp:Label ID="txtKiemTra" runat="server" Text=""></asp:Label>
                            </div>
                            
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              </div>
            </li>
          </ul> <!-- .cd-hero-slider -->
        </section> <!-- .cd-hero -->


        <footer>
          <p>Copyright &copy; 2017 Your Company 
                                
        	| Designed by <a href="#" target="_parent"><em>Nguyễn Tùng Lâm</em></a></p>
        </footer>


</asp:Content>


