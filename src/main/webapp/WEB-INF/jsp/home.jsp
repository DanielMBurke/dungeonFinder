<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>

<div class="headJar">
	<h1>Where do you stand?</h1>
	<h2>Dungeon-Finder 1.0</h2>
</div>
<div class="signUp">
	<a href="signup"><button>Click here to begin!</button></a>
</div>
<div class="recentEntries">
	<strong>Current Participants:</strong>
</div>
<div id="resultSet">
	<c:forEach var="person" items="${person}">
		<div class="recentResultsContainer">
			<c:out value="Submitted on: ${person.dateSubmitted}" />
			<div>
				<c:out value="By ${person.username}" />
			</div>
			<c:choose>
				<c:when test="${person.alignment == 'Lawful-Good'}">
					<c:set var="alignmentColor" value="lg" />
				</c:when>
				<c:otherwise>
					<c:set var="alignmentColor" value="" />
				</c:otherwise>
			</c:choose>
			<div id="${alignmentColor}">
				<c:out value="Alignment: ${person.alignment}" />
			</div>
		</div>
	</c:forEach>
</div>
<%@include file="common/footer.jspf"%>