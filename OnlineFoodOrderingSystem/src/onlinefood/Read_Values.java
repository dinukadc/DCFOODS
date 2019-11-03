package onlinefood;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import onlinefood.DB_Connection;
import onlinefood.User_Bean;

public class Read_Values {
	public static void main(String[] args) {
	Read_Values obj_Read_Values=new Read_Values();
	obj_Read_Values.get_values();
	}
	public List<User_Bean> get_values(){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<User_Bean> list=new ArrayList<User_Bean>();
		try {
		String querry="select * from orders";
		ps=connection.prepareStatement(querry);		
		rs=ps.executeQuery();
		while(rs.next()){
		  User_Bean obj_User_Bean=new User_Bean();
		  System.out.println(rs.getString("item_name"));
		  System.out.println(rs.getString("price"));
		  System.out.println(rs.getString("quantity"));
		  System.out.println(rs.getString("total_price"));
		  obj_User_Bean.setItem_name(rs.getString("item_name"));
	          obj_User_Bean.setPrice(rs.getString("price"));
		  obj_User_Bean.setQuantity(rs.getString("quantity"));
		  obj_User_Bean.setTotal_price(rs.getString("total_price"));
		list.add(obj_User_Bean);
		}
		} catch (Exception e) {
		System.out.println(e);
		}
		return list;
		}
}