<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="dao.StudentDAO"%>
<%@ page import="model.StudentModel"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>

   
    <jsp:include page="navbar.jsp" />
    <jsp:include page="header.jsp" />

    <style>
        .container {
            margin-top: 30px;
            margin-bottom: 30px;
        }

        h2 {
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-6 card mx-auto" style="margin-top: 20px;">
                <h2 class="text-center">Add Student</h2>
                <form action="AddStudent" method="POST">
                    <div class="form-group">
                        <label for="">Name</label>
                        <input type="text" class="form-control" name="name" placeholder="Name" required>
                    </div>
                    <div class="form-group">
                        <label for="">Address</label>
                        <input type="text" class="form-control" name="address" placeholder="Address"  required>
                    </div>
                    
                    <div class="form-group">
                        <label for="">Gender</label>
                        <select class="form-control" name="gender"   required>
                            <option value="" selected>Select</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            
                        </select>
                    </div>
                    
                    
                    <div class="col-md-6 mx-auto">
                        <button type="submit" class="btn btn-info" style="width: 100%;margin-bottom: 20px;">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

</body>

</html>
