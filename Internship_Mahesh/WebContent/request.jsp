<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request page</title>
<script type="text/javascript">
javascript:window.history.forward(1);

</script>
</head>
<body>

<form action="RequestServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<center>
<table border="10">
<tr>
<td colspan="2"><strong><en>&emsp;&emsp;Welcome to Request for donar</en></strong></td>
</tr>
<tr>
<td>please enter your email id </td>
<td><input type="email" name="emailid" placeholder="Enter email " maxlength="200" required="required">
</td>
</tr>
<tr>
<td>Please select the blood group</td>
<td><select name="bgname">
<option value="" disabled selected>select value</option>
<option>A+</option>
<option>A-</option>
<option>B+</option>
<option>B-</option>
<option>O+</option>
<option>O-</option>
<option>AB+</option>
<option>AB-</option>
</select>
<tr>
<td><input type="submit" value="request">
</td><td><input type="reset" value="cancel"></td>

</tr>
</table>
</center>
<script type="text/javascript">
<%
try{
	String msg=request.getParameter("msg");
	if(msg.equals("qwerty"))
	{
		%>
		alert("Donar contact details will be sent to your email");
		<%
		}
	
else if(msg.equals("abcd")||msg.equals("abc"))
{
	%>
	alert("try again");
	<%
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</script>
</form>

</body>
</html>