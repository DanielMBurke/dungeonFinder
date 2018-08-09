<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>

<h1> <c:out value="Congratulations ${person.username}!"/> </h1>
<br>

<c:choose>
				<c:when test="${person.alignment == 'Lawful-Good'}">
					<c:set var="alignmentColor" value="lawful" />
				</c:when>
				<c:when test="${person.alignment == 'Lawful-Neutral'}">
					<c:set var="alignmentColor" value="lawful" />
				</c:when>
				<c:when test="${person.alignment == 'Lawful-Evil'}">
					<c:set var="alignmentColor" value="lawful" />
				</c:when>
				<c:when test="${person.alignment == 'Neutral-Good'}">
					<c:set var="alignmentColor" value="neutral" />
				</c:when>
				<c:when test="${person.alignment == 'True-Neutral'}">
					<c:set var="alignmentColor" value="neutral" />
				</c:when>
				<c:when test="${person.alignment == 'Neutral-Evil'}">
					<c:set var="alignmentColor" value="neutral" />
				</c:when>
				<c:when test="${person.alignment == 'Chaotic-Good'}">
					<c:set var="alignmentColor" value="chaotic" />
				</c:when>
				<c:when test="${person.alignment == 'Chaotic-Neutral'}">
					<c:set var="alignmentColor" value="chaotic" />
				</c:when>
				<c:when test="${person.alignment == 'Chaotic-Evil'}">
					<c:set var="alignmentColor" value="chaotic" />
				</c:when>
				<c:otherwise>
					<c:set var="alignmentColor" value="" />
				</c:otherwise>
			</c:choose>
			<div id="${alignmentColor}">
<h3> <c:out value="You are ${person.alignment}!"/></h3>
	<c:url var="alignPicURL" value="/img/${person.alignment}.jpg" />
      <img id="alignPic" src="${alignPicURL}" />
			</div>
<br>
  	
 <a href="home"><button class="shrink btn btn-danger btn-lg center-block" >Return to homepage</button></a> 
	
<%@include file="common/footer.jspf"%>