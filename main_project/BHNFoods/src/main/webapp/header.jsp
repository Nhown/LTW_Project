<%@ page import="vn.edu.hcmuaf.fit.beans.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.User" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ProductService" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<style>
    .row .form-group .form-control {
        font-size: 16px;
    }
    .align-items-end .row_input .col_addprod {
        flex: auto;
        margin-top: 8px;
        position: relative;
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
    }
    .edit_formUser {
        height: 500%;
        width: 100%;
        background: rgba(0, 0, 0, 0.73);
        position: absolute;
        z-index: 1500;
        top: 0;
        display: none;
    }
    .edit_formUser .ftco-section {
        padding: 3rem;
    }

    .edit_formUser .cen-div {
        margin: auto;
        background: #f1f1f1;
        width: 50%;
        margin-top:5%;
        border-radius: 5px;
    }

    .btn_huy_update input {
        border-radius: 5px;
        background: #7fad39;
        border: none;
        padding: 4px 20px;
        color: white;
    }

    .btn_huy_update input:last-child {
        margin-left: 20px;
    }
    .edit_formUser textarea {
        min-height: 8rem;
    }
</style>
<head>
    <title>BHNFoods</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="cssHeaderFooter/styleHAndF.css">
</head>
<%User user= (User) session.getAttribute("auth");
    request.setAttribute("user", user);
    String idU = user != null? user.getIdUser() : "null";
    int sumCart = user == null ? 0 : (int) ProductService.getInstance().sumAmount(ProductService.getInstance().getListCart(idU));
%>

<div class="py-1 bg-primary">
    <div class="container">
        <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
            <div class="col-lg-12 d-block">
                <div class="row d-flex">
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span
                                class="fa-solid fa-phone"></span></div>
                        <span class="text">+0779807028</span>
                    </div>
                    <div class="col-md pr-4 d-flex topper align-items-center" style="text-transform: none">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span
                                class="fa-sharp fa-solid fa-paper-plane"></span></div>
                        <span class="text">BHNFoods@gmail.com</span>
                    </div>
                    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                        <span class="text">Giao trả hàng trong 3-5 ngày làm việc<br>và trả hàng miễn phí</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="http://localhost:8080/BHNFoods/index?idUser=<%=idU%>">BHNFoods</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Sản Phẩm
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="http://localhost:8080/BHNFoods/index?idUser=<%=idU%>" class="nav-link">Trang chủ</a></li>
                <li class="nav-item active"><a href="http://localhost:8080/BHNFoods/ListProduct?kind=0&page=1&idUser=<%=idU%>" class="nav-link">Sản
                    phẩm</a></li>
                <li class="nav-item active"><a href="http://localhost:8080/BHNFoods/discount.jsp" class="nav-link">Mã giảm giá</a></li>
                <li class="nav-item cta cta-colored find">
                    <form action="/BHNFoods/Search"method="post" style="display: flex"><input value="<%=request.getParameter("searchPR")!=null?request.getParameter("searchPR"):""%>" type="text" class="search-input" name="searchPR" id="findicon"
                                                                                              placeholder="Tìm kiếm"> <button type="submit" class="fa-solid fa-magnifying-glass" style="background: none;border: none;"></button></form></li>
                <li id="totalCart" class="nav-item cta cta-colored amountInCart">
                    <a href="http://localhost:8080/BHNFoods/Cart?idUser=<%=idU%>" class="nav-link">
                        <span class="fa-solid fa-cart-shopping"></span>[<%=sumCart%>]</a>
                </li>

                <%
                    if(user == null){
                %>
                <li class="nav-item cta cta-colored">
                    <a href="login.jsp" class="nav-link"><span
                            style="line-height: 1.8" class="fa-solid fa-user"></span>
                    </a>
                </li>
                <%}
                else {
                %>
                <li class="nav-item cta cta-colored hover_user">
                    <span href="#" class="nav-link" style="cursor: pointer;"><%=user.getNameUser()%></span>
                    <div class="list_menu">
                        <div class="dr"><a href="http://localhost:8080/BHNFoods/account?idUser=<%=user.getIdUser()%>">Tài khoản</a></div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/loveProduct?idUser=<%=user.getIdUser()%>">Sản phẩm yêu thích</a></div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/manageOrder?idUser=<%=user.getIdUser()%>">Quản lý đơn hàng</a> </div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/history?idUser=<%=user.getIdUser()%>">Lịch sử đơn hàng</a></div>
                        <div class="dr"> <a onclick="contact()" href="#">Liên hệ</a></div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/logOut">Đăng xuất</a></div>
                    </div>
                </li>
                <%}%>
            </ul>

        </div>
    </div>
</nav>
<script>
    function logOut() {
        $.ajax({
            url: "/BHNFoods/logOut",
            type: 'post',

            success: function (data) {
                const content = document.getElementById('totalCart');
                content.innerHTML = data;
            },
            error: function () {
            }
        });
    }
</script>
<!-- END nav -->

<div class="edit_formUser">
    <div class="container" style="background:none;">
        <div class="col-xl-7 ftco-animate cen-div  row ftco-section justify-content-center">
            <form action="" class="billing-form" style="margin-top: 2%;">
                <h3 class="mb-4 billing-heading">LIÊN HỆ</h3>
                <div class="row align-items-end" style="font-size: 16px;">
                    <div class="col-md-12 col_addprod">
                        <div class="form-group">
                            <h5>Thông tin cửa hàng</h5>
                            <p>Địa chỉ: 203 Hòa Bình, Quận Bình Thạnh, thành phố Hồ Chí Minh.</p>
                            <p>Số điện thoại: 0779807028</p>
                            <p>Email: BHNFoods@gmail.com</p>
                        </div>
                    </div>
                    <div class=" col-md-12">
                        <div class="form-group">
                            <label>Liên hệ</label>
                            <textarea name="content" type="text"
                                      class="form-control"
                                      placeholder="Nội dung (xin quý khách mô tả chi tiết)"
                                      value=""> </textarea>
                        </div>
                    </div>
                    <div class="col-md-12 d-flex  btn_huy_update" style="justify-content: end;">
                        <input onclick="huy()" type="button" value="Hủy">
                        <input type="submit" value="Gửi">
                    </div>
                </div>
            </form>

        </div>
    </div>

</div>
<script>
    function contact() {
        $(".edit_formUser").css("display", "block");
    }

    function huy() {
        $(".edit_formUser").css("display", "none");
    }

</script>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous"></script>