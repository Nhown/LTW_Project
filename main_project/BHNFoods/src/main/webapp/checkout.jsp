<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>BHDFoods| Chi tiết thanh toán</title>
</head>

<body id="body">

<%@ include file="header.jsp" %>
<%
    int sum = (int) request.getAttribute("sumCheckout");
    int discount = (int) request.getAttribute("discountCheckout");
    int total = (int) request.getAttribute("totalCheckout");
    String all = request.getAttribute("allIdProdChecked").toString();
    request.setAttribute("allId", all);
    String maGiamGia = (String) request.getAttribute("maGiamGia");
    request.setAttribute("maGiamGia",maGiamGia);
    DecimalFormat dec = new DecimalFormat("#,###");
%>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-7 ftco-animate">
                <form action="#" class="billing-form">
                    <h3 class="mb-4 billing-heading">Chi tiết thanh toán</h3>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Họ và Tên</label>
                                <input id="fullName" type="text" class="form-control" placeholder="Nhập họ tên đầy đủ" value="<%=user.getNameUser()%>">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Số điện thoại</label>
                                <input id="phoneNumber" type="text" class="form-control" placeholder="Nhập số điện thoại" value="<%=user.getPhone()%>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Email</label>
                                <input id="email" type="text" class="form-control" placeholder="Nhập địa chỉ Email" value="<%=user.getEmail()%>">
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Địa chỉ giao hàng</label>
                                <div class="select-wrap">

                                    <input name="" id="address" class="form-control" placeholder="Nhập địa chỉ giao hàng" value="<%=user.getAddress()%>">

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Quận, Thành phố</label>

                                <select id="city" type="text" class="form-control">
                                    <option>Thủ Đức</option>
                                    <option>Quận 1</option>
                                    <option>Quận 3</option>
                                    <option>Quận 4</option>
                                    <option>Quận 5</option>
                                    <option>Quận 6</option>
                                    <option>Quận 7</option>
                                    <option>Quận 8</option>
                                    <option>Quận 10</option>
                                    <option>Quận 11</option>
                                    <option>Quận 12</option>
                                    <option>Bình Chánh</option>
                                    <option>Bình Thạnh</option>
                                    <option>Bình Tân</option>
                                    <option>Tân Bình</option>
                                    <option>Tân Phú</option>
                                    <option>Hooc Môn</option>
                                </select>
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Ghi chú</label>
                                <textarea id="note"  type="text" class="form-control"
                                          placeholder="Khách hàng có những yêu cầu khác vui lòng nhập vào đây để cửa hàng có thể phục vụ tốt nhất"></textarea>
                            </div>
                        </div>

                        <div class="w-100"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Thời gian nhận hàng</label>

                                <select id="day" type="text" class="form-control">
                                    <option value="0">Ngày hôm nay</option>
                                    <option value="1">Ngày mai</option>
                                    <option value="2">Ngày mốt</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <select id="time" type="text" class="form-control">
                                    <option value="8:00:00">8h00-10h00</option>
                                    <option value="10:00:00">10h00-12h00</option>
                                    <option value="14:00:00">14h00-16h00</option>
                                    <option value="17:00:00">17h00-19h00</option>
                                    <option value="19:00:00">19h00-21h00</option>
                                </select>
                            </div>
                        </div>

                    </div>
                </form><!-- END -->
            </div>
            <div class="col-xl-5">
                <div class="row mt-5 pt-3">
                    <div class="col-md-12 d-flex mb-5">
                        <div class="cart-detail cart-total p-3 p-md-4">
                            <h3 class="billing-heading mb-4" style="font-size: 24px">Tổng giỏ hàng</h3>
                            <ul id="totalCard" style="padding: 0">
                                <li id="sumCheckout" value="<%=sum%>" style="overflow: hidden; margin-bottom: 1rem" >Tổng tiền hàng<span style="float: right"><%=dec.format(sum).replace(',','.')%>đ</span> </li>
                                <li id="discountCheckout" value="<%=discount%>" style="overflow: hidden; margin-bottom: 1rem">Giảm<span style="float: right"><%=dec.format(discount).replace(',','.')%>đ</span> </li>
                                <li id="shipCheckout" value="0" style="overflow: hidden; margin-bottom: 1rem">Phí vận chuyển<span style="float: right">0đ</span> </li>
                                <li id="totalCheckout" value="<%=total%>" style="overflow: hidden">Tổng thanh toán<span style="float: right"><%=dec.format(total).replace(',','.')%>đ</span> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="cart-detail p-3 p-md-4">
                            <h3 class="billing-heading mb-4">Phương thức thanh toán</h3>
                            <div class="form-group">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="radio">
                                            <label><input type="radio" checked value="1" name="optradio" class="mr-2"> Thanh toán tiền mặt</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="radio">
                                        <label><input type="radio" value="0" name="optradio" class="mr-2"> Thanh toán online</label>
                                    </div>
                                </div>
                            </div>
                            <input type="text" id="allId" value="<%=all%>" style="display: none">
                            <input type="text" id="maGiamGia" value="<%=maGiamGia%>" style="display: none">
                            <p><button onclick="pay()" class="btn btn-primary py-3 px-4 " style="border-radius:0px">Đặt hàng</button></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%--</footer>--%>
<%@ include file="footer.jsp" %>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script>
    function pay() {
        $.ajax({
            url: "/BHNFoods/pay",
            type: 'get',
            data: {
                fullName: $('#fullName').val(),
                phoneNumber: $('#phoneNumber').val(),
                email : $('#email').val(),
                address : $('#address').val(),
                city : $('#city').val(),
                note: $('#note').val(),
                day : $('#day').val(),
                time : $('#time').val(),
                payment : $('input[type="radio"][name="optradio"]:checked').val(),
                sumCheckout : $('#sumCheckout').val(),
                discountCheckout : $('#discountCheckout').val(),
                shipCheckout : $('#shipCheckout').val(),
                totalCheckout : $('#totalCheckout').val(),
                listId : $('#allId').val(),
                maGiamGia : $('#maGiamGia').val(),
            },
            success: function (data) {
            },
            error: function () {
            }
        });

        let timerId= setInterval(setBody(), 1000);

        setTimeout(() => { clearInterval(timerId); Redirect(); }, 5000);

    }
    function setBody() {
        var body = document.getElementById('body')
        var payment = $('input[type="radio"][name="optradio"]:checked').val() == 0 ? 'online' : 'trực tiếp';
        body.innerHTML = "<h3>Thanh toán thành công bằng phương thức "+payment+", bạn sẽ về trang sản phẩm trong "+5+" giây nữa</h3>"
    }


    function Redirect() {
        window.location.assign('http://localhost:8080/BHNFoods/ListProduct?kind=0&page=1&idUser=user1');
    }

    $('#city').change(function changeDistrict() {
        $.ajax({
            url: "/BHNFoods/changeDistrict",
            type: 'get',
            data: {
                sumCheckout: $('#sumCheckout').val(),
                discountCheckout: $('#discountCheckout').val(),
                city: $('#city').val(),
                totalCheckout: parseInt($('#totalCheckout').val())+ parseInt($('#shipCheckout').val())
            },
            success: function (data) {
                const content = document.getElementById('totalCard')
                content.innerHTML = data;
            },
            error: function () {
            }
        });

    })



</script>

</body>

</html>
