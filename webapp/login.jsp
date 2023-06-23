<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="account_4plus1.UserDAO"%>
<%@ page import="account_4plus1.UserDTO"%> 
<%@ page import="java.util.ArrayList"%> 
<%@ page import="java.io.PrintWriter"%>

<%
String userId = request.getParameter("userId");
String password = request.getParameter("password");

UserDAO userDAO = new UserDAO();
ArrayList<UserDTO> userList = userDAO.userList();

boolean loginSuccessful = false;

for (UserDTO user : userList) {
    if (user.getUserId().equals(userId) && user.getUserPhone().equals(password)) {
        loginSuccessful = true;
        break;
    }
}

if (loginSuccessful) {
	PrintWriter script = response.getWriter();
	script.println("alert('로그인 성공')");
    // Successful login, redirect to a dashboard page or display a success message
    response.sendRedirect("dashboard.jsp");
    
} else {
	PrintWriter script = response.getWriter();
	script.println("alert('로그인 실패')");
    // Failed login, display an error message or redirect back to the login page
    response.sendRedirect("login.jsp?error=1");
    
}
%>