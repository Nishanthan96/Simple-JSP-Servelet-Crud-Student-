<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="dao.StudentDAO"%>
<%@ page import="model.StudentModel"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentJSPCrud</title>

<jsp:include page="navbar.jsp" />
<jsp:include page="header.jsp" />
<link rel="stylesheet" href="css/jquery-dataTables.min.css">

<style>
.container-fluid {
	margin-top: 30px;
	margin-bottom: 30px;
}

h2 {
	margin-top: 20px;
	margin-bottom: 20px;
}

th {
	width: 400px;	
}
.header{
	background-color: rgb(11, 141, 43) !important;
}

.table {
	display: block;
	overflow-x: auto;
	overflow-y: auto;
	white-space: nowrap;
}
</style>

</head>
<body>

	<!-- View Student list -->
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<h2 class="text-center">Student List</h2>

				<table
					class="table table-hover table-bordered table-responsive table-success"
					id="student">
					<thead>
						<tr>
							<th class="text-center header">ID</th>
							<th class="text-center header">Name</th>
							<th class="text-center header">Address</th>
							<th class="text-center header">Gender</th>
						</tr>
					</thead>
					<tbody>

						<%
							List<StudentModel> student = StudentDAO.getAllStudent();
						Iterator<StudentModel> EM = student.iterator();

						while (EM.hasNext()) {
							StudentModel emp = EM.next();
						%>

						<tr>
							<td class="text-center"><%=emp.getStudentID()%></td>
							<td class="text-center"><%=emp.getName()%></td>
							<td class="text-center"><%=emp.getAddress()%></td>
							<td class="text-center"><%=emp.getGender()%></td>
							
							<td class="text-center">
								<a class="btn btn-warning" href="edit_student.jsp?studentID=<%=emp.getStudentID()%>">Edit</a>
								<a class="btn btn-danger" href="DeleteStudent?studentID=<%=emp.getStudentID()%>">Delete</a>
							</td>
						</tr>

						<%
							}
						%>
					</tbody>
				</table>



			</div>
			
		</div>
		
	</div>
	<div class="row">
			<div class="col">
				<a class="btn btn-primary" style="float: right;"
					href="add_student.jsp">Add Student</a>
			</div>

	<jsp:include page="footer.jsp" />
	<script src="js/jquery.js"></script>
	<script src="js/jquery-dataTables.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#student').dataTable();
		})
	</script>
</body>
</html>