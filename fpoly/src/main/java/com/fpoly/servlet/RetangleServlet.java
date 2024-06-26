package com.fpoly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RetangleServlet")
public class RetangleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RetangleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/retangle/form.jsp").forward(request, response);;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		double wid = Double.valueOf(request.getParameter("width"));
		double hei = Double.valueOf(request.getParameter("height"));
		
		double cv = (wid + hei) * 2;
		double dt = wid * hei;
		
		request.setAttribute("cv", cv);
		request.setAttribute("dt", dt);
		request.getRequestDispatcher("/views/retangle/success.jsp").forward(request, response);
	}

}
