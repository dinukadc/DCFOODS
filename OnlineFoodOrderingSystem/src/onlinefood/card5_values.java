package onlinefood;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import onlinefood.DB_Connection;
import onlinefood.Card5_Bean;

public class card5_values {

	public static void main(String[] args) {
		Read_Values obj_Read_Values=new Read_Values();
		obj_Read_Values.get_values();
		}
		public List<Card5_Bean> get_values(){
			DB_Connection obj_DB_Connection=new DB_Connection();
			Connection connection=obj_DB_Connection.get_connection();
			PreparedStatement ps=null;
			ResultSet rs=null;
			List<Card5_Bean> list=new ArrayList<Card5_Bean>();
			try {
			String querry="SELECT * FROM food_card WHERE slot_id='s5'";
			ps=connection.prepareStatement(querry);		
			rs=ps.executeQuery();
			if(rs.next()){
			  Card5_Bean obj_Card5_Bean=new Card5_Bean();
			  System.out.println(rs.getString("item_name"));
			  System.out.println(rs.getString("item_price"));
			  System.out.println(rs.getString("item_type"));
			  System.out.println(rs.getString("recipe"));
			  System.out.println(rs.getString("image"));
			  
			  obj_Card5_Bean.setItem_name(rs.getString("item_name"));
		          obj_Card5_Bean.setItem_price(rs.getString("item_price"));
			  obj_Card5_Bean.setItem_type(rs.getString("item_type"));
			  obj_Card5_Bean.setRecipe(rs.getString("recipe"));
			  obj_Card5_Bean.setImage(rs.getString("image"));
			list.add(obj_Card5_Bean);
			}
			} catch (Exception e) {
			System.out.println(e);
			}
			return list;
			}

}
