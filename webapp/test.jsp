<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="account_4plus1.UserDAO"%>
<%@ page import="account_4plus1.UserDTO"%> 
<%@ page import="java.util.ArrayList"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="test.css">
<meta charset="EUC-KR">
<meta charset="utf-8">
<title>로그인</title>
</head>
<body>
	<p class="tip"></p>
	<div class="cont">
	  <div class="form sign-in">  
	    <h2>월간 가계부</h2>
	    
	    <form action="login.jsp" method="post">
		    <label>
		      <span>ID</span>
		       <input type="text" name="userId">
		    </label>
		    <label>
		      <span>Password</span>
		      <input type="password" name="password" />
		    </label>
		    <button type="submit" class="submit">Sign In</button>
	    </form>
	    
	  </div>
	  <div class="sub-cont">
	    <div class="img">
	      <div class="img__text m--up">
	        <h2>회원가입</h2>
	        
	      </div>
	      <div class="img__text m--in">
	        <h2>4쁠라스1</h2>
	        <p>저희는 경운대학교 디자인씽킹 수업의 일환으로 원간 가계부를 제작하고있습니다.</p>
	      </div>
	      <div class="img__btn">
	        <span class="m--up">Sign Up</span>
	        <span class="m--in">Sign In</span>
	        
	      </div>
	    </div>
	    
	    <div class="form sign-up">
	    <form action="./userInsert.jsp" method="post">
	      <h2>회원가입</h2>
	      <label>
	        <span>ID</span>
	        <input type="text" name="userId">
	      </label>
	      <label>
	        <span>Name</span>
	        <input type="text" name="userName">
	      </label>
	      <label>
	        <span>Password</span>
	        <input type="text" name="userPhone">
	      </label>
	      <button type="submit" class="submit">Sign Up</button>
	      </form>
	      
	    </div>
	  </div>
	</div>

	
	<script src="test.js"></script>
</body>
</html>