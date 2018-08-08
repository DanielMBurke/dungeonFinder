<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="common/header.jspf"%>

<%
	System.out.println(request.getAttribute("person"));
%>
<c:url value="/signup" var="signupURL" />
<form:form action="${signupURL}" method="POST" modelAttribute="person">
	<div class="form-Group">
		<form:label path="firstName" > First name:</form:label>
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
		<form:label path="gender">Gender:</form:label>
		
		<form:radiobutton path="gender" class="radio-inline" value="M" label="Male"/>
		<form:errors path="gender" class="error" />

		<form:radiobutton path="gender" class="radio-inline" value="F" label="Female"/>
		<form:errors path="gender" class="error" />

	</div>
	<h1>Pick your 5 Strengths</h1>
	<div id="strengthsJar">
		<div id="stJar">
			<p>Strategic Thinking</p>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="st-attribute" value="1:1">Analytical
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="st-attribute"  value="1:2">Context 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="st-attribute"  value="1:3">Futuristic 
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="st-attribute"  value="1:4">Ideation 
			</label>	
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="st-attribute"  value="1:5">Input 
			</label>		
			<label class="checkbox-inline">	
				<input type="checkbox" name="attributes" id="st-attribute"  value="1:6">Intellection 
			</label>		
			<label class="checkbox-inline">	
				<input type="checkbox" name="attributes" id="st-attribute"  value="1:7">Learner 
			</label>		
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="st-attribute"  value="1:8">Strategic
			</label>
				
		</div>
		<div id="eJar">
			<p>Executing</p>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:1">Achiever 
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:2">Arranger
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:3">Belief 
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:4">Consistency 
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:5">Deliberative 
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:6">Discipline 
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:7">Focus 
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:8">Responsibility 
			</label>
			<label class="checkbox-inline">
				<input type="checkbox" name="attributes" id="e-attribute" value="2:9">Restorative
			</label>
		</div>
		<div id="rbJar">
			<p>Relationship Building</p>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:1">Adaptability 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:2">Connectedness 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:3">Developer 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:4">Empathy 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:5">Harmony 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:6">Includer 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:7">Individualization 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:8">Positivity
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="rb-attribute" value="3:9">Relator
			</label>
		</div>

		<div id="iJar">
			<p>Influencing</p>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="i-attribute" value="4:1">Activator 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="i-attribute" value="4:2">Command 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="i-attribute" value="4:3">Communication 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="i-attribute" value="4:4">Competition
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="i-attribute" value="4:5">Maximizer 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="i-attribute" value="4:6">Self-Assurance 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="i-attribute" value="4:7">Significant 
			</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="attributes" id="i-attribute" value="4:8">Woo
			</label>
			
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