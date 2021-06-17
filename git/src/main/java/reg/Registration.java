package reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Registration extends HttpServlet {
	Connection conn;
	PreparedStatement pst;
	ResultSet rst;
    public Registration() {
    	try{
      	  Class.forName("com.mysql.jdbc.Driver");
      	  String url="jdbc:mysql://localhost:3306/loginpage";
      	  String username="root";
      	  String pwd="";
      	  conn=DriverManager.getConnection(url,username,pwd);
      	  pst=conn.prepareStatement("insert into login value(?,?,?)");
         }
         catch(Exception exp){
      	   exp.printStackTrace();
         }
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter write = response.getWriter();
		String un = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String email= request.getParameter("email");
		
		try {
			pst.setString(1, un);
			pst.setString(2, pwd);
			pst.setString(3, email);
			
			int x=pst.executeUpdate();
			
			if(x==1) {
				write.println("Registered");
			}
			else {
				write.println("Registered failed");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
