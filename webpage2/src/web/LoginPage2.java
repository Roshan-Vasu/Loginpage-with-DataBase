package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/test")
public class LoginPage2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn;
	PreparedStatement pst;
	ResultSet rst;
    
    public LoginPage2() {
    	try{
        	  Class.forName("com.mysql.jdbc.Driver");
        	  String url="jdbc:mysql://localhost:3306/loginpage";
        	  String username="root";
        	  String pwd="";
        	  conn=DriverManager.getConnection(url,username,pwd);
        	  pst=conn.prepareStatement("select * from login where username=? and password_login=?");
           }
           catch(Exception exp){
        	   exp.printStackTrace();
           }
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter write = response.getWriter();
		String un = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		try {
			pst.setString(1, un);
			pst.setString(2, pwd);
			
			rst=pst.executeQuery();
			
			if(rst.next()) {
				write.println("Welcome");
			}
			else {
				write.println("login failed");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
