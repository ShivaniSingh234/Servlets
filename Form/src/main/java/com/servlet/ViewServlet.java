package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ViewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = (String) request.getAttribute("name");
        String email = (String) request.getAttribute("email");

        out.println("<!DOCTYPE html>");
        out.println("<html><head><title>Form Result</title>");
        out.println("<style>");
        out.println("body { font-family: Arial; background: #eef; display: flex; justify-content: center; align-items: center; height: 100vh; }");
        out.println("div { background: white; padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); text-align: center; }");
        out.println("h2 { color: #4CAF50; }");
        out.println("a { text-decoration: none; color: #4CAF50; font-weight: bold; }");
        out.println("</style></head><body>");
        out.println("<div>");
        out.println("<h2>Form Submitted Successfully!</h2>");
        out.println("<p><b>Name:</b> " + name + "</p>");
        out.println("<p><b>Email:</b> " + email + "</p>");
        out.println("<p><a href='index.html'>Go Back</a></p>");
        out.println("</div>");
        out.println("</body></html>");
    }
}
