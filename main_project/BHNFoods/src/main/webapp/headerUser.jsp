<!-- <%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %> -->

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
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="vendors/feather/feather.css">
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/typicons/typicons.css">
    <link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

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
                        <span class="text">Giao tr??? h??ng trong 3-5 ng??y l??m vi???c<br>v?? tr??? h??ng mi???n ph??</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="ListProduct.jsp">BNHFoods</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
            aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> S???n Ph???m
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="index.jsp" class="nav-link">Trang ch???</a></li>
                <li class="nav-item active "><a href="ListProduct.jsp" class="nav-link">S???n ph???m</a></li>
                <li class="nav-item cta cta-colored find"><input type="text" name="" id="findicon"><a href="cart.jsp"
                        class="nav-link"><span class="fa-solid fa-magnifying-glass"></span></a></li>
                <li class="nav-item cta cta-colored"><a href="cart.jsp" class="nav-link"><span
                            class="fa-solid fa-cart-shopping"></span>[0]</a></li>
                <li class="nav-item cta cta-colored hover_user">
                    <span href="#" class="nav-link" style="cursor: pointer;">Nguy???n Th??? Xu??n
                        Hoa</span>
                    <div class="list_menu">
                        <div class="dr"><a href="account.jsp">T??i kho???n</a></div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/loveProduct?idUser=user1">S???n ph???m y??u th??ch</a></div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/manageOrder?idUser=user1">Qu???n l?? ????n h??ng</a> </div>
                        <div class="dr"> <a href="http://localhost:8080/BHNFoods/history?idUser=user1">L???ch s??? ????n h??ng</a></div>
                        <div class="dr"> <a href="index.jsp">????ng xu???t</a></div>
                    </div>
                </li>
<%--                <li class="nav-item cta cta-colored active dropdown d-none d-lg-block user-dropdown">--%>
<%--                    <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                      <span style="line-height: 1.8" class="fa-solid fa-user"></span> </a>--%>
<%--                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">--%>
<%--                        <div class="dropdown-header text-center">--%>
<%--                            <p class="mb-1 mt-3 font-weight-semibold">V?? Kh??i Nh??n</p>--%>
<%--                            <p class="fw-light text-muted mb-0">Nhonw@gmail.com</p>--%>
<%--                        </div>--%>
<%--                        <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-account-outline text-primary me-2"></i> Trang c?? nh??n</a>--%>
<%--                        <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-message-text-outline text-primary me-2"></i>--%>
<%--                            Tin nh???n</a>--%>
<%--                        <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-power text-primary me-2"></i>????ng xu???t</a>--%>
<%--                    </div>--%>
<%--                </li>--%>

            </ul>

        </div>
    </div>
</nav>
<!-- END nav -->