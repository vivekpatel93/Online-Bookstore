<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
String Name = request.getParameter("name");
String Address = request.getParameter("address");
String Email = request.getParameter("email");
String ContactNumber = request.getParameter("contact");
String Message = request.getParameter("msg");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ebook_app", "root", "root");
    
    String query = "INSERT INTO contact (Name, Address, Email, ContactNumber, Message) VALUES (?, ?, ?, ?, ?)";
    PreparedStatement pstmt = con.prepareStatement(query);
    
    pstmt.setString(1, Name);
    pstmt.setString(2, Address);
    pstmt.setString(3, Email);
    pstmt.setString(4, ContactNumber);
    pstmt.setString(5, Message);
    
    int result = pstmt.executeUpdate();
    if (result > 0) {
        response.sendRedirect("setting.jsp");
    } else {
        out.println("Error inserting data.");
    }
    
    pstmt.close();
    con.close();
} catch(Exception ex) {
    out.println("Exception: " + ex);
}
%>
