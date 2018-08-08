<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="common/header.jspf"%>

<%System.out.println(request.getAttribute("person")); %>
<c:url value="/signup" var="signupURL" />
<form:form action="${signupURL}" method="POST" modelAttribute="person">
	<div class="form-Group">
		<form:label path="firstName"> First name:</form:label>
		<form:input path="firstName" class="form-control" />
		<form:errors path="firstName" class="error" />
	</div>
	<div class="form-Group">
		<form:label path="lastName">Last name:</form:label>
		<form:input path="lastName" class="form-control" />
		<form:errors path="lastName" class="error" />
	</div>
	<div class="form-Group">
		<form:label path="username">Username:</form:label>
		<form:input path="username" class="form-control" />
		<form:errors path="username" class="error" />

	</div>
	<div class="form-Group">
		<form:label path="gender">Male</form:label>
		<form:radiobutton path="gender" class="radio-inline" value="M" />
		<form:errors path="gender" class="error" />

		<form:label path="gender">Female</form:label>
		<form:radiobutton path="gender" class="radio-inline" value="F" />
		<form:errors path="gender" class="error" />

	</div>
	<h1>Pick your 5 Strengths</h1>
	<div id="strengthsJar">
		<div id="stJar">
			<p>Strategic Thinking</p>
			<input type="checkbox" name="attributes" id="st-attribute"
				value="1:1"> Analytical <input name="attributes"
				class="checkbox-inline" type="checkbox" id="st-attribute"
				value="1:2"></input> Context <input name="attributes"
				type="checkbox" class="checkbox-inline" id="st-attribute"
				value="1:3"></input> Futuristic <input name="attributes"
				type="checkbox" class="checkbox-inline" name="attributes"
				id="st-attribute" value="1:4"></input> Ideation <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="st-attribute" value="1:5"></input> Input <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="st-attribute" value="1:6"></input> Intellection <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="st-attribute" value="1:7"></input> Learner <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="st-attribute" value="1:8"></input> Strategic
		</div>
		<div id="eJar">
			<p>Executing</p>
			<input name="attributes" type="checkbox" class="checkbox-inline"
				id="e-attribute" value="2:1"></input> Achiever <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="e-attribute" value="2:2"></input> Arranger <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="e-attribute" value="2:3"></input> Belief <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="e-attribute" value="2:4"></input> Consistency <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="e-attribute" value="2:5"></input> Deliberative <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="e-attribute" value="2:6"></input> Discipline <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="e-attribute" value="2:7"></input> Focus <input name="attributes"
				type="checkbox" class="checkbox-inline" id="e-attribute" value="2:8"></input>
			Responsibility <input name="attributes" type="checkbox"
				class="checkbox-inline" name="attributes" id="e-attribute"
				value="2:9"></input> Restorative
		</div>
		<div id="rbJar">
			<p>Relationship Building</p>
			<input name="attributes" type="checkbox" class="checkbox-inline"
				id="rb-attribute" value="3:1"></input> Adaptability <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="rb-attribute" value="3:2"></input> Connectedness <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="rb-attribute" value="3:3"></input> Developer <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="rb-attribute" value="3:4"></input> Empathy <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="rb-attribute" value="3:5"></input> Harmony <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="rb-attribute" value="3:6"></input> Includer <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="rb-attribute" value="3:7"></input> Individualization <input
				name="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:8"></input> Positivity
			<input name="attributes" type="checkbox" class="checkbox-inline"
				id="rb-attribute" value="3:9"></input> Relator
		</div>

		<div id="iJar">
			<p>Influencing</p>
			<input name="attributes" type="checkbox" class="checkbox-inline"
				id="i-attribute" value="4:1"></input> Activator <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="i-attribute" value="4:2"></input> Command <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="i-attribute" value="4:3"></input> Communication <input
				name="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:4"></input> Competition
			<input name="attributes" type="checkbox" class="checkbox-inline"
				id="i-attribute" value="4:5"></input> Maximizer <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="i-attribute" value="4:6"></input> Self-Assurance <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="i-attribute" value="4:7"></input> Significant <input
				name="attributes" type="checkbox" class="checkbox-inline"
				id="i-attribute" value="4:8"></input> Woo
		</div>
	</div>
	<label for="submit"></label>
	<input
		class="formSubmitButton shrink btn btn-danger btn-lg center-block"
		type="submit" value="Submit to the sorting hat" />
</form:form>


<c:url var="backHomeURL" value="/home" />
<form:form action="${backHomeURL}" method="GET">
	<label for="submit"></label>
	<input class="backButton  shrink btn btn-danger btn-lg center-block"
		type="submit" value="Return to Home Screen" />
</form:form>

<%@include file="common/footer.jspf"%>