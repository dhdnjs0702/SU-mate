<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
 request.setCharacterEncoding("utf-8");

String uid = request.getParameter("id");
String upass = request.getParameter("ps");
String unick = request.getParameter("nickname");
String gender = request.getParameter("gender");

//String sql = "INSERT INTO user(id, password, nickname, gender) VALUES (?, ?, ?, ?)";

//Class.forName("com.mysql.cj.jdbc.Driver");
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sumate?serverTimezone=UTC", "root", "1111");
UserDAO dao = new UserDAO();
if(dao.exists(uid)){
    out.print("이미 가입한 회원입니다");
   	return;
} if(dao.insert(uid, upass, unick, gender)) {
    out.print("회원 가입이 완료되었습니");
}
else{
	out.print("회원 가입 처리 중 오류가 발생하였습니다");
}
%>