<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
	<title>Spring 4 MVC Hello World Example with Maven Eclipse</title>
	 
</head>
<body>

	<h2>Welcome, ${name}</h2>
	
	<c:forEach items="${users}" var="user">
		<c:out value="${user.username}"/>
	</c:forEach>
	
	
</body>
</html>