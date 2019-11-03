package onlinefood;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class cardUpdate
 */
@WebServlet("/cardUpdate")
public class cardUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cardUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   String sloId=request.getParameter("sloId");
		   String itemname=request.getParameter("itemname");
		   String iprice=request.getParameter("iprice");
		   String Itype=request.getParameter("Itype");
		   String recipe=request.getParameter("recipe");
		   String img=request.getParameter("img");
		 
		   
		   
		  try {
			   Class.forName("com.mysql.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
			   
			   String update="UPDATE food_card set item_name= '"+itemname+"',item_price= '"+iprice+"',item_type= '"+Itype+"',recipe= '"+recipe+"',image= '"+img+"' WHERE slot_id= '"+sloId+"'";
			   PreparedStatement pst=con.prepareStatement(update);
	           pst.execute();
			   response.sendRedirect("A_menu.jsp");
			   
			
			   
			con.close();
		   
		   }
		   
		   catch(Exception e) {
			   
		  System.out.println(e);
			   
			   
		   }
	}

}
