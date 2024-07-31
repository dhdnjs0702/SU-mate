<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %> 
<%@ page import="dao.FeedDAO_dumale" %>
<%@ page import="dao.FeedObj" %>

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
<%@ include file="header_login.jsp" %> <!-- 헤더 부분 -->

   <div class="content-section">
   			<div>
   				<button class="feed-add-button" href="../feedAdd_dumale.html">글 작성하기</button>
   			</div>
            <div class="gender-selector">
   				 <button id="maleBtn" data-gender="male" class="gender-btn selected" onclick="window.location.href='dusata_m.jsp'">남</button>
   				 <button id="femaleBtn" data-gender="female" class="gender-btn" onclick="window.location.href='dusata_f.jsp'">여</button>
			</div>
       		<%
  // 데이터베이스에서 글 리스트 가져오기
  ArrayList<FeedObj> feeds = (new FeedDAO_dumale()).getList();
  String str = "<div class='postit-container'>"; // postit-container로 감싸기

  for (FeedObj feed : feeds) {
    String img = feed.getImages(), imgstr = "";
    if (img != null) {
        imgstr = "<img src='images/" + img + "' alt='Post Image'>";
    }
    str += "<div class='postit'>"; // 각 글을 감싸는 postit div
    str += "<div><small>" + feed.getId() + "</small>&nbsp;<small>(" + feed.getTs() + ")</small></div>";
    str += "<div>" + imgstr + "</div>";
    str += "<div class='postit-content'>" + feed.getContent() + "</div>";
    str += "</div>"; // postit div 끝
  }
  str += "</div>"; // postit-container 끝
  out.print(str);
%>
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