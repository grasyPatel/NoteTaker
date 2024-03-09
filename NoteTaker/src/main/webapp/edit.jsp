<%@page import="com.helper.factoryProvider"%>
<%@page import="org.hibernate.Query" %>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Session" %>
<%@page import="com.entity.Note" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <link href="style.css" rel="stylesheet"/>
<title>editPage</title>
</head>
<body>
    <div>
     <%@include file="navbar.jsp" %>
     <br>
     <h2 class="heading">EDIT YOUR NOTE:</h2>
  </div>
    <div class="container">
    <% int noteid=Integer.parseInt(request.getParameter("note_id").trim());
	    Session s=factoryProvider.getFactory().openSession(); 
	    Note n=(Note)s.get(Note.class, noteid);
	%>
	 <form method="post" action="UpdateNote">
	 <input value="<%=n.getId()%>" name="noteId" type="hidden">
  <div class="form-group">
    <label for="title">Title</label>
    <input  name="title" required type="text" class="form-control" id="title" aria-describedby="title" 
    placeholder="Enter title here" value="<%=n.getTitle() %>">
   
  </div>
  <div class="form-group">
    <label for="content">Description</label>
    <textarea required name="text" placeholder="Enter content here" id="content" class="form-control"
     style="height:300px"><%=n.getContent() %></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary" >UPDATE</button>
  </div>
</form>
    </div>

</body>
</html>