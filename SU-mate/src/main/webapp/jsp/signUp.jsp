<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/main_styles.css">
</head>
<body>
 <div class="main-container">
<%@ include file="header.jsp" %>

  <div class="signup-section">
            <div class="divider"></div>
            <div class="signup-text">
                <h2>회원 가입</h2>
                <p>SU-mate에 가입하여 다양한 서비스를 이용해 보세요.</p>
                <form action="register.jsp" method="post" class="signup-form">
                    <div class="form-group">
                        <label for="username"><i class="icon icon-user"></i>아이디</label>
                        <input type="text" id="id" name="id" required>
                    </div>

                    <div class="form-group">
                        <label for="password"><i class="icon icon-lock"></i>비밀번호</label>
                        <input type="password" id="ps" name="ps" required>
                    </div>

                    <div class="form-group">
                        <label for="name"><i class="icon icon-user"></i>닉네임</label>
                        <input type="text" id="nickname" name="nickname" required>
                    </div>
                    

                    <div class="form-group">
                        <label for="gender"><i class="icon icon-gender"></i>성별</label>
                        <div class="gender-options">
                            <input type="radio" id="male" name="gender" value="male" required>
                            <label for="male">남자</label>
                            <input type="radio" id="female" name="gender" value="female" required>
                            <label for="female">여자</label>
                        </div>
                    </div>
                    
                    <button type="submit" class="signup-button">회원 가입</button>
                </form>
            </div>
            <div class="divider"></div>
        </div>


<%@ include file="footer.jsp" %>
</div>
</body>
</html>