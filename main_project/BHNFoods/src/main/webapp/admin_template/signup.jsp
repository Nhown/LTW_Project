<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Đăng kí </title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/feather/feather.css">
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="vendors/typicons/typicons.css">
  <link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="vendors/select2/select2.min.css">
  <link rel="stylesheet" href="vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
  
  <link rel="stylesheet" href="css/vertical-layout-light/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
 <style>
  .container-scroller .main-panel .forms-sample .form-group .form-control{
   height: 38px;
   border: 1px solid #D0D0D0;
   font-size: 17px;
}
 </style>
</head>

<body>
  <div class="container-scroller">
    <!-- <img src="css/vertical-layout-light/hinh5.jpg" alt="" style="position: relative;"> -->

    <!-- partial -->
    <div class="container-fluid page-body-wrapper" style="position: absolute;">
      <div class="main-panel" style="    width: 100%;">
        <div class="content-wrapper">
        <div class="row">

          <div class="card" style=" margin:auto;">
            <div class="card-body">
              <p class="card-description">
               <a href="login.jsp" style="text-decoration: none ; color: rgb(170, 170, 170);"> <i class="fa-solid fa-chevron-left"></i>Quay lại</a>
              </p>
              <h4 class="card-title logoBHN">BHNFoods</h4>
              <p class="card-description login">
                Đăng ký
              </p>
              <form class="forms-sample">
                <div class="form-group">
                  <label for="exampleInputName1">Họ và tên</label>
                  <input type="text" class="form-control" id="exampleInputName1"
                    placeholder="Nhập đầy đủ họ tên">
                </div>
                <div class="form-group">
                  <label for="exampleInputName1">Địa chỉ Email</label>
                  <input type="email" class="form-control" id="exampleInputName1"
                    placeholder="Nhập Email">
                </div>
                <div class="form-group">
                  <label for="exampleInputName1">Số điện thoại</label>
                  <input type="number" class="form-control" id="exampleInputName1"
                    placeholder="Nhập số điện thoại">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword4">Tạo mật khẩu</label>
                  <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Nhập mật khẩu mới">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword4">Nhập lại mật khẩu</label>
                  <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Nhập lại mật khẩu">
                </div>
                <div class="form-group button_primary">
                  <button type="submit" class="btn btn-primary  button_primary_height me-2" >Tạo tài khoản</button>
                </div>
                <div class="form-group forgot_pass" style="padding-bottom:30px;">
                  <a href="../main.jsp" style="color:rgb(157, 157, 157) ;">Trang chủ</a>
                </div>
              </form>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>

  </div>

  <script src="vendors/js/vendor.bundle.base.js"></script>

  <script src="vendors/typeahead.js/typeahead.bundle.min.js"></script>
  <script src="vendors/select2/select2.min.js"></script>
  <script src="vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>

  <script src="js/file-upload.js"></script>
  <script src="js/typeahead.js"></script>
  <script src="js/select2.js"></script>

</body>

</html>