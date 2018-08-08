<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="common/header.jspf"%>

<%System.out.println(request.getAttribute("person")); %>
<%-- 
<c:url value="/signup" var="signupURL" />
<form:form action="${signupURL}" method="POST" modelAttribute="person">
	<div class="form-Group">
		<form:label path="firstName"> First name:</form:label>
		<form:input path="firstName" class="form-control"/>
		<form:errors path="firstName" class="error"/>
	</div>
	<div class="form-Group">
		<form:label path="lastName">Last name:</form:label>
		<form:input path="lastName" class="form-control"/>
		<form:errors path="lastName" class="error"/>
	</div>
	<div class="form-Group">
		<form:label path="username">Username:</form:label>
		<form:input path="username" class="form-control"/>
		<form:errors path="username" class="error"/>

	</div>
	<div class="form-Group">
		<form:label path="gender">Male</form:label>
		<form:input path="gender" class="radio-inline" id="genderM" value="M"/>
		<form:errors path="gender" class="error"/>

		<form:label path="gender">Female</form:label>
		<form:input path="gender" class="radio-inline" id="genderF" value="F"/>
		<form:errors path="gender" class="error"/>

	</div>
	<h1>Pick your 5 Strengths</h1>
	<div id="strengthsJar">
		<div id="stJar">
			<p>Strategic Thinking</p>
			<form:label path="attributes" class="checkbox-inline" for="usertype"></form:label>
			<input type="checkbox" name="attributes" id="st-attribute"
				value="1:1"> Analytical
			<form:input path="attributes" class="checkbox-inline" type="checkbox"
				name="attributes" id="st-attribute" value="1:2"></form:input>
			Context
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="st-attribute" value="1:3"></form:input>
			Futuristic
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="st-attribute" value="1:4"></form:input>
			Ideation
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="st-attribute" value="1:5"></form:input>
			Input
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="st-attribute" value="1:6"></form:input>
			Intellection
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="st-attribute" value="1:7"></form:input>
			Learner
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="st-attribute" value="1:8"></form:input>
			Strategic
		</div>
		<div id="eJar">
			<p>Executing</p>
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:1"></form:input>
			Achiever
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:2"></form:input>
			Arranger
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:3"></form:input>
			Belief
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:4"></form:input>
			Consistency
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:5"></form:input>
			Deliberative
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:6"></form:input>
			Discipline
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:7"></form:input>
			Focus
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:8"></form:input>
			Responsibility
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="e-attribute" value="2:9"></form:input>
			Restorative
		</div>
		<div id="rbJar">
			<p>Relationship Building</p>
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:1"></form:input>
			Adaptability
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:2"></form:input>
			Connectedness
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:3"></form:input>
			Developer
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:4"></form:input>
			Empathy
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:5"></form:input>
			Harmony
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:6"></form:input>
			Includer
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:7"></form:input>
			Individualization
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:8"></form:input>
			Positivity
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="rb-attribute" value="3:9"></form:input>
			Relator
		</div>

		<div id="iJar">
			<p>Influencing</p>
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:1"></form:input>
			Activator
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:2"></form:input>
			Command
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:3"></form:input>
			Communication
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:4"></form:input>
			Competition
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:5"></form:input>
			Maximizer
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:6"></form:input>
			Self-Assurance
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:7"></form:input>
			Significant
			<form:input path="attributes" type="checkbox" class="checkbox-inline"
				name="attributes" id="i-attribute" value="4:8"></form:input>
			Woo
		</div>
	</div>
	<label for="submit"></label>
	<input
		class="formSubmitButton shrink btn btn-danger btn-lg center-block"
		type="submit" value="Submit to the sorting hat" />
</form:form>


<c:url var="backHomeURL" value="/home" />
<form:form action="${backHomeURL}" method="GET" >
	<label for="submit"></label> <input class="backButton  shrink btn btn-danger btn-lg center-block"
		type="submit" value="Return to Home Screen" />
</form:form> --%>

<%@include file="common/footer.jspf"%>