<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DatPhong.aspx.cs" Inherits="QuanLy.DatPhong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 509px;
        }
        .auto-style2 {
            width: 448px;
        }
        .auto-style3 {
            left: 0;
            top: 62px;
        }
        .a{
            color:#ffbb05;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="overlay"></div>
        <section class="top-part">
          <img controls autoplay loop class="auto-style3">
            <img src="Assets/img/hinh.jpg" />
            
          </img>
        </section>
    <section class="cd-hero">
        <div class="cd-slider-nav">
            <nav>
              <span class="cd-marker item-1"></span>
              <ul>
                <li class="selected"><a href="Index.aspx"><div class="image-icon"><img src="Assets/img/home-icon.png"></div><h6>Trang Chủ</h6></a></li>
              </ul>
            </nav> 
          </div>



        <div class="heading">
                <h1>Đăng Kí Đặt Phòng</h1>
                <span>Bạn có thể đặt bất cứ lúc nào</span> 
              </div>
              <div class="cd-half-width fivth-slide">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="content fivth-content">
                        <div class="row">
                          <div class="col-md-4">
                            <div class="left-info">
                              <p>Chúng tôi luôn cung cấp những phòng học thực hành máy tính tốt nhất Việt Nam. Uy tín, chất lượng được đặt lên hàng đầu
                              <br><br>
                              <em>419/02 Tôn Đức Thắng<br>Chúng tôi luôn chào đón bạn</em>
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
        <table class="nav-justified">
            <tr>
            <td class="auto-style1">
                <p>Nhập Id Của Bạn: </p>
                <asp:Label id="txtKiemTra" runat="server"  ></asp:Label>
                <asp:TextBox ID="txtCheck" runat="server"></asp:TextBox>
                
            </td>
            <td class="auto-style2"><asp:Button ID="Check" OnClick="Check_Click" runat="server" Text="Kiểm Tra" /></td>
                
            <td>&nbsp;</td>
        </tr>
        </table>
       <div runat="server" id="theDiv">
           <h3 class="a">Điền Đầy Đủ Thông Tin</h3>
            <table class="nav-justified" >
        
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="txtNgay" runat="server" Width="225px"></asp:TextBox>



                
                <asp:Calendar ID="Lich" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>

                <td class="auto-style2"><asp:ImageButton ID="LayLich" runat="server" ImageUrl="~/Assets/img/lich.png" OnClick="ImageButton1_Click" /></td>
                <td>&nbsp;</td>


                
        </tr>

        <tr>
            <td class="auto-style1">
                
                
                <asp:DropDownList ID="rpGioDat" runat="server">
                    <asp:ListItem Text="-08 AM-" ></asp:ListItem>
                    <asp:ListItem Text="-09 AM-" ></asp:ListItem>
                    <asp:ListItem Text="-10 AM-" ></asp:ListItem>
                    <asp:ListItem Text="-11 AM-" ></asp:ListItem>
                    <asp:ListItem Text="-12 AM-" ></asp:ListItem>
                    <asp:ListItem Text="-01 PM-" ></asp:ListItem>
                    <asp:ListItem Text="-02 PM-" ></asp:ListItem>
                    <asp:ListItem Text="-03 PM-" ></asp:ListItem>
                    <asp:ListItem Text="-04 PM-"></asp:ListItem>
                </asp:DropDownList>
                To
                <asp:DropDownList ID="rpGioTra" runat="server">
                    <asp:ListItem Text="09 AM" ></asp:ListItem>
                    <asp:ListItem Text="10 AM" ></asp:ListItem>
                    <asp:ListItem Text="11 AM" ></asp:ListItem>
                    <asp:ListItem Text="12 AM" ></asp:ListItem>
                    <asp:ListItem Text="01 PM" ></asp:ListItem>
                    <asp:ListItem Text="02 PM" ></asp:ListItem>
                    <asp:ListItem Text="03 PM" ></asp:ListItem>
                    <asp:ListItem Text="04 PM" ></asp:ListItem>
                    <asp:ListItem Text="05 PM" ></asp:ListItem>
                </asp:DropDownList>
                
            </td>
            <td class="auto-style2">Ngày Đặt &amp; Trả</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="DangKi" runat="server" Text="Đăng Kí" OnClick="DangKi_Click" />
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbtc" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="lbloi" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>                  
                </div>
              





    </section>

    






    

</asp:Content>
