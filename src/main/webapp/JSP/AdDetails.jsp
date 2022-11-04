<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var= "adv" items="${AdDetails}">
	
	${adv.adId}	<!-- 	internally calls getadId getter -->
	${adv.vendorId}
	${adv.price}
	${adv.desc}
	${adv.attach} 
	
	</c:forEach>
</body>
</html>