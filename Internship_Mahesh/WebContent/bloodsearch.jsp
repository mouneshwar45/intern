<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>search for blood group</title>
<script type="text/javascript">
javascript:window.history.forward(1);</script>
<link rel="StyleSheet" type="text/css" href="css/style.css">
</head>
<body>
<center>
<h2> Welcome to Blood search Page</h2>
<form action="BloodsearchServlet" method="post">
<%if (session.getAttribute("login")!=null){
	%>
<div id="search">
<pre>



<h3>Search Here </h3><select name="bgsearch">
<option value="" disabled selected>select value</option>
 <option value="A+">A Positive</option>
  <option value="A-">A Negative</option>
  <option value="AB+">AB Positive</option>
  <option value="AB-">AB Negative</option>
  <option value="O+">O Positive</option>
  <option value="O-">O Negative</option>
  <option value="B+">B Positive</option>
  <option value="B-">B Negative</option>
</select><input type="submit" value="search">
</pre>
</div>

<%
}else
{
	response.sendRedirect("login.jsp");
}%>
</form>
<script type="text/javascript">
<%
try{
String msg=request.getParameter("msg");
if(msg.equals("abcd"))
{
%>
alert("");
<%
}
else if(msg.equals("abc"))
{
%>
alert("blood group is unavailable");
<%
}

}
catch(Exception e)
{	
};

%>

</script>
</center>
</body>
</html>