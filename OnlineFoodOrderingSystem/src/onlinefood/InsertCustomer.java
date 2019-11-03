package onlinefood;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertCustomer
 */
@WebServlet("/InsertCustomer")
public class InsertCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCustomer() {
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
			
		   String fnme=request.getParameter("fnme");
		   String lnme=request.getParameter("lnme");
		   String mail=request.getParameter("mail");
		   String pno=request.getParameter("pno");
		   String uname=request.getParameter("uname");
		   String pword=request.getParameter("pword");
		   String access=request.getParameter("access");
		   
		   
		  try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
			   Statement stmt=con.createStatement();
			   
			   
			   String sql="insert into customer_details(first_name,last_name,email,phone_number,username,password,authority) values('"+fnme+"','"+lnme+"','"+mail+"','"+pno+"','"+uname+"','"+pword+"','"+access+"')";
			   stmt.executeUpdate(sql);
			   response.sendRedirect("index.jsp");
			
			   
			con.close();
		   
		   }
		   
		   catch(Exception e) {
			   
		  System.out.println(e);
			   
			   
		   }
	}

}
