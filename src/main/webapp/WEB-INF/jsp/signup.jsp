<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>


<c:url var="formAction" value="/result" />
<form method="POST" action="${formAction}">
	<div class="formInputGroup">
		<label for="firstname">First name:</label> <input type="text"
			name="firstname" id="firstname" />
	</div>
	<div class="formInputGroup">
		<label for="lastname">Last name:</label> <input type="text"
			name="lastname" id="lastname" />
	</div>
	<div class="formInputGroup">
		<label for="username">Username:(Required)</label> <input type="text"
			name="username" id="username" />
	</div>
	<div class="formInputGroup">
		<label for="gender">Gender:</label>
		<div class="radio-inline">
			<input type="radio" name="gender" id="genderM" value="m">
			Male
		</div>

		<div class="radio-inline">
			<input type="radio" name="gender" id="genderF" value="f">
			Female
		</div>
	</div>
	<h1>Pick your 5 Strengths</h1>
	<div id="strengthsJar">
		<div class="columnJar1">
			<p>Strategic Thinking</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label> <label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Context
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Futuristic
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Ideation
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Input
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Intellection
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Learner
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Strategic
			</label>
		</div>
		<div class="columnJar2">
			<p>Executing</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Achiever
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Arranger
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Belief
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Consistency
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Deliberative
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Discipline
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Focus
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Responsibility
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Restorative
			</label>
		</div>
		<div class="columnJar3">
			<p>Relationship Building</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Adaptability
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Connectedness
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Developer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Empathy
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Harmony
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Includer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Individualization
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Positivity
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Relator
			</label>
		</div>
		<div class="columnJar4">
			<p>Influencing</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Activator
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Command
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Communication
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Competition
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Maximizer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Self-Assurance
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Significant
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Woo
			</label>
		</div>
			</div>
	


	<label for="submit"></label> <input class="formSubmitButton"
		type="submit" value="Submit to the sorting hat" />
</form>

<c:url var="backHome" value="/home" />
<form method="GET" action="${backHome}">
	<label for="submit"></label> <input class="backButton" type="submit"
		value="Return to Home Screen" />
</form>


<%@include file="common/footer.jspf"%>