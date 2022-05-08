package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Department;
import com.util.DBConnection;

public class PayrollImpl implements IPayroll{

	private static Connection connection;
	private static PreparedStatement pt;
	
	
	
	// department
	
	// ------------Add new department------------
	@Override
	public void registerdepartment(Department department) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Department(Dpt_Id,DptName,Email,DptNo,Contact,Address,Startdate,Type) values(?,?,?,?,?,?,?,?)");
			pt.setString(1, department.getDptid());
			pt.setString(2, department.getDptname());
			pt.setString(3, department.getEmail());
			pt.setString(4, department.getDptNo());
			pt.setString(5, department.getContact());
			pt.setString(6, department.getAddress());
			pt.setString(7, department.getStartdate());
			pt.setString(8, department.getType());
			
			
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// ------------Delete department------------
	@Override
	public void DeleteDepartment(String dptid) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Department set Status=? where Dpt_Id=?");
			pt.setString(1, "Exit");
			pt.setString(2,dptid);
			pt.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}
	
	// ------------Retrieve department details------------
	@Override
	public Department getDepartment(String dptid) {
		// TODO Auto-generated method stub
		
		Department department=new Department();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Department where Dpt_Id=?");
			pt.setString(1, dptid);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				department.setDptid(result.getString(1));
				department.setDptname(result.getString(2));
				department.setEmail(result.getString(3));
				department.setDptNo(result.getString(4));
				department.setContact(result.getString(5));
				department.setStartdate(result.getString(6));
				department.setAddress(result.getString(7));
				department.setType(result.getString(8));
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return department;
	}

	// ------------Update department details------------
	@Override
	public void updateDepartment(Department department) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Department set DptName=?,Email=?,DptNo=?,Contact=?,Address=?,Startdate=?,Type=?,Department=? where Emp_Id=?");
			pt.setString(1, department.getDptname());
			pt.setString(2, department.getEmail());
			pt.setString(3, department.getDptNo());
			pt.setString(4, department.getContact());
			pt.setString(5, department.getAddress());
			pt.setString(6, department.getStartdate());
			pt.setString(8, department.getType());
			
			pt.setString(11, department.getDptid());
			
			pt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// ------------department List------------
	@Override
	public ArrayList<Department> ListDepartment() {
		// TODO Auto-generated method stub
		ArrayList<Department> departments=new ArrayList<>();
		   
        
       	   
        return departments;

	}

	

	// ------------Total Number Of department------------
	@Override
	public int totalDepartment() {
		
		int total = 0;
		
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select count(*) from Department where Status=?");
			pt.setString(1, "Active");
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				total = result.getInt(1);
			}
		}catch (Exception e) {
				
			}
		return total;
	}

	@Override
	public Department manager(String department) {
		// TODO Auto-generated method stub
		return null;
	}


	// Validations
	
		// ------------Check Department------------
		@Override
		public boolean checkDptid(String dptid) {
			// TODO Auto-generated method stub
			boolean find=false;
			
			try {
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select * from Department where Dpt_Id=?");
				pt.setString(1, dptid);
				ResultSet res = pt.executeQuery();
				find=res.next();
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return find;
		}

		@Override
		public boolean checkDpt(String dptid) {
			// TODO Auto-generated method stub
			return false;
		}

		@Override
		public ArrayList<Department> DeleteDepartment() {
			// TODO Auto-generated method stub
			return null;
		}
	

	
}
