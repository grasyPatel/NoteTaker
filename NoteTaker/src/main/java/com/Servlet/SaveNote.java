package com.Servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entity.Note;
import com.helper.factoryProvider;



public class SaveNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SaveNote() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("text");
			Note note=new Note(title,content, new Date());
			Session s=factoryProvider.getFactory().openSession();
			s.beginTransaction();
			s.save(note);
			s.getTransaction().commit();
			s.close();
			response.sendRedirect("addnote.jsp");
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
			
			
		}
	}

}
