package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Department;
import com.service.IPayroll;
import com.service.PayrollImpl;

/**
 * Servlet implementation class Get Department
 */
@WebServlet("/GetDepartment")
public class GetDepartment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDepartment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dptid = request.getParameter("dptid");
		IPayroll ipayroll = new PayrollImpl();
		
		
		if(ipayroll.checkDpt(dptid) == false) {
			
			request.setAttribute("value", "Department No");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ViewDepartment.jsp");
			dispatcher.forward(request, response);
		}else {
			Department department = new Department();
			department = ipayroll.getDepartment(dptid);
			
			request.setAttribute("department", department);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ViewDepartment.jsp");
			dispatcher.forward(request, response);
			
		}
	}

}
