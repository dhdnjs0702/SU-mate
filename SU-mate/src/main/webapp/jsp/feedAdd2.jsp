<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="util.FileUtil" %>
<%@ page import="dao.FeedDAO" %>

<%
  String uid = null, ucon = null, ufname = null;
  byte[] ufile = null;
  request.setCharacterEncoding("utf-8");

  ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
  List items = sfu.parseRequest(request);
  Iterator iter = items.iterator();
  while(iter.hasNext()) {
	  FileItem item = (FileItem) iter.next();
	  String name = item.getFieldName();
	  if(item.isFormField()) {
	  	 String value = item.getString("utf-8");
	  	 if (name.equals("id")) uid = value;
	  	 else if (name.equals("content"))ucon = value;
	  	}
	    else {
	  	   if (name.equals("images")) {
	     	   ufname = item.getName();
	  		   ufile = item.get();
	  		   String root = application.getRealPath(java.io.File.separator);
	  		   FileUtil.saveImage(root, ufname, ufile);
	  		}
	  	}
  	 }
  
 	 FeedDAO dao = new FeedDAO();
     if (dao.insert(uid, ucon, ufname)) {
  	  response.sendRedirect("main.jsp"); //테스트용 jsp
  	 }
  	 else {
  		  out.print("작성 글의 업로드 중 오류가 발생하였습니다.");
	  }
%>