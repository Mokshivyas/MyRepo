<<jsp:useBean id="ob" class="com.zensar.models.LoginBean" scope="request"></jsp:useBean>

<jsp:setProperty property="username" name="ob"/>
<jsp:setProperty property="password" name="ob" param="passwd"/>


<%


// invoke business logic of model
if(ob.validateUser())
{ %>
	<jsp:forward page="welcome.jsp"/>
<%}
else
{ %>
	<p>Invalid username or password!!</p>
	<jsp:include page="login.jsp"></jsp:include>
	
	
<%}


%>