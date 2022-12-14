<%@ page import="vn.edu.hcmuaf.fit.beans.User" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Orders" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>BHNFoods Admin </title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="admin_template/vendors/feather/feather.css">
    <link rel="stylesheet" href="admin_template/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="admin_template/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="admin_template/vendors/typicons/typicons.css">
    <link rel="stylesheet" href="admin_template/vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="admin_template/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="body_design/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="body_design/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="body_design/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="body_design/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="body_design/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="body_design/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="body_design/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="body_design/css/style.css" type="text/css">
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="admin_template/js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="admin_template/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

</head>
<style>
    .shoping-cart .container .row {
        border: 2px solid rgb(168, 168, 168);
        padding-top: 20px;
        margin: 20px 0;
    }

    .shoping-cart .container::before {
        content: "L???ch s??? giao d???ch";
        font-size: 20px;
        font-weight: bold;
    }
    .card-body a .btn_add_delete {
        width: 60px;
        height: 30px;
        border: none;
        color: #1f1f1fbf;
        font-weight: 600 !important;
        border-radius: 5px;

    }

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


    .input_addpr {
        height: calc(1.5em + .75rem);
    }

    .col-xl-7 .row .col-md-12 .edit_img {
        width: 100%;
        height: 100px;
        border: gray;
        border-style: dashed;
        margin: 0 20px;
        padding: 0;

    }

    .col-xl-7 .row .col-md-12 .edit_img .btnX_img {
        padding: 0 4px;

    }

    .padd_right {
        padding-right: 50px;
    }

    .edit_formUser {
        height: 500%;
        width: 100%;
        background: rgba(0, 0, 0, 0.73);
        position: absolute;
        z-index: 1500;
        top: 0;
    }

    .edit_formUser .cen-div {
        margin: auto;
        background: #f1f1f1;
        width: 50%;
        margin-top: 5%;
        border-radius: 5px;
    }

    .edit_formUser .btn_huy_update button {
        background: none;
        border: none;
    }

    .btn_huy_update {
        margin-bottom: 20px;
        justify-content: end;
    }

    .btn_huy_update input {
        border-radius: 5px;
        background: #7fad39;
        border: none;
        padding: 8px 20px;
        color: white;
    }

    .btn_huy_update input:last-child {
        margin-left: 20px;
    }

    .btn_edit button {
        border: none;
        border-radius: 5px;
        padding: 5px 10px;
    }
</style>

<body>
<!-- partial:partials/_navbar.html -->
<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
        <%--      <div class="me-3">--%>
        <%--        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">--%>
        <%--          <span class="icon-menu"></span>--%>
        <%--        </button>--%>
        <%--      </div>--%>
        <div>
            <a class="navbar-brand brand-logo" href="index.html">
                BHNFoods
            </a>
        </div>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-top colorheader ">
        <ul class="navbar-nav ms-auto">
            <li class="nav-item dropdown d-none d-lg-block">
                <a class="nav-link dropdown-bordered dropdown-toggle dropdown-toggle-split" id="messageDropdown"
                   href="#"
                   data-bs-toggle="dropdown" aria-expanded="false"> L???c theo </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
                     aria-labelledby="messageDropdown">

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item preview-item" href="http://localhost:8080/BHNFoods/AdminManageUser">
                        <div class="preview-item-content flex-grow py-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">Ng?????i d??ng </p>
                            <p class="fw-light small-text mb-0">Trang chi ti???t ng?????i d??ng</p>
                        </div>
                    </a>
                    <a class="dropdown-item preview-item" href="http://localhost:8080/BHNFoods/AdminMain">
                        <div class="preview-item-content flex-grow py-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">Admin</p>
                            <p class="fw-light small-text mb-0">Trang chi ti???t Admin</p>
                        </div>
                    </a>
                    <a class="dropdown-item preview-item"
                       href="http://localhost:8080/BHNFoods/AdminManagePr?kind=0&page=1">
                        <div class="preview-item-content flex-grow py-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">S???n Ph???m </p>
                            <p class="fw-light small-text mb-0">Trang chi ti???t qu???n l?? s???n ph???m</p>
                        </div>
                    </a>
                    <a class="dropdown-item preview-item" href="#">
                        <div class="preview-item-content flex-grow py-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">????n h??ng </p>
                            <p class="fw-light small-text mb-0">Trang qu???n l?? ????n h??ng</p>
                        </div>
                    </a>
                </div>
            </li>
            <li class="nav-item d-none d-lg-block">
                <div id="datepicker-popup" class="input-group date datepicker navbar-date-picker">
            <span class="input-group-addon input-group-prepend border-right">
              <span class="icon-calendar input-group-text calendar-icon"></span>
            </span>
                    <input type="text" class="form-control">
                </div>
            </li>
            <li class="nav-item">
                <form class="search-form" action="/BHNFoods/SearchUser" method="post">
                    <i class="icon-search"></i>
                    <input type="search" class="form-control" name="searchUser" placeholder="Search Here"
                           title="Search here">
                </form>
            </li>
            <%--            <li class="nav-item dropdown">--%>
            <%--                <a class="nav-link count-indicator" id="countDropdown" href="#" data-bs-toggle="dropdown"--%>
            <%--                   aria-expanded="false">--%>
            <%--                    <i class="icon-mail icon-lg"></i>--%>
            <%--                </a>--%>
            <%--                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"--%>
            <%--                     aria-labelledby="countDropdown">--%>
            <%--                    <a class="dropdown-item py-3">--%>
            <%--                        <p class="mb-0 font-weight-medium float-left">B???n c?? 7 th??ng b??o </p>--%>
            <%--                        <span class="badge badge-pill badge-primary float-right">Xem t???t c???</span>--%>
            <%--                    </a>--%>
            <%--                    <div class="dropdown-divider"></div>--%>
            <%--                    <a class="dropdown-item preview-item">--%>
            <%--                        <div class="preview-thumbnail">--%>
            <%--                            <img src="https://assets.materialup.com/uploads/378d2c84-810d-477a-802b-d495646b9c4e/preview.jpg"--%>
            <%--                                 alt="image" class="img-sm profile-pic"--%>
            <%--                                 style=" width: 70px;height: 50px;border-radius: 100%;">--%>
            <%--                        </div>--%>
            <%--                        <div class="preview-item-content flex-grow py-2">--%>
            <%--                            <p class="preview-subject ellipsis font-weight-medium text-dark">V?? Kh??i Nh??n </p>--%>
            <%--                            <p class="fw-light small-text mb-0"> 15-12-2022 15:01 </p>--%>
            <%--                        </div>--%>
            <%--                    </a>--%>
            <%--                    <a class="dropdown-item preview-item">--%>
            <%--                        <div class="preview-thumbnail">--%>
            <%--                            <img src="https://assets.materialup.com/uploads/378d2c84-810d-477a-802b-d495646b9c4e/preview.jpg"--%>
            <%--                                 style=" width: 70px;height: 50px;border-radius: 100%;"--%>
            <%--                                 alt="image" class="img-sm profile-pic">--%>
            <%--                        </div>--%>
            <%--                        <div class="preview-item-content flex-grow py-2">--%>
            <%--                            <p class="preview-subject ellipsis font-weight-medium text-dark">Ph???m Gia B???o </p>--%>
            <%--                            <p class="fw-light small-text mb-0"> 15-12-2022 15:01 </p>--%>
            <%--                        </div>--%>
            <%--                    </a>--%>
            <%--                    <a class="dropdown-item preview-item">--%>
            <%--                        <div class="preview-thumbnail">--%>
            <%--                            <img src="https://assets.materialup.com/uploads/378d2c84-810d-477a-802b-d495646b9c4e/preview.jpg"--%>
            <%--                                 style=" width: 70px;height: 50px;border-radius: 100%;"--%>
            <%--                                 alt="image" class="img-sm profile-pic">--%>
            <%--                        </div>--%>
            <%--                        <div class="preview-item-content flex-grow py-2">--%>
            <%--                            <p class="preview-subject ellipsis font-weight-medium text-dark">Nguy???n Th??? Xu??n Hoa </p>--%>
            <%--                            <p class="fw-light small-text mb-0"> 15-12-2022 15:01 </p>--%>
            <%--                        </div>--%>
            <%--                    </a>--%>
            <%--                </div>--%>
            <%--            </li>--%>
            <%--            <%--%>
            <%--                User user = (User) session.getAttribute("auth");--%>
            <%--                if (user != null) {%>--%>
            <%--            <li class="nav-item dropdown d-none d-lg-block user-dropdown">--%>
            <%--                <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">--%>
            <%--                    <img class="img-xs rounded-circle" src="ImageproductNew/background/images.png" alt="Profile image">--%>
            <%--                </a>--%>
            <%--                <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">--%>
            <%--                    <div class="dropdown-header text-center">--%>
            <%--                        &lt;%&ndash;              <img class="img-md rounded-circle" src="images/faces/face8.jpg" alt="Profile image">&ndash;%&gt;--%>
            <%--                        <p class="mb-1 mt-3 font-weight-semibold"><%=user.getNameUser()%>--%>
            <%--                        </p>--%>
            <%--                        <p class="fw-light text-muted mb-0"><%=user.getEmail()%>--%>
            <%--                        </p>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </li>--%>
            <%--            <%}%>--%>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                data-bs-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
        </button>
    </div>
</nav>
<!-- partial -->
<div class="container-fluid page-body-wrapper">
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="nav-item">
            <a href="http://localhost:8080/BHNFoods/AdminMain" class="nav-item-link">
                <i style="margin-right: 5px;" class="menu-icon mdi mdi-home"></i>
                <span>Trang ch???</span>
            </a>
        </div>
        <div class="nav-item">
            <a href="http://localhost:8080/BHNFoods/AdminManageUser" class="nav-item-link">
                <i style= "margin-right:5px;"  class="menu-icon mdi mdi-account-circle"> </i>
                <span>Qu???n l?? ng?????i d??ng</span>
            </a>
        </div>
        <div class="nav-item">
            <a href="http://localhost:8080/BHNFoods/AdminManagePr?kind=0&page=1" class="nav-item-link">
                <i style="margin-right: 5px;" class="menu-icon mdi mdi-view-module"></i>
                <span>Qu???n l?? s???n ph???m</span>
            </a>
        </div>
        <div class="nav-item">
            <a href="http://localhost:8080/BHNFoods/ListOrdersAdmin" class="nav-item-link">
                <i style="margin-right: 5px;" class="fa-solid fa-arrow-down-wide-short"></i>
                <span>Qu???n l?? ????n h??ng</span>
            </a>
        </div>
        <div class="nav-item">
            <a href="http://localhost:8080/BHNFoods/Login" class="nav-item-link">
                <i style="margin-right: 5px;" class="fa-solid fa-arrow-right-from-bracket"></i>
                <span>????ng xu???t</span>
            </a>
        </div>
    </nav>
    <!-- partial -->
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <form action="/BHNFoods/UpdateConditionOrders" method="post" class="shoping-cart spad">
                        <div class="container">
                            <%
                                Map<String, List<Orders>> mapOrder = (Map<String, List<Orders>>) request.getAttribute("mapAdminOrder");
                                Map<String, Integer> sumOrder = (Map<String, Integer>) request.getAttribute("sumAdminOrder");
                                for (Map.Entry<String, List<Orders>> entry : mapOrder.entrySet()) {
                                    int condition = 0;
                                    String cursor = "pointer";
                                    double opacity = 1.0;
                                    String name= "";
                                    String phone="";
                                    String address="";
                                    String note="";
                                    String iduser="";

                            %>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="shoping__cart__table">
                                        <table>
                                            <thead>
                                            <tr>
                                                <th class="">S???n Ph???m</th>
                                                <th></th>
                                                <th>Gi??</th>
                                                <th>S??? l?????ng</th>
                                                <th>T???ng</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%
                                                DecimalFormat dec = new DecimalFormat("#,###");
                                                for (Orders o : mapOrder.get(entry.getKey())) {
                                                    condition = o.getCondition();
                                                    name=o.getName();
                                                    phone= o.getPhone();
                                                    address= o.getAddress();
                                                    note=o.getNote();
                                                    iduser= o.getIduser();

                                            %>
                                            <tr>
                                                <td class="shoping__cart__quantity">
                                                    <img src="<%=o.getUrl()%>" alt="" style="width: 100px;height: auto">

                                                </td>
                                                <td class="shoping__cart__item">
                                                    <h5><%=o.getNamePr()%></h5>
                                                    <input name="idOrders" style="display: none" value="<%=o.getIdOrders()%>">
                                                </td>
                                                <td class="shoping__cart__price">
                                                    <%=dec.format(o.getPriceHere()).replace(',','.')%>??
                                                </td>
                                                <td class="shoping__cart__quantity">
                                                    <span><%=o.getAmount()%></span>
                                                </td>
                                                <td class="shoping__cart__total">
                                                    <%=dec.format(o.getPriceHere()*o.getAmount()).replace(',','.')%>??
                                                </td>
                                            </tr>
                                            <%}%>
                                            </tbody>
                                        </table>
                                        <div class="d-flex justify-content-between pt-5 align-items-center">
                                            <div style="width: 50%">
                                                <h5>T??n v?? S??T Kh??ch h??ng: <span style="color: red;"> <%=name%> <%=phone%></span></h5>
                                                <h5>?????a ch??? ????n h??ng: <span style="color: red;"><%=address%></span></h5>
                                                <h5>Ghi ch??: <span style="color: red;"><%=note%></span></h5>
                                                <h5 style="display: none">Iduser: <span style=" "><%=iduser%></span></h5>
                                            </div>
                                            <div style="display:grid;">
                                                <button name="condition"  value="1" type="submit" onclick="changeColor()" class="uCanClick changeColor" style="background:#7fad39; margin: 3px 0px; color: white; border: none;">??ang giao h??ng</button>
                                                <button name="condition"  value="2"  type="submit"  class="uCanClick " style="background:#7fad39; margin: 3px 0px; color: white; border: none;">Th??nh c??ng</button>
                                                <button name="condition"  value="3" type="submit"  class="uCanClick " style="background:#7fad39; margin: 3px 0px; color: white; border: none;">Kh??ng th??nh c??ng</button>
                                            </div>
                                            <div>
                                                <h4>T???ng ????n h??ng: <span ><%=dec.format(sumOrder.get(entry.getKey())).replace(',','.')%>??</span></h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%}%>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function  changeColor(){
        $('.changeColor').css("background", "gray")

    }
    // checkbox chon tat ca
    function checkAll(elementInput) {
        if (elementInput.checked) { // check select status
            $(':checkbox').each(function () { //loop through each checkbox
                this.checked = true;  //select all checkboxes with class "checkbox1"
            });

        } else {
            $(':checkbox').each(function () { //loop through each checkbox
                this.checked = false; //deselect all checkboxes with class "checkbox1"
            });
        }
    }
</script>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous"></script>
<script src="admin_template/vendors/js/vendor.bundle.base.js"></script>
<script src="admin_template/vendors/chart.js/Chart.min.js"></script>
<script src="admin_template/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="admin_template/vendors/progressbar.js/progressbar.min.js"></script>
<script src="admin_template/js/off-canvas.js"></script>
<script src="admin_template/js/hoverable-collapse.js"></script>
<script src="admin_template/js/template.js"></script>
<script src="admin_template/js/settings.js"></script>
<script src="admin_template/js/todolist.js"></script>

<script src="admin_template/js/jquery.cookie.js" type="text/javascript"></script>
<script src="admin_template/js/dashboard.js"></script>
<script src="admin_template/js/Chart.roundedBarCharts.js"></script>
<!-- End custom js for this page-->

</body>

</html>