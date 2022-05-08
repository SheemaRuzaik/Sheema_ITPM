package com.service;

import java.util.ArrayList;

import com.model.Department;


public interface IPayroll {

	// department
	
	public void registerdepartment(Department department);
	
	public Department getDepartment(String dptid);
	
	public void updateDepartment(Department department);
	
	public void DeleteDepartment(String dptid);
	
	public ArrayList<Department> ListDepartment();
	
	public ArrayList<Department> DeleteDepartment();
	
	public int totalDepartment();
		
	// Managers
	
	public Department manager(String department);
	
	// Validations
	
		public boolean checkDptid(String dptid);
		
		public boolean checkDpt(String dptid);
		
	
	
	
}
