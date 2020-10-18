package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;


import java.sql.PreparedStatement;

import connection.connection;
import model.StudentModel;

public class StudentDAO {
	
	public static List<StudentModel> getAllStudent() throws SQLException{
		
		List<StudentModel> student = new LinkedList<>();	
		ResultSet rs;
		
		rs=connection.getPreparedStatement("select * from student").executeQuery();
		
		while(rs.next()) {
			StudentModel stu = new StudentModel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			student.add(stu);
		}
		
		return student;
			
	}
	
	public static void addStudent(StudentModel EM) throws SQLException {
		String sql = "insert into `student` (`name`,`address`,`gender`) values('"+ EM.getName()+"','"+EM.getAddress ()+"','"+EM.getGender()+"')";
		PreparedStatement ps=connection.getPreparedStatement(sql);
		ps.executeUpdate();
	}
	
	public static void deleteStudent(int studentID) throws SQLException {
		String sql = "delete from `student` where studentID="+studentID;
		PreparedStatement ps=connection.getPreparedStatement(sql);
		ps.executeUpdate();
	}
	
	public static StudentModel getStudentById(int studentID) throws SQLException {
		StudentModel EM;
		String sql = "select * from student where studentID="+studentID;
		ResultSet rs = connection.getPreparedStatement(sql).executeQuery();
		rs.next();
		EM = new StudentModel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
		return EM;
		
	}
	
	public static void UpdateStudent(StudentModel EM) throws SQLException {
		String sql = "update `student` set`name`='"+ EM.getName()+"',`address`='"+EM.getAddress()+"',`gender`='"+EM.getGender()+"' where studentID="+EM.getStudentID();
		PreparedStatement ps=connection.getPreparedStatement(sql);
		ps.executeUpdate();
	}
	

}
