<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="account_4plus1.UserDAO" %>
<%@ page import="account_4plus1.UserDTO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>가계부</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            margin-bottom: 10px;
        }

        table {
            border: 1px solid #333333;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        #insert {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            margin-bottom: 20px;
        }

        #insert:hover {
            background-color: #45a049;
        }

        #insert:active {
            background-color: #3e8e41;
        }

        .no-records {
            text-align: center;
            color: #999999;
            font-style: italic;
        }
    </style>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".datepicker").datepicker({
                dateFormat: 'yy-mm-dd' // 원하는 날짜 형식을 설정합니다.
            });
        });
    </script>
</head>
<body>

<h2>가계부</h2>
<form action="./UserInsert.jsp" method="post"> 
	<table>
	    <tr>
	        <td bgcolor="skyblue">이름</td>
	        <td align="left"><input type="text" name="userName" id="userName"></td>
	    </tr>
	    <tr>
	        <td bgcolor="skyblue">날짜</td>
	        <td align="left"><input type="text" name="userDate" id="userDate" class="datepicker"></td>
	       </tr>
    <tr>
        <td bgcolor="skyblue">금액</td>
        <td align="left"><input type="text" name="userCost" id="userCost"></td>
    </tr>
</table>
<input type="submit" id="insert" value="등록">
</form>
<table>
    <h2>내역</h2>
    <tr>
        <th>이름</th>
        <th>날짜</th>
        <th>금액</th>
        <th>총합</th>
    </tr>
    <%
    UserDAO dao = new UserDAO();
    ArrayList<UserDTO> list = dao.userList();
    for (UserDTO dto : list) {
    %>
    <tr>
        <td><%=dto.getUserName() %></td>
        <td><%=dto.getUserDate() %></td>
        <td><%=dto.getUserCost() %></td>
        <td><%=dto.getUserTotal() %></td>
    </tr>
    <%
    }
    if (list.size() < 1) {
    %>
    <tr>
        <td colspan="3" class="no-records">내역이 없습니다.</td>
    </tr>
    <%
    }
    %>
</table>
</body>
</html>
	   
