package com.booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookingDBUtill {

    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static List<Booking> validate(String location, String date, String property_type) {
        ArrayList<Booking> book = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM search WHERE location = '" + location + "' and date = '" + date + "' and property_type = '" + property_type + "'";
            rs = stmt.executeQuery(sql);

            
            while (rs.next()) {
                int id = rs.getInt(1);
                String location1 = rs.getString(2);
                String date1 = rs.getString(3);
                String propType = rs.getString(4);
                int contact = rs.getInt(5);

                Booking c = new Booking(id, location1, date1, propType, contact);
                book.add(c);
            }
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources (con, stmt, rs) here if necessary
        }

        return book;
    }

    public static boolean insertBooking(String nic, String name, String address, String proffesion, String date, String contact, String email) {
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "INSERT INTO booking VALUES(0, '" + nic + "', '" + name + "', '" + address + "', '" + proffesion + "', '" + date + "', '" + contact + "', '" + email + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources (con, stmt) here if necessary
        }

        return isSuccess;
    }

    public static boolean updateBooking(String id, String nic, String name, String address, String proffesion, String date, String contact, String email) {
        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "UPDATE booking SET " +
                "nic = '" + nic + "', " +
                "name = '" + name + "', " +
                "address = '" + address + "', " +
                "proffesion = '" + proffesion + "', " +
                "date = '" + date + "', " +
                "contact = '" + contact + "', " +
                "email = '" + email + "' " +
                "WHERE bookingid = '" + id + "'";
            System.out.println("SQL Query: " + sql);

            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }


    public static boolean deleteBooking(String id) {
        int convId = Integer.parseInt(id);

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "DELETE FROM booking WHERE bookingid = '" + convId + "'";
            System.out.println("sql"+ sql);
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources (con, stmt) here if necessary
        }

        return isSuccess;
    }

    public static List<View> view(String nic, String email) {
        ArrayList<View> view = new ArrayList<>();

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "SELECT * FROM booking WHERE nic = '" + nic + "' and email = '" + email + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String nic1 = rs.getString(2);
                String name = rs.getString(3);
                String address = rs.getString(4);
                String proffesion = rs.getString(5);
                String date = rs.getString(6);
                String contact = rs.getString(7);
                String email2 = rs.getString(8);

                View c = new View(id, nic1, name, address, proffesion, date, contact, email2);
                view.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources (con, stmt, rs) here if necessary
        }

        return view;
    }
}
