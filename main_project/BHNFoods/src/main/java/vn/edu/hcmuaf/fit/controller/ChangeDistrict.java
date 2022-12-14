package vn.edu.hcmuaf.fit.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

@WebServlet(name = "ChangeDistrict", value = "/changeDistrict")
public class ChangeDistrict extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int sumCheckout = Integer.parseInt(request.getParameter("sumCheckout"));
        int discountCheckout = Integer.parseInt(request.getParameter("discountCheckout"));
        String city = request.getParameter("city");
        int shipCheckout = city.equalsIgnoreCase("Thủ đức") ? 0 : 30000;
        int totalCheckout = sumCheckout - discountCheckout + shipCheckout;
        DecimalFormat dec = new DecimalFormat("#,###");
        String sumF = dec.format(sumCheckout).replace(',','.');
        String discountF = dec.format(discountCheckout).replace(',','.');
        String shipF = dec.format(shipCheckout).replace(',','.');
        String totalF = dec.format(totalCheckout).replace(',','.');
        PrintWriter out = response.getWriter();

        out.println("                            <li id=\"sumCheckout\" value=\""+sumCheckout+"\" style=\"overflow: hidden; margin-bottom: 1rem\" >Tổng tiền hàng<span style=\"float: right\">"+sumF+"đ</span> </li>\n" +
                "                                <li id=\"discountCheckout\" value=\""+discountCheckout+"\" style=\"overflow: hidden; margin-bottom: 1rem\">Giảm<span style=\"float: right\">"+discountF+"đ</span> </li>\n" +
                "                                <li id=\"shipCheckout\" value=\""+shipCheckout+"\" style=\"overflow: hidden; margin-bottom: 1rem\">Phí vận chuyển<span style=\"float: right\">"+shipF+"đ</span> </li>\n" +
                "                                <li id=\"totalCheckout\" value=\""+totalCheckout+"\" style=\"overflow: hidden\">Tổng thanh toán<span style=\"float: right\">"+totalF+"đ</span> </li>\n");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
