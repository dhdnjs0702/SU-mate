<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.FeedDAO" %>
<%

//테스트 파일입니다.
	request.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("id");
	String ucon = request.getParameter("content");
	String uimages = request.getParameter("uimages");

	FeedDAO dao = new FeedDAO();
	if (dao.insert(uid, ucon, uimages)) {
		out.print("작성하신 글이 업로드되었습니다.");
	}
	else {
		out.print("작성 글의 업로드 중 오류가 발생하였습니다.");
	}
%>