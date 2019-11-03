<%@page import="java.util.Iterator"%>
<%@page import="onlinefood.Card1_Bean"%>
<%@page import="onlinefood.Card2_Bean"%>
<%@page import="onlinefood.Card3_Bean"%>
<%@page import="onlinefood.Card4_Bean"%>
<%@page import="onlinefood.Card5_Bean"%>
<%@page import="onlinefood.Card6_Bean"%>
<%@page import="onlinefood.Card7_Bean"%>
<%@page import="onlinefood.Card8_Bean"%>
<%@page import="java.util.List"%>
<%@page import="onlinefood.card1_values"%>
<%@page import="onlinefood.card2_values"%>
<%@page import="onlinefood.card3_values"%>
<%@page import="onlinefood.card4_values"%>
<%@page import="onlinefood.card5_values"%>
<%@page import="onlinefood.card6_values"%>
<%@page import="onlinefood.card7_values"%>
<%@page import="onlinefood.card8_values"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DC'S FOODS</title>
<link rel="stylesheet" href="style.css">
<script src="store.js" async></script>
</head>
<body>
<header class="backg">
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
card1_values obj_card1_values=new card1_values();
List<Card1_Bean> list=obj_card1_values.get_values();
Iterator<Card1_Bean> it_list=list.iterator();
%>
<%
card2_values obj_card2_values=new card2_values();
List<Card2_Bean> list2=obj_card2_values.get_values();
Iterator<Card2_Bean> it_list2=list2.iterator();
%>
<%
card3_values obj_card3_values=new card3_values();
List<Card3_Bean> list3=obj_card3_values.get_values();
Iterator<Card3_Bean> it_list3=list3.iterator();
%>
<%
card4_values obj_card4_values=new card4_values();
List<Card4_Bean> list4=obj_card4_values.get_values();
Iterator<Card4_Bean> it_list4=list4.iterator();
%>
<%
card5_values obj_card5_values=new card5_values();
List<Card5_Bean> list5=obj_card5_values.get_values();
Iterator<Card5_Bean> it_list5=list5.iterator();
%>
<%
card6_values obj_card6_values=new card6_values();
List<Card6_Bean> list6=obj_card6_values.get_values();
Iterator<Card6_Bean> it_list6=list6.iterator();
%>
<%
card7_values obj_card7_values=new card7_values();
List<Card7_Bean> list7=obj_card7_values.get_values();
Iterator<Card7_Bean> it_list7=list7.iterator();
%>
<%
card8_values obj_card8_values=new card8_values();
List<Card8_Bean> list8=obj_card8_values.get_values();
Iterator<Card8_Bean> it_list8=list8.iterator();
%>
		<!--cart button-->
		
<div class="cart">
	<a href="#" id="cart"><img src="images/cart.png" alt=""></a>
</div>

<!--cart popup window-->
		  
		<div class="c-window">
		<div class="c-close-content">
		   <img src="images/cancel.png" alt="Cancel" class="cancel">
		  </div>
		<div class="c-window-content">
		  <div class="container content-section">
			<h2 class="section-header">CART</h2>
            <div class="cart-row">
                <span class="cart-item cart-header cart-column">ITEM</span>
                <span class="cart-price cart-header cart-column">PRICE</span>
                <span class="cart-quantity cart-header cart-column">QUANTITY</span>
            </div>
			<!--cart item add-->
			
            <div class="cart-items">
			
			</div>
			<!--cart item close-->
			
            <div class="cart-total">
                <strong class="cart-total-title">Total</strong>
                <span class="cart-total-price">$0</span>
            </div>
            <button class="btn btn-primary btn-purchase" type="button">PURCHASE</button>
		     
		  </div>
		</div>
		</div>
	<!--cart popup end-->
		
		<!--add menu slot inside all class-->
 

 
		<div class="heading">_________SEASON'S SPECIAL__________</div>
  
   <div class="all">	
 
<%
if(it_list.hasNext()){
Card1_Bean obj_Card1_Bean=new Card1_Bean();
obj_Card1_Bean=it_list.next();
%>		
	<!--card1-->
  
	<div class="product">
		<div class="imgbox">
			<img class="p-img" src="<%=obj_Card1_Bean.getImage() %>">
		</div>
		<div class="specifice">
			<h2 class="sp-head"><%=obj_Card1_Bean.getItem_name() %><br><span><%=obj_Card1_Bean.getItem_type() %></span></h2>
			<div class="price"><%=obj_Card1_Bean.getItem_price() %></div>
			<h3>Recipe<br><span><%=obj_Card1_Bean.getRecipe() %></span></h3>
			<button class="buy" type="button">Add to Cart</button>
		</div>
	</div>
	
	
		<%
}
%>
<%
if(it_list2.hasNext()){
Card2_Bean obj_Card2_Bean=new Card2_Bean();
obj_Card2_Bean=it_list2.next();
%>	
	<!--card2-->
 	
	<div class="product2">
		<div class="imgbox">
			<img class="p-img" src="<%=obj_Card2_Bean.getImage() %>">
		</div>
		<div class="specifice">
			<h2 class="sp-head"><%=obj_Card2_Bean.getItem_name() %><br><span><%=obj_Card2_Bean.getItem_type() %></span></h2>
			<div class="price"><%=obj_Card2_Bean.getItem_price() %></div>
			<h3>Recipe<br><span><%=obj_Card2_Bean.getRecipe() %></span></h3>
		<button class="buy" type="button">Add to Cart</button>
		</div>
	</div>
	
	<%
}
%>	
<%
if(it_list3.hasNext()){
Card3_Bean obj_Card3_Bean=new Card3_Bean();
obj_Card3_Bean=it_list3.next();
%>	
	<!--card3-->
		
	<div class="product3">
		<div class="imgbox">
			<img  class="p-img" src="<%=obj_Card3_Bean.getImage() %>">
		</div>
		<div class="specifice">
			<h2 class="sp-head"><%=obj_Card3_Bean.getItem_name() %><br><span><%=obj_Card3_Bean.getItem_type() %></span></h2>
			<div class="price"><%=obj_Card3_Bean.getItem_price() %></div>
			<h3>Recipe<br><span><%=obj_Card3_Bean.getRecipe() %></span></h3>
			<button class="buy" type="button">Add to Cart</button>
		</div>
	</div>
	
	<%
}
%>	
<%
if(it_list4.hasNext()){
Card4_Bean obj_Card4_Bean=new Card4_Bean();
obj_Card4_Bean=it_list4.next();
%>			
   <!--card4-->

   <div class="product4">
		<div class="imgbox">
			<img  class="p-img" src="<%=obj_Card4_Bean.getImage() %>">
		</div>
		<div class="specifice">
			<h2 class="sp-head"><%=obj_Card4_Bean.getItem_name() %><br><span><%=obj_Card4_Bean.getItem_type() %></span></h2>
			<div class="price"><%=obj_Card4_Bean.getItem_price() %></div>
			<h3>Recipe<br><span><%=obj_Card4_Bean.getRecipe() %></span></h3>
				<button class="buy" type="button">Add to Cart</button>
		</div>
	</div>

<%
}
%>	

<%
if(it_list5.hasNext()){
Card5_Bean obj_Card5_Bean=new Card5_Bean();
obj_Card5_Bean=it_list5.next();
%>	
	 <!--card5-->
    	
	<div class="product5">
		<div class="imgbox">
			<img class="p-img" src="<%=obj_Card5_Bean.getImage() %>">
		</div>
		<div class="specifice">
			<h2 class="sp-head" ><%=obj_Card5_Bean.getItem_name() %><br><span><%=obj_Card5_Bean.getItem_type() %></span></h2>
			<div class="price"><%=obj_Card5_Bean.getItem_price() %></div>
			<h3>Recipe<br><span><%=obj_Card5_Bean.getRecipe() %></span></h3>
				<button class="buy" type="button">Add to Cart</button>
		</div>
	</div>
	
<%
}
%>	

<%
if(it_list6.hasNext()){
Card6_Bean obj_Card6_Bean=new Card6_Bean();
obj_Card6_Bean=it_list6.next();
%>
	 <!--card6-->
    <form method="post" action="check6"> 	
	<div class="product6">
		<div class="imgbox">
			<img class="p-img" src="<%=obj_Card6_Bean.getImage() %>">
		</div>
		<div class="specifice">
			<h2 class="sp-head" ><%=obj_Card6_Bean.getItem_name() %><br><span><%=obj_Card6_Bean.getItem_type() %></span></h2>
			<div class="price"><%=obj_Card6_Bean.getItem_price() %></div>
			<h3>Recipe<br><span><%=obj_Card6_Bean.getRecipe() %></span></h3>
			<input type="submit" class="buy" value="Add to Cart">
		</div>
	</div>
	</form>
<%
}
%>	
<%
if(it_list7.hasNext()){
Card7_Bean obj_Card7_Bean=new Card7_Bean();
obj_Card7_Bean=it_list7.next();
%>	
	
	
		<!--card7-->
 <form method="post" action="check7">   
	<div class="product7">
		<div class="imgbox">
			<img class="p-img" src="<%=obj_Card7_Bean.getImage() %>">
		</div>
		<div class="specifice">
			<h2 class="sp-head"><%=obj_Card7_Bean.getItem_name() %><br><span><%=obj_Card7_Bean.getItem_type() %></span></h2>
			<div class="price"><%=obj_Card7_Bean.getItem_price() %></div>
			<h3>Recipe<br><span><%=obj_Card7_Bean.getRecipe() %></span></h3>
			<input type="submit" class="buy" value="Add to Cart">
		</div>
	</div>
	</form>
<%
}
%>	
<%
if(it_list8.hasNext()){
Card8_Bean obj_Card8_Bean=new Card8_Bean();
obj_Card8_Bean=it_list8.next();
%>
		<!--card8-->
   <form method="post" action="check8">   
	<div class="product8">
		<div class="imgbox">
			<img class="p-img" src="<%=obj_Card8_Bean.getImage() %>">
		</div>
		<div class="specifice">
			<h2 class="sp-head" ><%=obj_Card8_Bean.getItem_name() %><br><span><%=obj_Card8_Bean.getItem_type() %></span></h2>
			<div class="price"><%=obj_Card8_Bean.getItem_price() %></div>
			<h3>Recipe<br><span><%=obj_Card8_Bean.getRecipe() %></span></h3>
			<input type="submit" class="buy" value="Add to Cart">
		</div>
	</div>
	
	</form>
<%
}
%>	
  	
</div>
	<script>
		
		document.getElementById("cart").addEventListener("click",function()
		{
		document.querySelector(".c-window").style.display = "flex";
		document.querySelector(".all").style.display = "none";
		document.querySelector(".cancel").style.display = "flex";
		document.querySelector(".c-close-content").style.display = "flex";
			
		})
		document.querySelector(".cancel").addEventListener("click",function()
		{
			document.querySelector(".c-window").style.display = "none";
			document.querySelector(".all").style.display = "flex";
			document.querySelector(".cancel").style.display = "none";
			document.querySelector(".c-close-content").style.display = "none";
			document.location.reload(true);
		})
		</script>

	


</header>
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

</body>
</html>