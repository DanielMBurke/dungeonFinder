<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>


<h1> <c:out value="${person.username} you are ${person.alignment}"/></h1>
  	
 <a href="home"><button>Return to homepage</button></a> 
	
<%@include file="common/footer.jspf"%>