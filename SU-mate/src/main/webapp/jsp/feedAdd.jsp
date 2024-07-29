<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.FeedDAO" %>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	String ucon = request.getParameter("content");

	FeedDAO dao = new FeedDAO();
	if (dao.insert(uid, ucon)) {
		out.print("OK"); // response.sendRedirect("main.jsp");
	}
	else {
		out.print("ER"); // out.print("작성 글의... 오류가 발생하였습니다.");
	}
%>