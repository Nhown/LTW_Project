<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.SingleProduct" %>
<%@ page import="vn.edu.hcmuaf.fit.beans.User" %>
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

  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="admin_template/js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="admin_template/css/vertical-layout-light/style.css">

  <!-- endinject -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <style>
    .card-body a .btn_add_delete {
      width: 60px;
      height: 30px;
      border: none;
      color: #1f1f1fbf;
      font-weight: 600 !important;
      border-radius: 5px;

    }

    .row .form-group .form-control {
      font-size: 13px;
    }

    .align-items-end .row_input .col_addprod {
      flex: auto;
      margin-top: 8px;
      position: relative;
      width: 100%;
      padding-right: 15px;
      padding-left: 15px;
    }


    .edit_formUser .input_addpr {
      height: calc(1.5em + .75rem);
    }

    .edit_formUser .col-xl-7 .row .col-md-12 .edit_img {
      /*width: 80%;*/
      height: 60px;
      border: gray;
      border-style: dashed;
      margin: 0 20px;
      padding: 0;

    }

    .edit_formUser .col-xl-7 .row .col-md-12 .edit_img .btnX_img {
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
    .edit_formAdd, .edit_formEdit{
      display: none;
    }

    .edit_formUser .cen-div {
      margin: auto;
      background: #f1f1f1;
      width: 50%;
      margin-top:2%;
      border-radius: 5px;
    }
    .edit_formUser .cen-div  form .form-group {
      margin-bottom: 1.1rem;
    }
    .edit_formUser .cen-div  form .form-group label{
      font-size: 15px;
      display: inline;
    }

    .btn_huy_update button {
      background: none;
      border: none;
    }
    .edit_formUser textarea{
      min-height: 6rem;
    }

  </style>
</head>

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
          <!-- <a class="dropdown-item py-3">
            <p class="mb-0 font-weight-medium float-left">L???c</p>
          </a> -->
          <div class="dropdown-divider"></div>
          <a href="http://localhost:8080/BHNFoods/AdminManagePr?kind=0&page=1 "class="dropdown-item preview-item">
            <div class="preview-item-content flex-grow py-2">
              <p class="preview-subject ellipsis font-weight-medium text-dark">T???t c??? </p>
            </div>
          </a>
          <a href="http://localhost:8080/BHNFoods/AdminManagePr?kind=1&page=1" class="dropdown-item preview-item">
            <div class="preview-item-content flex-grow py-2">
              <p class="preview-subject ellipsis font-weight-medium text-dark">G???o</p>
            </div>
          </a>
          <a href="http://localhost:8080/BHNFoods/AdminManagePr?kind=2&page=1 "class="dropdown-item preview-item">
            <div class="preview-item-content flex-grow py-2">
              <p class="preview-subject ellipsis font-weight-medium text-dark">N???p </p>

            </div>
          </a>
          <a href="http://localhost:8080/BHNFoods/AdminManagePr?kind=3&page=1" class="dropdown-item preview-item">
            <div class="preview-item-content flex-grow py-2">
              <p class="preview-subject ellipsis font-weight-medium text-dark">C??c lo???i h???t </p>

            </div>
          </a>
          <a href="http://localhost:8080/BHNFoods/AdminManagePr?kind=4&page=1" class="dropdown-item preview-item">
            <div class="preview-item-content flex-grow py-2">
              <p class="preview-subject ellipsis font-weight-medium text-dark">C??c lo???i b???t </p>

            </div>
          </a>
          <a href="http://localhost:8080/BHNFoods/AdminManagePr?kind=5&page=1 "class="dropdown-item preview-item">
            <div class="preview-item-content flex-grow py-2">
              <p class="preview-subject ellipsis font-weight-medium text-dark">C??c lo???i c???, tr??i </p>
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
        <form class="search-form" action="/SearchAdmin" method="post">
          <i class="icon-search"></i>
          <input type="search" class="form-control" placeholder="Search Here" name="searchAD" title="Search here">
        </form>
      </li>

      <%
        User user = (User) session.getAttribute("auth");
        if (user != null) {%>
      <li class="nav-item dropdown d-none d-lg-block user-dropdown">
        <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
          <img class="img-xs rounded-circle" src="ImageproductNew/background/images.png"
               alt="Profile image"> </a>
        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
          <div class="dropdown-header text-center">
            <%--              <img class="img-md rounded-circle" src="images/faces/face8.jpg" alt="Profile image">--%>
            <p class="mb-1 mt-3 font-weight-semibold"><%=user.getNameUser()%>
            </p>
            <p class="fw-light text-muted mb-0"><%=user.getEmail()%>
            </p>
          </div>
          <a class="dropdown-item"><i
                  class="dropdown-item-icon mdi mdi-account-outline text-primary me-2"></i> Trang c?? nh??n</a>
          <a class="dropdown-item"><i
                  class="dropdown-item-icon mdi mdi-message-text-outline text-primary me-2"></i>
            Tin nh???n</a>
          <%--            <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-calendar-check-outline text-primary me-2"></i>--%>
          <%--              Ho???t ?????ng</a>--%>
          <%--            <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-help-circle-outline text-primary me-2"></i>--%>
          <%--              C??c c??u h???i th?????ng g???p</a>--%>
          <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-power text-primary me-2"></i>????ng xu???t</a>
        </div>
      </li>
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
              </div>
            </div>
            <div class="tab-content tab-content-basic">
              <div class="tab-pane fade show active" id="overview" role="tabpanel"
                   aria-labelledby="overview">
                <div class="row">
                  <div class="col-lg-8 d-flex flex-column">
                    <div class="row flex-grow">
                      <div class="col-12 grid-margin stretch-card">
                        <div class="card card-rounded">
                          <div class="card-body">
                            <div class="d-sm-flex justify-content-between align-items-start">
                              <!-- <div>
                                <h4 class="card-title card-title-dash">Y??u c???u ??ang x??? l??</h4>
                                <p class="card-subtitle card-subtitle-dash">B???n c?? 50+ y??u c???u m???i</p>
                              </div> -->
                              <div>
                                <a href="#" STYLE="text-decoration: none">
                                  <button  onclick="add()" class="card-title card-title-dash btn_add_delete">
                                    Th??m
                                  </button>
                                </a>
                                <a href="#" STYLE="text-decoration: none">
                                  <button class="card-title card-title-dash btn_add_delete">
                                    X??a
                                  </button>
                                </a>
                              </div>
                            </div>
                            <div class="table-responsive  mt-1">
                              <table class="table select-table">
                                <thead>
                                <tr>
                                  <th>
                                    <div class="form-check form-check-flat mt-0">
                                      <label class="form-check-label">
                                        <input type="checkbox"
                                               class="form-check-input"
                                               aria-checked="false"><i
                                              class="input-helper"></i></label>
                                    </div>
                                  </th>
                                  <th>S???n ph???m</th>
                                  <th>Ng??y h???t h???n</th>
                                  <th>S??? l?????ng h??ng ???? b??n</th>
                                  <th>Gi??</th>
                                  <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                  DecimalFormat decF = new DecimalFormat("#,###");
                                  List<SingleProduct> productList = (List<SingleProduct>) request.getAttribute("listSearchPRAD");
                                  for (SingleProduct p : productList) {
                                %>
                                <tr>
                                  <td>
                                    <div class="form-check form-check-flat mt-0">
                                      <label class="form-check-label">
                                        <input type="checkbox"
                                               class="form-check-input"
                                               aria-checked="false"><i
                                              class="input-helper"></i></label>
                                    </div>
                                  </td>
                                  <td>
                                    <div class="d-flex ">
                                      <img src="<%=p.getUrl()%>" alt="">
                                      <div>
                                        <h6><%=p.getNamePr()%>
                                        </h6>
                                        <p><%=p.getIdPr()%>
                                        </p>
                                      </div>
                                    </div>
                                  </td>
                                  <td>
                                    <h6><%=p.getHsd()%></h6>
                                  </td>
                                  <td>
                                    <div>
                                      <div
                                              class="d-flex justify-content-between align-items-center mb-1 max-width-progress-wrap">

                                        <p><%=p.getSaled()%>/<%=p.getInventory()%></p>
                                      </div>
                                      <% int percent= Integer.parseInt(p.getSaled())*100/(p.getInventory());%>
                                      <div class="progress progress-md">
                                        <div class="progress-bar bg-success"
                                             role="progressbar"
                                             style="width: <%=percent%>%"

                                             aria-valuemin="0"
                                             aria-valuemax="100"></div>
                                      </div>
                                    </div>
                                  </td>
                                  <td>
                                    <div class=""><%=decF.format(p.getPrice())%>??
                                    </div>
                                  </td>
                                  <td>
                                    <div class="btn_huy_update">
                                      <button onclick="clickEdit()" href="#" style="text-decoration: none">
                                        <h4 class="card-title card-title-dash">
                                          S???a <i
                                                class="fa-regular fa-pen-to-square"></i>
                                        </h4></button>
                                    </div>
                                  </td>
                                </tr>
                                <%}%>
                                </tbody>
                              </table>
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
    <!-- content-wrapper ends -->
  </div>
  <!-- main-panel ends -->

  <!-- container-scroller -->
</div>
<div class="edit_formUser edit_formAdd">
  <div class="container" style="background:none;">
    <div class="col-xl-7 ftco-animate cen-div  row ftco-section justify-content-center">
      <form action="#" class="billing-form" style="margin-top: 5%;">
        <h4 class="mb-4 billing-heading">Th??m s???n ph???m</h4>
        <div class="row align-items-end" style="font-size: 16px;">
          <div class="col-md-12 ">
            <div class="form-group">
              <label for="">T??n s???n ph???m</label>
              <input type="text" class="form-control input_addpr" placeholder="">
            </div>
          </div>

          <div class="d-flex flex-grow-1  row_input  ">
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">H??nh ???nh</label>
                <button class="form-control input_addpr" style="background-color: #b5b5b5;">Ch???n
                  t???p
                </button>
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">M?? s???n ph???m</label>
                <input class="form-control input_addpr" placeholder="ID_Product">
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Danh m???c</label>
                <select type="text" class="form-control input_addpr">
                  <option>G???o</option>
                  <option>N???p</option>
                  <option>C??c lo???i h???t</option>
                  <option>C??c lo???i b???t</option>
                  <option>C??c lo???i c???, tr??i</option>
                </select>
              </div>
            </div>
          </div>
          <div class="d-flex flex-grow-1 row_input ">
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Gi??</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Khuy???n m??i(%)</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
          </div>
          <div class="d-flex flex-grow-1 row_input ">
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Xu???t x???</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Th????ng hi???u</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Tr???ng l?????ng</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
          </div>


          <div class="d-flex flex-grow-1  row_input">
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Ng??y s???n xu???t</label>
                <div class="select-wrap">
                  <input type="date" name="" id="" class="form-control input_addpr"
                         placeholder="Ng??y/Th??ng/N??m">
                </div>
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Ng??y h???t h???n</label>
                <div class="select-wrap">
                  <input type="date" name="" id="" class="form-control input_addpr"
                         placeholder="Ng??y/Th??ng/N??m">
                </div>
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">S??? l?????ng nh???p</label>
                <input type="number" class="form-control input_addpr" placeholder="">
              </div>
            </div>
          </div>

          <div class="col-md-12">
            <div class="form-group">
              <label for="">M?? t???</label>
              <textarea type="text" class="form-control"
                        placeholder="M?? t??? s???n ph???m"> </textarea>
            </div>
          </div>

          <div class="col-md-12 d-flex btn_huy_update" style="justify-content: end;">
            <button onclick="huy()"><a href="#" class="btn btn-primary py-3 px-4"
                                       style="border-radius:5px; background: #7fad39; border: none;padding: 10px 40px !important;">H???y</a>
            </button>
            <button><a href="#" class="btn btn-primary py-3 px-4"
                       style="border-radius:5px; background: #7fad39; border: none; padding: 10px !important; margin-left: 20px">Th??m
              s???n ph???m</a>
            </button>
          </div>


        </div>
      </form>
    </div>
  </div>
</div>
<div class="edit_formUser edit_formEdit">
  <div class="container" style="background:none;">
    <div class="col-xl-7 ftco-animate cen-div  row ftco-section justify-content-center">
      <form action="#" class="billing-form" style="margin-top: 5%;">
        <h4 class="mb-4 billing-heading">S???a s???n ph???m</h4>
        <div class="row align-items-end" style="font-size: 16px;">
          <div class="col-md-12 ">
            <div class="form-group">
              <label for="">H??nh ???nh</label>
              <div class="d-flex flex-grow-1  row_input ">
                <div class="col-md-6 col_addprod edit_img">
                  <button class="btnX_img">x</button>
                </div>
                <div class="col-md-6 col_addprod edit_img">
                  <button class="btnX_img">x</button>
                </div>
                <div class="col-md-6 col_addprod edit_img">
                  <button class="btnX_img">x</button>
                </div>
                <div class="col-md-6 col_addprod edit_img">
                  <button class="btnX_img">x</button>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12 ">
            <div class="form-group">
              <label for="">T??n s???n ph???m</label>
              <input type="text" class="form-control input_addpr" placeholder="">
            </div>
          </div>
          <div class="d-flex flex-grow-1  row_input  ">
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">H??nh ???nh</label>
                <button class="form-control input_addpr" style="background-color: #b5b5b5;">Ch???n
                  t???p
                </button>
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">M?? s???n ph???m</label>
                <input class="form-control input_addpr" placeholder="ID_Product">
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Danh m???c</label>
                <select type="text" class="form-control input_addpr">
                  <option>G???o</option>
                  <option>N???p</option>
                  <option>C??c lo???i h???t</option>
                  <option>C??c lo???i b???t</option>
                  <option>C??c lo???i c???, tr??i</option>
                </select>
              </div>
            </div>
          </div>
          <div class="d-flex flex-grow-1 row_input ">
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Gi??</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Khuy???n m??i(%)</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
          </div>
          <div class="d-flex flex-grow-1 row_input ">
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Xu???t x???</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Th????ng hi???u</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Tr???ng l?????ng</label>
                <input type="text" class="form-control input_addpr" placeholder="">
              </div>
            </div>
          </div>


          <div class="d-flex flex-grow-1  row_input">
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Ng??y s???n xu???t</label>
                <div class="select-wrap">
                  <input type="date" name="" id="" class="form-control input_addpr"
                         placeholder="Ng??y/Th??ng/N??m">
                </div>
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">Ng??y h???t h???n</label>
                <div class="select-wrap">
                  <input type="date" name="" id="" class="form-control input_addpr"
                         placeholder="Ng??y/Th??ng/N??m">
                </div>
              </div>
            </div>
            <div class="col-md-6 col_addprod">
              <div class="form-group">
                <label for="">S??? l?????ng nh???p</label>
                <input type="number" class="form-control input_addpr" placeholder="">
              </div>
            </div>
          </div>

          <div class="col-md-12">
            <div class="form-group">
              <label for="">M?? t???</label>
              <textarea type="text" class="form-control input_addpr"
                        placeholder="M?? t??? s???n ph???m"> </textarea>
            </div>
          </div>
          <div class="col-md d-flex col_addprod">
            <div class="form-group  padd_right" style="">
              <label class="" for="">Tr???ng th??i:</label>
            </div>
            <div class="form-group  padd_right" style="">
              <input type="checkbox" class="form-" placeholder="">
              <label class="" for="">N???i b???t</label>
            </div>
            <div class="form-group padd_right " style="">
              <input type="checkbox" class="form-" placeholder="">
              <label class="" for="">M???i</label>
            </div>
            <div class="form-group padd_right " style="">
              <input type="checkbox" class="form-" placeholder="">
              <label class="" for="">???n</label>
            </div>
          </div>

          <div class="col-md-12 d-flex  btn_huy_update" style="justify-content: end;">
            <button onclick="huy()"><a href="#" class="btn btn-primary py-3 px-4"
                                       style="border-radius:5px; background: #7fad39; border: none;padding: 10px 40px !important;">H???y</a>
            </button>
            <button><a href="#" class="btn btn-primary py-3 px-4"
                       style="border-radius:5px; background: #7fad39; border: none; padding: 10px 30px !important; margin-left: 20px">C???p
              nh???t</a>
            </button>
          </div>
        </div>
      </form><!-- END -->
    </div>
  </div>
</div>
<script>
  function clickEdit() {
    $(".edit_formEdit").css("display", "block");
  }

  function add() {
    $(".edit_formAdd").css("display", "block");
  }

  function huy() {
    $(".edit_formAdd,.edit_formEdit").css("display", "none");
  }
</script>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous"></script>
<!-- plugins:js -->
<script src="admin_template/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="admin_template/vendors/chart.js/Chart.min.js"></script>
<script src="admin_template/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="admin_template/vendors/progressbar.js/progressbar.min.js"></script>

<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="admin_template/js/off-canvas.js"></script>
<script src="admin_template/js/hoverable-collapse.js"></script>
<script src="admin_template/js/template.js"></script>
<script src="admin_template/js/settings.js"></script>
<script src="admin_template/js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="admin_template/js/jquery.cookie.js" type="text/javascript"></script>
<script src="admin_template/js/dashboard.js"></script>
<script src="admin_template/js/Chart.roundedBarCharts.js"></script>
<!-- End custom js for this page-->
</body>

</html>