<%@page import="java.util.Iterator"%>
<%@page import="onlinefood.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="onlinefood.Read_Values"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DC'S FOODS</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<center class="backgV">

<div class="wrapper">
			<div class="logo">
			<img src="images/logo.png" alt="">
			</div>
			<ul class="nav-area">
				<li><a href="./index.jsp">Home</a></li>
				<li><a href="./menu.jsp">Menu</a></li>
				<li><a href="./view.jsp">View</a></li>
				<li><a href="./about.jsp">About</a></li>
				
			</ul>
		</div>

<form action="controller/insert_controller.jsp">

</form>
<hr>
<%
Read_Values obj_Read_Values=new Read_Values();
List<User_Bean> list=obj_Read_Values.get_values();
Iterator<User_Bean> it_list=list.iterator();
%>
<table  align="center"  border="3">

<br><br><br><br><br><br><br><br>
 <tr>
    <th>Item Name</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Total Price</th>
  </tr>
  <%
while(it_list.hasNext()){
User_Bean obj_User_Bean=new User_Bean();
obj_User_Bean=it_list.next();
%>
<tr>
<td><%=obj_User_Bean.getItem_name() %></td>
<td><%=obj_User_Bean.getPrice() %></td>
<td><%=obj_User_Bean.getQuantity() %></td>
<td><%=obj_User_Bean.getTotal_price() %></td>
</tr>

<%
}
%>
</table>



<!--footer-->

<div class="footer">
  <div id="button"></div>
<div id="container">
<div id="cont">
<div class="footer_center">
	   <h3>DC'S FOODS</h3>
	 
		<p class="authority">Designed by - Dinuka Chinthana - &Author </p>
		
		<p class="footer-icons">
		<a href="https://www.facebook.com"><img src="images/fb.png" alt=""></a>   
		<a href="https://www.twitter.com"><img src="images/tw.png" alt=""></a>   
		<a href="https://www.linkedin.com"><img src="images/in.png" alt=""></a>   
		<a href="https://www.github.com"><img src="images/gh.png" alt=""></a>  
		</p>
		<p class="email-link"><a href="https://www.gmail.com">dinukachinthana@gmail.com</a></p>
</div>
</div>
</div>
</div>
</center>
</body>
</html>