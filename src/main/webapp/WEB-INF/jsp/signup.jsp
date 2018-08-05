<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>

<c:url var="formAction" value="/result" />
<form method="POST" action="${formAction}">
	<div class="formInputGroup">
		<label for="first_name">First name:</label> <input type="text"
			name="first_name" id="first_name" />
	</div>
	<div class="formInputGroup">
		<label for="last_name">Last name:</label> <input type="text"
			name="last_name" id="last_name" />
	</div>
	<div class="formInputGroup">
		<label for="username">Username:(Required)</label> <input type="text"
			name="username" id="username" />
	</div>
	<div class="formInputGroup">
		<label for="gender">Gender:</label>
		<div class="radio-inline">
			<input type="radio" name="gender" id="genderM" value="M">
			Male
		</div>
		<div class="radio-inline">
			<input type="radio" name="gender" id="genderF" value="F">
			Female
		</div>
	</div>
	<h1>Pick your 5 Strengths</h1>
	<div id="strengthsJar">
		<div id="stJar">
			<p>Strategic Thinking</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="st-attribute" value="1:1">
				Analytical
			</label> <label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="st-attribute" value="1:2">
				Context
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="st-attribute" value="1:3">
				Futuristic
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="st-attribute" value="1:4">
				Ideation
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="st-attribute" value="1:5">
				Input
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="st-attribute" value="1:6">
				Intellection
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="st-attribute" value="1:7">
				Learner
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="st-attribute" value="1:8">
				Strategic
			</label>
		</div>
		<div id="eJar">
			<p>Executing</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:1">
				Achiever
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:2">
				Arranger
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:3">
				Belief
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:4">
				Consistency
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:5">
				Deliberative
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:6">
				Discipline
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:7">
				Focus
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:8">
				Responsibility
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="e-attribute" value="2:9">
				Restorative
			</label>
		</div>
		<div id="rbJar">
			<p>Relationship Building</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="rb-attribute" value="3:1">
				Adaptability
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="rb-attribute" value="3:2">
				Connectedness
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="rb-attribute" value="3:3">
				Developer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute[]" id="rb-attribute" value="3:4">
				Empathy
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="rb-attribute" value="3:5">
				Harmony
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="rb-attribute" value="3:6">
				Includer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="rb-attribute" value="3:7">
				Individualization
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="rb-attribute" value="3:8">
				Positivity
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="rb-attribute" value="3:9">
				Relator
			</label>
		</div>

		<div id="iJar">
			<p>Influencing</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="i-attribute" value="4:1">
				Activator
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="i-attribute" value="4:2">
				Command
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="i-attribute" value="4:3">
				Communication
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="i-attribute" value="4:4">
				Competition
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="i-attribute" value="4:5">
				Maximizer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="i-attribute" value="4:6">
				Self-Assurance
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="i-attribute" value="4:7">
				Significant
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attributes[]" id="i-attribute" value="4:8">
				Woo
			</label>
		</div>
	</div>
	<label for="submit"></label> <input
		class="formSubmitButton shrink btn btn-danger btn-lg center-block"
		type="submit" value="Submit to the sorting hat" />
</form>


<c:url var="backHome" value="/home" />
<form method="GET" action="${backHome}">
	<label for="submit"></label> <input
		class="backButton  shrink btn btn-danger btn-lg center-block"
		type="submit" value="Return to Home Screen" />
</form>

<%@include file="common/footer.jspf"%>