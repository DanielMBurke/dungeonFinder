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
<div class="resultSet">
	<c:forEach var="persons" items="${person}">
		<div class="recentResultsContainer">
			<c:out value="Submitted on: ${person.dateSubmitted}" />
		<c:out value="By ${person.username}" />
       </div>
</c:forEach>
</div>
<%@include file="common/footer.jspf"%>