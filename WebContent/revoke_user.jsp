<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.tabcontent {
  padding: 6px 12px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Revoke User</title>
</head>
<body>
<table>
<tr>
<td class="tabcontent"><a href='${home}'>Home</a></td> 
<td><a href="LogoutController">Logout</a></td>
				 </tr></table>
<h1>Revoke User</h1>
<form action="userStatusController" method="post">
<table>
<tr>
<td>User name:</td><td><input type="text" name="username"></td>

<tr><td><input type="submit" value="Revoke"></td></tr>
<tr><td>${successmessage}</td></tr>
</table>
</form>
</body>
</html>