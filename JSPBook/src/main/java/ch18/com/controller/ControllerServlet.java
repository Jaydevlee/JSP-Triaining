package ch18.com.controller;

import java.io.IOException;

import ch18.com.model.LoginBean;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ControllerServlet extends HttpServlet {
	private static final long serialVesionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		LoginBean bean = new LoginBean();
		bean.setId(id);
		bean.setPassword(pw);
		request.setAttribute("bean", bean);
		
		boolean status = bean.validate();
		
		if(status) {
			RequestDispatcher rd = request.getRequestDispatcher("mvc_sucess.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("mvc_error.jsp");
			rd.forward(request, response);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
