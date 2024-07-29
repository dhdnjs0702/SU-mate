<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>  <!-- 테스트용 파일입니다 -->
<%@ page import="dao.*" %>
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
<%
//테스트용 파일입니다.
  /*String uid = (String) session.getAttribute("id");
  if (uid == null) {
	  response.sendRedirect("index.jsp");
	return;
  }
  session.setAttribute("id", uid);
*/
  ArrayList<FeedObj> feeds = (new FeedDAO()).getList();
  String str = "<table align=center>";
  str += "<tr height=40><td><b>작성글 리스트</b></td>";
  str += "<td align=right>";
  str += "<a href='../feedAdd.html'><button>글쓰기</button></a>";
  str += "</td></tr>";
 
  for (FeedObj feed : feeds) {
	String img = feed.getImages(), imgstr ="";
    if (img != null) {
	    imgstr = "<img src='images/" + img + "' width=240>";
    }
	str += "<tr><td colspan=2><hr></td></tr>";
	str += "<tr>";
	str += "<td><small>" + feed.getId() + "</small></td>";
	str += "<td><small>&nbsp;(" + feed.getTs() + ")</small></td>";
	str += "</tr>";
	str += "<tr><td colspan=2>" + imgstr + "</td></tr>";
	str += "<tr><td colspan=2>" + feed.getContent() + "</td></tr>";
  }
  str += "</table>";
  out.print(str);
%>