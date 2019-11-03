package onlinefood;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheck() {
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
		
		   try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
			   Statement stmt=con.createStatement();
			   
			   String usr=request.getParameter("usr");
			   String pwd=request.getParameter("pwd");
			   
			   String sql="SELECT *FROM customer_details WHERE username='"+usr+"'and password='"+pwd+"'";
			   ResultSet rs=stmt.executeQuery(sql);
			   PrintWriter out = response.getWriter();
			   
			if(rs.next())
			{
				String userType = rs.getString("authority");
                if (userType.equals("User")){
                	
                response.sendRedirect("menu.jsp");
                
                }
                else if (userType.equals("Admin")){
                
                response.sendRedirect("A_menu.jsp");
                	
                }
			}
			else{    
				con.close();
				  out.println("<script type=\"text/javascript\">");
			      out.println("alert('User or password incorrect');");
			      out.println("location='index.jsp';");
			      out.println("</script>");
			     
			}
			
		   }
		   catch(Exception e) {
			   
			   System.out.println(e);
			   
			   
		   }
		}
}
