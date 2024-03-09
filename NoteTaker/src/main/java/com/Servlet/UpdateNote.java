package com.Servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Note;
import com.helper.factoryProvider;


public class UpdateNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateNote() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title1=request.getParameter("title");
			String text1=request.getParameter("text");
			int nid=Integer.parseInt(request.getParameter("noteId").trim());
			Session s=factoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Note note=(Note)s.get(Note.class,nid);
			note.setTitle(title1);
			note.setContent(text1);
			note.setAddedDate(new Date());
			s.getTransaction();
			s.save(note);
			tx.commit();
			s.close();
			response.sendRedirect("Show_note.jsp");
			
		}catch(Exception e) {
			System.out.println(e);
		}	
	}

}
