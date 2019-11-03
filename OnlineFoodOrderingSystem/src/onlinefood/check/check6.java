package onlinefood.check;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import onlinefood.Card6_Bean;

/**
 * Servlet implementation class check6
 */
@WebServlet("/check6")
public class check6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check6() {
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


		  
		  String c11="Pasta";
		  String c12="$25.00";
		  String c13="1";
		  String c14="$50.0";
		 
		   
		   
		  try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
			   Statement stmt=con.createStatement();
			   
			   
			   String sql="insert into orders(item_name,price,quantity,total_price) values('"+c11+"','"+c12+"','"+c13+"','"+c14+"')";
			   stmt.executeUpdate(sql); 
			   response.sendRedirect("menu.jsp");
			   
			   con.close();
		   
		   }
		   
		   catch(Exception e) {
			   
		  System.out.println(e);
			   
			   
		   }
	
	
	}

}
