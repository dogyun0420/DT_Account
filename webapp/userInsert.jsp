<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="account_4plus1.UserDTO"%> 
<%@ page import="account_4plus1.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%


request.setCharacterEncoding("UTF-8"); 

String userName = null; 
String userPhone = null; 
String userId = null; 

if (request.getParameter("userId") != null) { userId = (String) request.getParameter("userId"); }

if (request.getParameter("userName") != null) { userName = (String) request.getParameter("userName"); } 

if (request.getParameter("userPhone") != null) { userPhone = (String) request.getParameter("userPhone"); }

UserDAO userDAO = new UserDAO(); 

int result = userDAO.userInsert(userId, userName, userPhone); 

if (result == 1) { 

    PrintWriter script = response.getWriter(); 
    script.println("<script>"); 
    script.println("alert('회원등록 성공')"); 
    script.println("location.href='test.jsp';"); 
    script.println("</script>"); script.close(); return; 
}

%>