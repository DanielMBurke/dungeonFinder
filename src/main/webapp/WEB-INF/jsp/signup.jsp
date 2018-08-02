<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf"%>

<c:url var="formAction" value="/result" />
<form method="GET" action="${formAction}" onsubmit="return is_checked()">
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
		<c:set var="law" value="0" />
		<c:set var="good" value="0" />
		<!-- needs logic when these boxes are selected (law value ++)(good value ++)-->
		<div id="stJar">
			<p>Strategic Thinking</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="st">
				Analytical
			</label> <label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="st">
				Context
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="st">
				Futuristic
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="st">
				Ideation
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="st">
				Input
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="st">
				Intellection
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="st">
				Learner
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="st">
				Strategic
			</label>
		</div>
		<!-- needs logic when these boxes are selected (law value ++)(good value --)-->
		<div id="eJar">

			<p>Executing</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Achiever
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Arranger
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Belief
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Consistency
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Deliberative
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Discipline
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Focus
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Responsibility
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="e">
				Restorative
			</label>
		</div>
		<!-- needs logic when these boxes are selected (law value --)(good value ++)-->
		<div id="rbJar">

			<p>Relationship Building</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Adaptability
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Connectedness
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Developer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Empathy
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Harmony
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Includer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Individualization
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Positivity
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="rb">
				Relator
			</label>
		</div>

		<!--needs logic when these boxes are selected (law value --)(good value --)-->
		<div id="iJar">

			<p>Influencing</p>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="i">
				Activator
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="i">
				Command
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="i">
				Communication
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="i">
				Competition
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="i">
				Maximizer
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="i">
				Self-Assurance
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="i">
				Significant
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="i">
				Woo
			</label>
		</div>
	</div>

	<!--	 final logic when all check boxes are added and return the alignment as a string-->
	<label for="submit"></label> <input
		class="formSubmitButton shrink btn btn-danger btn-lg center-block"
		type="submit" value="Submit to the sorting hat" />
</form>
<script>

    </script>

<c:url var="backHome" value="/home" />
<form method="GET" action="${backHome}">
	<label for="submit"></label> <input
		class="backButton  shrink btn btn-danger btn-lg center-block"
		type="submit" value="Return to Home Screen" />
</form>

<%@include file="common/footer.jspf"%>