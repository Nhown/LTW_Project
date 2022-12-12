<%@ page import="vn.edu.hcmuaf.fit.beans.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.User" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
        <a class="navbar-brand" href="http://localhost:8080/BHNFoods/index?idUser=null">BHNFoods</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Sản Phẩm
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="http://localhost:8080/BHNFoods/index?idUser=user1" class="nav-link">Trang chủ</a></li>
                <li class="nav-item active "><a href="http://localhost:8080/BHNFoods/ListProduct?kind=0&page=1&idUser=user1" class="nav-link">Sản
                    phẩm</a></li>
                <li class="nav-item cta cta-colored find">
                    <form action="/BHNFoods/Search"method="post" style="display: flex"><input value="<%=request.getParameter("searchPR")!=null?request.getParameter("searchPR"):""%>" type="text" class="search-input" name="searchPR" id="findicon"
                                           placeholder="Tìm kiếm"> <button type="submit" class="fa-solid fa-magnifying-glass" style="background: none;border: none;"></button></form></li>
                <% List<Cart> l = (List<Cart>) request.getAttribute("listCart");
                    int result = 0;
                    for (Cart c : l) {
                        result += c.getAmount();
                    }%>
                <li class="nav-item cta cta-colored"><a href="http://localhost:8080/BHNFoods/Cart?idUser=null"
                                                        class="nav-link"><span
                        class="fa-solid fa-cart-shopping"></span>[<%=result%>]</a></li>

                <%
                    User user= (User) session.getAttribute("auth");
                    request.setAttribute("user", user);
                    System.out.println(user == null);
                    System.out.println(request.getAttribute("idUser") == null);
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
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/managerOrder?idUser=<%=user.getIdUser()%>">Quản lý đơn hàng</a> </div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/history?idUser=<%=user.getIdUser()%>">Lịch sử đơn hàng</a></div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/index?idUser=null">Đăng xuất</a></div>
                    </div>
                </li>
                <%}%>
            </ul>

        </div>
    </div>
</nav>
<!-- END nav -->


