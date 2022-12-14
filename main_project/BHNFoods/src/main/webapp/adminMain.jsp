<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.SingleProduct" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.controller.AdminMain" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.User" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Contact" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>BHNFoods Admin </title>
    <link rel="stylesheet" href="admin_template/vendors/feather/feather.css">
    <link rel="stylesheet" href="admin_template/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="admin_template/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="admin_template/vendors/typicons/typicons.css">
    <link rel="stylesheet" href="admin_template/vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="admin_template/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="admin_template/js/select.dataTables.min.css">
    <link rel="stylesheet" href="admin_template/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

</head>
<style>
    #viewcontent .edit_formUser {
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
        margin-top: 2%;
        border-radius: 5px;
    }

    .edit_formUser .padding10px {
        padding: 10px 0;
    }

    .edit_formUser .cen-div form .form-group {
        margin-bottom: 1.1rem;
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
</style>

<body>
<!-- partial:partials/_navbar.html -->
<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
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
                <form class="search-form" action="#">
                    <i class="icon-search"></i>
                    <input type="search" class="form-control" placeholder="Search Here" title="Search here">
                </form>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link count-indicator" id="countDropdown" href="" data-bs-toggle="dropdown"
                   aria-expanded="false">
                    <i class="icon-mail icon-lg"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
                     aria-labelledby="countDropdown">
                    <a class="dropdown-item py-3">
                        <p class="mb-0 font-weight-medium float-left"> Th??ng b??o </p>
                        <span class="badge badge-pill badge-primary float-right">Xem t???t c???</span>
                    </a>
                    <div class="dropdown-divider"></div>
                    <% List<Contact> listContact = (List<Contact>) request.getAttribute("listContact");
                        System.out.println(listContact);
                        for (Contact c : listContact) {%>
                    <a class="dropdown-item preview-item"
                       onclick="viewContent('<%=c.getIduser()%>','<%=c.getNameUser()%>','<%=c.getPhone()%>','<%=c.getEmail()%>','<%=c.getContent()%>')">
                        <div class="preview-thumbnail">
                            <img src="https://assets.materialup.com/uploads/378d2c84-810d-477a-802b-d495646b9c4e/preview.jpg"
                                 alt="image" class="img-sm profile-pic"
                                 style=" width: 70px;height: 50px;border-radius: 100%;">
                        </div>
                        <div class="preview-item-content flex-grow pyy-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark"
                               onclick="viewContent('<%=c.getIduser()%>','<%=c.getNameUser()%>','<%=c.getPhone()%>','<%=c.getEmail()%>','<%=c.getContent()%>')">
                                <%=c.getNameUser()%>
                            </p>
                            <p class="fw-light small-text mb-0">
                                <%=c.getDateTime()%>
                            </p>
                        </div>
                    </a>
                    <%}%>
                </div>
            </li>
            <%
                String data = (String) request.getAttribute("data");
                int stopPr = (int) request.getAttribute("stopSaled");
                int newbie = (int) request.getAttribute("newbie");
                int saledPr = (int) request.getAttribute("saledPr");
                String data1 = (String) request.getAttribute("data1");
                int nowTur = (int) request.getAttribute("nowTur");
                List<SingleProduct> hotSale = (List<SingleProduct>) request.getAttribute("hotSale");
                User user = (User) session.getAttribute("auth");
                if (user != null) {
            %>

            <%--            <li class="nav-item dropdown d-none d-lg-block user-dropdown">--%>
            <%--                <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">--%>
            <%--                    <img class="img-xs rounded-circle" src="ImageproductNew/background/images.png" alt="Profile image">--%>
            <%--                </a>--%>
            <%--                <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">--%>
            <%--                    <div class="dropdown-header text-center">--%>
            <%--                        &lt;%&ndash;            <img class="img-md rounded-circle" src="images/faces/face8.jpg" alt="Profile image">&ndash;%&gt;--%>
            <%--                        <p class="mb-1 mt-3 font-weight-semibold"><%=user.getNameUser()%>--%>
            <%--                        </p>--%>
            <%--                        <p class="fw-light text-muted mb-0"><%=user.getEmail()%>--%>
            <%--                        </p>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </li>--%>
            <%}%>
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
                <i style="margin-right: 5px;" class="menu-icon mdi mdi-account-circle"></i>
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
                    <div class="home-tab">
                        <div class="d-sm-flex align-items-center justify-content-between border-bottom">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active ps-0" id="home-tab" data-bs-toggle="tab" href="#overview"
                                       role="tab"
                                       aria-controls="overview" aria-selected="true">T???ng quan</a>
                                </li>

                            </ul>
                            <div>
                                <%--                <div class="btn-wrapper">--%>
                                <%--                  <a href="#" class="btn btn-otline-dark align-items-center"><i class="icon-share"></i> Chia s???</a>--%>
                                <%--                  <a href="#" class="btn btn-otline-dark"><i class="icon-printer"></i> In</a>--%>
                                <%--                  <a href="#" class="btn btn-primary text-white me-0"><i class="icon-download"></i> Xu???t</a>--%>
                                <%--                </div>--%>
                            </div>
                        </div>
                        <div class="tab-content tab-content-basic">
                            <div class="tab-pane fade show active" id="overview" role="tabpanel"
                                 aria-labelledby="overview">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="statistics-details d-flex align-items-center justify-content-between">
                                            <div>
                                                <p class="statistics-title">Doanh thu th??ng hi???n t???i</p>
                                                <h3 class="rate-percentage"><%=nowTur%> VN??</h3>

                                            </div>
                                            <div>
                                                <p class="statistics-title">S??? m???t h??ng ???? b??n</p>
                                                <h3 class="rate-percentage"><%=saledPr%>
                                                </h3>

                                            </div>
                                            <div>
                                                <p class="statistics-title">M???t h??ng ng???ng kinh doanh</p>
                                                <h3 class="rate-percentage"><%=stopPr%>
                                                </h3>

                                            </div>
                                            <div class="d-none d-md-block">
                                                <p class="statistics-title">Kh??ch h??ng m???i</p>
                                                <h3 class="rate-percentage"><%=newbie%>
                                                </h3>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-lg-8 d-flex flex-column">
                                        <div class="row flex-grow">
                                            <div class="col-12 grid-margin stretch-card">
                                                <div class="card card-rounded">
                                                    <div class="card-body">
                                                        <div class="d-sm-flex justify-content-between align-items-start">
                                                            <div>
                                                                <h4 class="card-title card-title-dash">Bi???u ????? doanh thu
                                                                    theo n??m</h4>

                                                            </div>

                                                        </div>
                                                        <%
                                                            int tur = (int) request.getAttribute("tur");
//                                                    double pec = (double) request.getAttribute("pec");
                                                        %>
                                                        <div class="d-sm-flex align-items-center mt-1 justify-content-between">
                                                            <div class="d-sm-flex align-items-center mt-4 justify-content-between">
                                                                <h2 class="me-2 fw-bold"><%=tur%>
                                                                </h2>
                                                                <h4 class="me-2">VN??</h4>
                                                                <%--                                                                <h4 class="text-success">(+<%=pec%>%)</h4>--%>
                                                            </div>
                                                            <div class="me-3">
                                                                <div id="marketing-overview-legend"></div>
                                                            </div>
                                                        </div>
                                                        <div class="chartjs-bar-wrapper mt-3">
                                                            <canvas id="marketingOverview"></canvas>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row flex-grow">
                                        <div class="col-md-6 col-lg-6 grid-margin stretch-card">
                                            <div class="card card-rounded">
                                                <div class="card-body card-rounded">
                                                    <h4 class="card-title  card-title-dash">Ng??y nh???p l?? h??ng</h4>

                                                    <% int i = 10;

                                                        List<SingleProduct> list = ProductService.getInstance().getListPrDateImport(i);
                                                        for (SingleProduct s : list) {

                                                    %>
                                                    <div class="list align-items-center border-bottom py-2">
                                                        <div class="wrapper w-100">
                                                            <p class="mb-2 font-weight-medium">
                                                                <%=s.getNamePr()%>
                                                            </p>
                                                            <div class="d-flex justify-content-between align-items-center">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="mdi mdi-calendar text-muted me-1"></i>
                                                                    <p class="mb-0 text-small text-muted"><%=s.getDateImportPr()%>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%}%>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-6 grid-margin stretch-card">
                                            <div class="card card-rounded">
                                                <div class="card-body">
                                                    <div class="d-flex align-items-center justify-content-between mb-3">
                                                        <h4 class="card-title card-title-dash">S???n ph???m b??n ch???y</h4>
                                                        <%--                        <p class="mb-0">fliter</p>--%>
                                                    </div>
                                                    <ul class="bullet-line-list">
                                                        <%for (int j = 0; j < 15; j++) {%>
                                                        <li>
                                                            <div class="d-flex justify-content-between">
                                                                <div><span
                                                                        class="text-light-green"><%=hotSale.get(j).getNamePr()%> </span>
                                                                </div>
                                                                <p><%=hotSale.get(j).getPrice()%>                             VND</p>
                                                            </div>
                                                        </li>
                                                        <%}%>
                                                    </ul>
                                                    <div class="list align-items-center pt-3">

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
            </div>
        </div>
    </div>
</div>
<%--<div class="edit_formUser">--%>
<%--    <div class="container" style="background:none;">--%>
<%--        <div class="col-xl-7 ftco-animate cen-div  row ftco-section justify-content-center">--%>
<%--            <form action="/BHNFoods/ContactInAdmin" method="post" class="billing-form" style="margin-top: 2%;">--%>
<%--                <h3 class="mb-4 billing-heading\" style="color: #7fad39;">PH???N H???I KH??CH H??NG</h3>--%>
<%--                <div class="row align-items-end\" style="font-size: 16px;">--%>
<%--                    <div class="col-md-12 col_addprod">--%>
<%--                        <div class="form-group">--%>
<%--                            <h4>Th??ng tin tin kh??ch h??ng</h4>--%>
<%--                            <p>T??n kh??ch h??ng:</p>--%>
<%--                            <p>S??? ??i???n tho???i: </p>--%>
<%--                            <p>Email: </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-12">--%>
<%--                        <div class="form-group" style="display:none">--%>
<%--                            <label>ID<label>--%>
<%--                                <input type="text" value="iduser" name="iduser" class="form-control input_addpr"--%>
<%--                                       placeholder="">--%>
<%--                        </div>--%>
<%--                        <div class="form-group\">--%>
<%--                            <label>N???i dung </label>--%>
<%--                            <div name="content" class="form-control contentContact" value="">--%>
<%--                                <p>"+content+"</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-12 d-flex  btn_huy_update" style="justify-content: end;"--%>
<%--                    <input onclick="huy()" type="button" value="????ng">--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<div id="viewcontent">
</div>

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
<script>
    if ($("#marketingOverview").length) {
        var marketingOverviewChart = document.getElementById("marketingOverview").getContext('2d');
        var marketingOverviewData = {
            labels: ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"],
            datasets: [{
                label: 'n??m 2022',
                data: [<%=data%>],
                backgroundColor: "#52CDFF",
                borderColor: [
                    '#52CDFF',
                ],
                borderWidth: 0,
                fill: true, // 3: no fill

            }, {
                label: 'n??m 2021',
                data: [<%=data1%>],
                backgroundColor: "#1F3BB3",
                borderColor: [
                    '#1F3BB3',
                ],
                borderWidth: 0,
                fill: true, // 3: no fill
            }]
        };

        var marketingOverviewOptions = {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                yAxes: [{
                    gridLines: {
                        display: true,
                        drawBorder: false,
                        color: "#F0F0F0",
                        zeroLineColor: '#F0F0F0',
                    },
                    ticks: {
                        beginAtZero: true,
                        autoSkip: true,
                        maxTicksLimit: 5,
                        fontSize: 10,
                        color: "#6B778C"
                    }
                }],
                xAxes: [{
                    stacked: true,
                    barPercentage: 0.35,
                    gridLines: {
                        display: false,
                        drawBorder: false,
                    },
                    ticks: {
                        beginAtZero: false,
                        autoSkip: true,
                        maxTicksLimit: 12,
                        fontSize: 10,
                        color: "#6B778C"
                    }
                }],
            },
            legend: false,
            legendCallback: function (chart) {
                var text = [];
                text.push('<div class="chartjs-legend"><ul>');
                for (var i = 0; i < chart.data.datasets.length; i++) {
                    console.log(chart.data.datasets[i]); // see what's inside the obj.
                    text.push('<li class="text-muted text-small">');
                    text.push('<span style="background-color:' + chart.data.datasets[i].borderColor + '">' + '</span>');
                    text.push(chart.data.datasets[i].label);
                    text.push('</li>');
                }
                text.push('</ul></div>');
                return text.join("");
            },

            elements: {
                line: {
                    tension: 0.4,
                }
            },
            tooltips: {
                backgroundColor: 'rgba(31, 59, 179, 1)',
            }
        }
        var marketingOverview = new Chart(marketingOverviewChart, {
            type: 'bar',
            data: marketingOverviewData,
            options: marketingOverviewOptions
        });
        document.getElementById('marketing-overview-legend').innerHTML = marketingOverview.generateLegend();
    }

    function viewContent(iduser, nameUser, phone, email, content) {
        $.ajax({
            url: "/BHNFoods/ViewContact",
            type: 'get',
            data: {
                iduser: iduser,
                nameUser: nameUser,
                email: email,
                phone: phone,
                content: content,
            },
            success: function (data) {
                const content = document.getElementById('viewcontent');
                content.innerHTML = data;
            },
            error: function () {
            }
        });
        $("#viewcontent .edit_formUser").css("display", "block");
    }

    function huy() {
        $("#viewcontent .edit_formUser").css("display", "none");
    }
</script>
<script src="admin_template/js/Chart.roundedBarCharts.js"></script>
<!-- End custom js for this page-->
</body>

</html>