package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Department;
import com.service.PayrollImpl;


/**
 * Servlet implementation class Department Register
 */
@WebServlet("/DepartmentRegister")
public class DepartmentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepartmentRegister() {
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
		PayrollImpl ipayroll=new PayrollImpl();
		
		department.setDptid(request.getParameter("dptid"));
		department.setDptname(request.getParameter("dptname"));
		department.setEmail(request.getParameter("email"));
		department.setDptNo(request.getParameter("dptno"));
		department.setContact(request.getParameter("phone"));
		department.setAddress(request.getParameter("address"));
		department.setStartdate(request.getParameter("startdate"));;
		department.setType(request.getParameter("type"));
	
		if(ipayroll.checkDptid(department.getDptid()) == false) {
			
			ipayroll.registerdepartment(department);
			
			request.setAttribute("value", "Department Added");
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/AddDepartment.jsp");
			dispatcher.forward(request, response);
		}
		else {
			request.setAttribute("value", "Department Exist");
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/AddDepartment.jsp");
			dispatcher.forward(request, response);
		}
	}

}
