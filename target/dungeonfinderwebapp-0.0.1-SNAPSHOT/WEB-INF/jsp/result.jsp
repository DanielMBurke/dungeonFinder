<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>

<h1> <c:out value="Congratulations ${person.username}!"/> </h1>
<br>
<h2> <c:out value="You are ${person.alignment}!"/></h2>
  	
 <a href="home"><button>Return to homepage</button></a> 
	
<%@include file="common/footer.jspf"%>