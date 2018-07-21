<%@include file="common/header.jspf"%>
	
	
	<h1>Where do you stand?</h1>
	
	<h2>Dungeon-Finder 1.0</h2>
<div class="signUp">
		<button><a class="signup" href="signup">Click here to begin!</a></button>
	</div>
	<strong><div class="recentEntries">Current Participants:</div></strong>
	<div class= "resultSet">
	<c:forEach var="persons" items="${person}">
		<div class="recentResultsContainer">
		<c:out value="Submitted on: ${person.dateSubmitted}" />
		<div>
			<c:out value="By ${person.username}" />
		</div>
	</c:forEach>
	
<%@include file="common/footer.jspf"%>