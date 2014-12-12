<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
</head>
<body>
	<g:form controller="user" action="handlelogin">
		<label> Login: </label>
		<input type="text" placeholder="Login" name="username">
		<label> Password: </label>
		<g:field type="password" name="password" maxlength="20" required=""
			value="" placeholder="password" />
			
			<input type="submit" value="Logar" />
	</g:form>
</body>
</html>
