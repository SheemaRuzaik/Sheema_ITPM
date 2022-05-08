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
 * Servlet implementation class Update Department
 */
@WebServlet("/UpdateDepartment")
public class UpdateDepartment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDepartment() {
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
		
		
		Department department=new Department();
		IPayroll ipayroll=new PayrollImpl();
		
		department.setDptid(request.getParameter("dpt_id"));
		department.setDptname(request.getParameter("dname"));
		department.setEmail(request.getParameter("email"));
		department.setDptNo(request.getParameter("dptno"));
		department.setContact(request.getParameter("phone"));
		department.setAddress(request.getParameter("address"));
		department.setStartdate(request.getParameter("startdate"));
		department.setType(request.getParameter("type"));
		
		
		ipayroll.updateDepartment(department);
		
		request.setAttribute("value", 1);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/DepartmentList.jsp");
		dispatcher.forward(request, response);
	}

}
