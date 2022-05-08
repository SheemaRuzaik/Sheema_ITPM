<%@page import="com.service.PayrollImpl"%>
<%@page import="com.service.IPayroll"%>
<%@page import="com.model.Department"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>View Department</title>

    <!-- Custom fonts for this template-->
    <link href="css/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    
    <!-- Bootstrap link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
    <!-- Form Style -->
    <link rel="stylesheet" href="css/form.css">
    
    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="User&PayrollDashboard.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Manager User & Payroll<sup></sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="User&PayrollDashboard.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
             <!-- Nav Employees Details -->
            <li class="nav-item">
                <a class="nav-link" href=" Employees.jsp">
                    <i class="fas fa-fw fa-home"></i>
                    <span> Employees</span></a>
            </li>
            
             <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item  active">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-users"></i>
                    <span>Department</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Department:</h6>
                        <a class="collapse-item  active" href="AddDepartment.jsp">Add New Department</a>
                        <a class="collapse-item" href="ViewDepartment.jsp">View Department</a>
                        <a class="collapse-item" href="DepartmentList.jsp">Department List</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Leave Approval</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Leave:</h6>
                        <a class="collapse-item" href="AddLeaveRequest.jsp">Add Leave</a>
                        <a class="collapse-item" href="LeaveRequestList.jsp">Leave List</a>
                        <a class="collapse-item " href="ViewEmployeeLeave.jsp">Employee Leave List</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Attendance Details -->
            <li class="nav-item">
                <a class="nav-link" href="EnterAttendance.jsp">
                    <i class="fas fa-fw fa-file"></i>
                    <span>Monthly Attendance</span></a>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>PayRoll</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Payroll:</h6>
                        <a class="collapse-item" href="CalculateSalary.jsp">Calculate Salary</a>
                        <a class="collapse-item" href="Payroll.jsp">Payroll</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Three Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsethree"
                    aria-expanded="true" aria-controls="collapsethree">
                    <i class="fas fa-fw fa-file"></i>
                    <span>Monthly Finance</span>
                </a>
                <div id="collapsethree" class="collapse" aria-labelledby="headingthree"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Monthly Finance:</h6>
                        <a class="collapse-item" href="SaveFinance.jsp">Save Monthly Finance</a>
                        <a class="collapse-item" href="FinanceList.jsp">Monthly Finances List</a>
                    </div>
                </div>
            </li>
            

            <!-- Divider -->
            <hr class="sidebar-divider">
            
            <div class="sidebar-heading">
                Report
            </div>
            
            <!-- Nav Monthly Salary Details -->
            <li class="nav-item">
                <a class="nav-link" href="ViewSalaryDetails.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>View Salary</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter"></span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                
                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter"></span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>
                        <% 	Department dpt1 = new Department();
                       
                       		IPayroll ipayroll1 = new PayrollImpl();
                       
                       		dpt1 = ipayroll1.manager("User & Payroll Management");
                      	%>

                        <!-- Nav Item - User Information -->
                        
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-home fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Home
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                
                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">View Department Details</h1>
                    <a href="DepartmentList.jsp"><button class="btn btn-success" style="margin-left: 500px; height: 50px; width: 180px;">Department List</button></a>
                </div>
                
                
                	<%Department dpt = (Department) request.getAttribute("department"); %>
                	
                <!-- Search Employee -->
                <form action="./GetDepartment" method="post">
							
					<div class="row">
					<div class="col-half">
					<div class="input-group input-group-icon">
						<input type="text" name="dptid" id="dptid" placeholder="Department ID" pattern="[E]+[0-9]{4}" title="EXXXX" required>
						<div class="input-icon"><i class="fa fa-lock"></i></div>
					</div>
					</div>
					</div>
							
					<button type="submit" class="btn btn-success" style="height: 50px; width: 120px;">Search</button>
							
						
				</form>
				<br>
				<br>
				<% if(dpt != null  && dpt.getDptNo() != null) { %>
				
				<!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Details of <%=dpt.getDptid() %></h1>
                </div>
                <br>
                	
				<form action="./UpdateDepartment" method="post">
								
					<div class="row">
					<div class="col-half">
						<h4>Department Name</h4>
						<div class="input-group ">
							<input type="text" name="dname" id="dname" value="<%=dpt.getDptname()%>" title="can change">
						</div>
					</div>
								
					<div class="col-half">
						<h4>Email Address</h4>
						<div class="input-group ">
							<input type="email" name="email" id="email" value="<%=dpt.getEmail()%>" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" title="can change">
						</div>
					</div>
					</div>
								
					<div class="row">
					<div class="col-half">
						<h4>Department Number</h4>
						<div class="input-group ">
							<input type="text" name="dptNo" id="dptNo" value="<%=dpt.getDptNo()%>" readonly title="can't change">
						</div>
					</div>
								
					<div class="col-half">
						<h4>Department Phone Number</h4>
						<div class="input-group ">
							<input type="tel" name="phone" id="phone" value="<%=dpt.getContact()%>" pattern="[0-9]{10}" title="can change">
						</div>
					</div>
					</div>
								
					<div class="row">
					<div class="col-half">
						<h4>Department Address</h4>
						<div class="input-group ">
							<input type="text" name="address" id="address" value="<%=dpt.getAddress()%>" title="can change">
						</div>
					</div>
								
					<div class="col-half">
						<h4>Start date</h4>
						<div class="input-group ">
							<input type="date" name="strartdate" id="strartdate" value="<%=dpt.getStartdate()%>" readonly title="can't change">
						</div>
						</div>
					</div>
								
					<div class="row">
					
					
					<div class="col-half">
						<h4>Type</h4>
						<div class="input-group ">
							<input type="text" name="type" id="type" value="<%=dpt.getType()%>" readonly title="can't change">
						</div>
					</div>
					</div>
								
					<div class="row">
					
								
					
					</div>
					
					<br><br>		
					<input type="hidden" name="dpt_id" value="<%=dpt.getDptid() %>">
								
						<button type="submit" class="btn btn-success" style="height: 50px; width: 180px;">Save Changes</button>
										
				</form>
				<br>
							
				<form action="./DeleteDepartment" method="post">
								
					<input type="hidden" name="dptid" value="<%=dpt.getDptid() %>">
								
						<button type="submit" class="btn btn-danger" style="height: 50px; width: 180px;" id="deletebtn">Deactivate Account</button>
						
						<br><br>
				</form>
						
				<%} %>
                
                <!-- End search Employee -->
                
                </div>
	            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="Login.jsp">Logout</a>
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- Core plugin JavaScript-->
    <script src="js/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    
    <script type="text/javascript">
    
    	var i = '${value}';
    	
    	if(i == "Department No"){
    		alert('Sorry! Department Id is not exist');
    	}
    </script>

</body>

</html>