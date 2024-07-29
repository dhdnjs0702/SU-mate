<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   				<button class="feed-add-button">글 작성하기</button>
   			</div>
            <div class="gender-selector">
                <button id="maleBtn" class="gender-btn selected">남</button>
                <button id="femaleBtn" class="gender-btn">여</button>
            </div>
            <div class="postit-board">
                <div class="postit">곧 만나요</div>
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