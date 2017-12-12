<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
javascript:window.history.forward(1);</script>
</head>
<body>
<form action="LoginServlet" method="post">
<jsp:include page="header.jsp"></jsp:include>
<h2><center>
<strong><en>&nbsp;&nbsp;&nbsp;&nbsp;Login Page</en></strong></center></h2><center>

<table style="margin:0 auto;">
<tr>
<td>Emailid:</td>
<td><input type="email" name="emailid" placeholer="Enter Emailid" maxlength="100" required="required">
</td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password" placeholer="Enter password" maxlength="100" required="required">
</td>
</tr>
<tr><td></td>
<td><input type="submit" value="Login">
<input type="reset" value="Refresh"></td>
</tr>
<tr>
<td><a href="forgotpassword.jsp">ForGot Password!!</a></td>
</tr>
</table>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
<%
try{
String msg=request.getParameter("msg");
if(msg.equals("abcd"))
{
%>
alert(" all fields are mandatory");
<%
}
else if(msg.equals("abc"))
{
%>
alert("Password does not match");
<%
}

}
catch(Exception e)
{	
};

%>

</script>

</body>
</html>