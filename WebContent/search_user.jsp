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
<title>Search User</title>
</head>
<body>
<table>
<tr>
<td class="tabcontent"><a href='${home}'>Home</a></td> 
<td class="tabcontent"><a href='${home}'>Back</a></td> 
<td><a href="LogoutController">Logout</a></td>
				 </tr></table>
<h1>Search for user</h1>
<form action="searchUserController?action=search" method="get">
<table>
<tr>
<td>Last name:</td><td><input type="text" name="search_lastname"></td>
<td style="color:red;">${errorMessage.lastNameErrMsg}</td></tr>
</table>
<br/>
<input name="action" value="search" type="hidden" style="width: 100px; margin-left: 30px;">
	<input name="search" type="submit" value="Search" style="width: 100px; margin-left: 30px;" >
	<input type="reset" value="Reset" style="width: 100px; margin-left: 30px;">
</form>
</body>
</html>