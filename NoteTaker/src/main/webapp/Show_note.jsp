
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
<title>Shoe Note</title>
</head>
<body>
<div>
     <%@include file="navbar.jsp" %>
     <br>
     <h2 class="heading">ALL NOTES:</h2>
  </div>
  <div class="container">
     <div class="row">
         <div class="col-12">
         <% Session s=factoryProvider.getFactory().openSession(); 
         Query q=s.createQuery("From Note");
         List<Note> l=q.list();
         for(Note n:l){
        %>
        <br>
        <br>
        <div class="card">
        <img class="card-img-top" src="img/notes.png" style="width: 10%; height: 10%; margin: 1px auto;" alt="Card image cap">
           <div class="card-body">
              <h5 class="card-title"><%=n.getTitle() %></h5>
              <p class="card-text">Created on: <%=n.getAddedDate()%></p>
              <hr style="border: 1px solid #ccc; width: 25%; margin-left: 5px;"/>
                  <p class="card-text"><%=n.getContent() %></p>
                      <a href="DeleteServlet?note_id=<%=n.getId() %>" class="btn btn-secondary ">DELETE</a>
                       <a href="edit.jsp?note_id=<%=n.getId() %>" class="btn btn-primary ">UPDATE</a>
          </div>
       </div>
        
        
        
        <%	
         }
         %>
           
         </div>
     </div>
  
  
  </div>

</body>
</html>