package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Note;
import com.helper.factoryProvider;

import org.hibernate.Session;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteServlet() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int noteid=Integer.parseInt(request.getParameter("note_id").trim());
			Session s=factoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Note n=(Note)s.get(Note.class, noteid);
			s.delete(n);
			tx.commit();
			s.close();
			response.sendRedirect("Show_note.jsp");
			
		}catch(Exception e) {
			
		}
	}

	

}
