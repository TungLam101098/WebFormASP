<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="QuanLy.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
   
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
    <link href="/Assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="/Assets/css/sb-admin-2.min.css" rel="stylesheet">
    <script src="/Assets/vendor/jquery/jquery.min.js"></script>
  <script src="/Assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/Assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/Assets/js/sb-admin-2.min.js"></script>





    <script src="/Assets/vendor/jquery/jquery.min.js"></script>
  <script src="/Assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/Assets/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/Assets/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="/Assets/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/Assets/js/demo/chart-area-demo.js"></script>
  <script src="/Assets/js/demo/chart-pie-demo.js"></script>
</head>
<body>
    <div class="bg-gradient-primary">
        <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                      <p style="color:red">
                            <asp:Label ID="lblThongBao"  runat="server" Text=""></asp:Label>
                       </p>
                  </div>
                  <form class="user" runat="server" >
                    <div class="form-group">
                        <asp:TextBox ID="txtUserName" placeholder="Enter Email Address..." class="form-control form-control-user" runat="server" ></asp:TextBox>
                   
                    </div>
                    <div class="form-group">
                        <asp:TextBox type="password" ID="txtPassword" placeholder="Password" class="form-control form-control-user" runat="server"></asp:TextBox>
                     
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-user btn-block" OnClick="Button1_Click" Text="Login" />
                    
                  </form>
                  <hr>
                    <a href="index.html" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>
    </div>
</body>
</html>
