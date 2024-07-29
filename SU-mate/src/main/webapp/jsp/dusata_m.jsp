<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 로그인 상태 확인
    String uid = (String) session.getAttribute("id");
    if (uid == null) {
%>
        <script type="text/javascript">
            alert("로그인 후 이용가능한 컨텐츠입니다.");
            window.location.href = "login.jsp"; // 로그인 페이지로 리다이렉트
        </script>
<%
        return; // JSP 페이지 실행 종료
    }

    // 로그인 상태인 경우 세션에 사용자 ID를 다시 설정 (필요에 따라)
    session.setAttribute("id", uid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/main_styles.css">
<link rel="stylesheet" href="../css/dusata.css">
</head>
<body>
<div class="main-container">
<%@ include file="header.jsp" %> <!-- 헤더 부분 -->

   <div class="content-section">
   			<div>
   				<button class="feed-add-button" href="../feedAdd.html">글 작성하기</button>
   			</div>
            <div class="gender-selector">
                <button id="maleBtn" class="gender-btn selected" href="dusata_m.jsp">남</button>
                <button id="femaleBtn" class="gender-btn" href="dusata_f.jsp">여</button>
            </div>
            <div class="postit-board">
                <div class="postit">남자 페이지</div>
                <div class="postit">곧 만나요</div>
                <div class="postit">곧 만나요</div>
                <div class="postit">곧 만나요</div>
                <div class="postit">곧 만나요</div>
                <div class="postit">곧 만나요</div>
                <div class="postit">곧 만나요</div>
                <div class="postit">곧 만나요</div>
            </div>
        </div>


<%@ include file="footer.jsp" %> <!-- 풋터 부분 -->
</div>

<script>
document.querySelector('.feed-add-button').addEventListener('click', () => {
            window.location.href = '../feedAdd.html';
        });
    </script>
</body>
</html>