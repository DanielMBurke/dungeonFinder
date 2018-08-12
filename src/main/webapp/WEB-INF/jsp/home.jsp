<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>

<div class="headJar">
	<h1>Where do you stand?</h1>
	<h2>Dungeon-Finder 1.0</h2>
</div>
<br>
<div class="signUp">
	<c:url var="signup" value="/signup" />
	<form method="GET" action="${signup}">
	<label for="submit"></label> 
	<input class="backButton  btn btn-danger btn-lg center-block" type="submit" value="Find out your alignment!" />
	</form>
</div>
<div class="participantsTitle">
	<strong>Current Participants:</strong>
</div>
<div id="resultSet">
	<c:forEach var="person" items="${person}">
		<div class="recentEntries">
			<c:out value="Submitted on: ${person.dateSubmitted}" />
			<div class="submitUser">
				<c:out value="By ${person.username}" />
			</div>
			<c:choose>
				<c:when test="${person.alignment == 'Lawful-Good'}">
					<c:set var="alignmentColor" value="lg" />
				</c:when>
				<c:when test="${person.alignment == 'Lawful-Neutral'}">
					<c:set var="alignmentColor" value="ln" />
				</c:when>
				<c:when test="${person.alignment == 'Lawful-Evil'}">
					<c:set var="alignmentColor" value="le" />
				</c:when>
				<c:when test="${person.alignment == 'Neutral-Good'}">
					<c:set var="alignmentColor" value="ng" />
				</c:when>
				<c:when test="${person.alignment == 'True-Neutral'}">
					<c:set var="alignmentColor" value="tn" />
				</c:when>
				<c:when test="${person.alignment == 'Neutral-Evil'}">
					<c:set var="alignmentColor" value="ne" />
				</c:when>
				<c:when test="${person.alignment == 'Chaotic-Good'}">
					<c:set var="alignmentColor" value="cg" />
				</c:when>
				<c:when test="${person.alignment == 'Chaotic-Neutral'}">
					<c:set var="alignmentColor" value="cn" />
				</c:when>
				<c:when test="${person.alignment == 'Chaotic-Evil'}">
					<c:set var="alignmentColor" value="ce" />
				</c:when>
				<c:otherwise>
					<c:set var="alignmentColor" value="" />
				</c:otherwise>
			</c:choose>
			<div id="${alignmentColor}">
				<c:out value="Alignment: ${person.alignment}" />
			</div>
			<br>
		</div>
	</c:forEach>
</div>
<%@include file="common/footer.jspf"%>