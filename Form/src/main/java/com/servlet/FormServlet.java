package com.servlet;

import java.io.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {
	 protected void doPost(HttpServletRequest req, HttpServletResponse res)
	            throws ServletException, IOException {

	        String name = req.getParameter("name");
	        String email = req.getParameter("email");

	        
	        req.setAttribute("name", name);
	        req.setAttribute("email", email);

	        
	        RequestDispatcher rd = req.getRequestDispatcher("view");
	        rd.forward(req, res);
	    }
}
