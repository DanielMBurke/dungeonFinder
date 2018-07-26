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
	Gender:
	<div class="formInputGroup">
		<div class="radio-inline" for="usertype"> <input
			type="radio" name="gender" id="genderM" value="m"> Male
		</div> <div class="radio-inline"> <input type="radio"
			name="gender" id="genderF" value="f"> Female
		</div>
	</div>
	<div id="5-StrengthsJar">
		<div class="column">
			<h1>Strategic Thinking</h1>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label> <label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="st-attribute" value="1">
				Analytical
			</label>
		</div>
		<div class="column">
			<h1>Executing</h1>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="e-attribute" value="1">
				Analytical
			</label>
		</div>
		<div class="column">
			<h1>Relationship Building</h1>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="rb-attribute" value="1">
				Analytical
			</label>
		</div>
		<div class="column">
			<h1>Influencing</h1>
			<label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Analytical
			</label><label class="checkbox-inline" for="usertype"> <input
				type="checkbox" name="attribute" id="i-attribute" value="1">
				Analytical
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