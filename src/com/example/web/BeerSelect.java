package com.example.web;

import com.example.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;


public class BeerSelect extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		//response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		//out.println("Beer selection advise <br>");
		String c= request.getParameter("color");
		//out.println("Got Beer color : " + c);
		
		BeerExpert be = new BeerExpert();
		List result = be.getBrands(c);
		//Iterator it = results.iterator();
		//while (it.hasNext()){
			//out.println("<br>try : " +it.next());
		//}
		request.setAttribute("styles", result);
		RequestDispatcher view = request.getRequestDispatcher("result.jsp");
		view.forward(request, response);
	}
}
