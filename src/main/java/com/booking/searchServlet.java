package com.booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String location = request.getParameter("location");
        String date = request.getParameter("date");
        String property_type = request.getParameter("property_type");

        try {
            List<Booking> bookDetails = BookingDBUtill.validate(location, date, property_type);

            if (bookDetails.isEmpty()) {
                // No matches found, redirect to "nomatch.jsp"
                RequestDispatcher noMatchDis = request.getRequestDispatcher("nomatch.jsp");
                noMatchDis.forward(request, response);
            } else {
                // Matches found, forward to "Booking.jsp"
                request.setAttribute("bookDetails", bookDetails);
                RequestDispatcher dis = request.getRequestDispatcher("Booking.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
