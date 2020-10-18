<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="dao.StudentDAO"%>
<%@ page import="model.StudentModel"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit </title>

    <jsp:include page="navbar.jsp" />
    <jsp:include page="header.jsp" />

    <style>
        .container {
            margin-top: 30px;
        }

        h2 {
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>

</head>

<body>

<% 
String id = request.getParameter("studentID");
int studentID = Integer.parseInt(id);
StudentModel EM = StudentDAO.getStudentById(studentID);
%>

    <div class="container">
        <div class="row">
            <div class="col-md-6 card mx-auto">
                <h2 class="text-center">Update Details</h2>
                <form action="EditStudent" method="POST">

    
                    <input type="hidden" name="studentID" value='<%=EM.getStudentID() %>' />
                    <div class="form-group">
                        <label for="">Name</label>
                        <input type="text" class="form-control" name="name"
                            value='<%=EM.getName() %>' required>
                    </div>
                    <div class="form-group">
                        <label for="">address</label>
                        <input type="text" class="form-control" name="address"
                            value='<%=EM.getAddress() %>' required>
                    </div>
                   
                    <div class="form-group">
                        <label for="">Gender</label>
                        <select class="form-control" name="gender" required>
                            <option selected><%=EM.getGender() %></option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </div>
                    <div class="col-md-6 mx-auto">
                        <button type="submit" class="btn btn-info"
                            style="width: 100%;margin-bottom: 20px;">Submit</button>
                    </div>
 

                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

</body>

</html>

