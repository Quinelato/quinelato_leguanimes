<%@ page import="entities.User"%>
<!doctype html>
<html>
<head>
<g:set var="entityName" value="Leguanimes Login" />
<title><g:message code="Leguanimes Login" args="[entityName]" /></title>

<style>
html {
	background: #0866C6;
	width: 100%;
	height: 100%;
}

.login-body fieldset {
	border: none;
	line-height: 40px;
}

#login {
	display: block;
	border: 1px solid #0c57a3;
	padding: 10px;
	background: #0972dd;
	width: 100%;
	color: #fff;
	text-transform: uppercase;
}

#login:hover {
	background: rgba(255, 255, 255, 0.2);
	color: #fff;
	-o-transition: .5s;
	-ms-transition: .5s;
	-moz-transition: .5s;
	-webkit-transition: .5s;
	/* ...and now for the proper property */
	transition: .5s;
}

.loginpanel {
	position: absolute;
	top: 50%;
	left: 50%;
	height: 300px;
}

.loginpanelinner {
	position: relative;
	top: -150px;
	left: -50%;
}

.loginpanelinner .logo {
	text-align: center;
	padding: 20px 0;
}

input.loginfields {
	height: 40px;
	font-size: 15px;
	padding: 5px 20px;
}

div {
	margin-bottom: 10px;
}

a {
	color: #ccc;
	float: right;
	margin: -5px 15px 0 0;
	text-decoration: none;
	font-size: 14px;
}

a:hover {
	color: #fff
}
</style>
</head>
<body>
	<div class="loginpanel">
		<div class="loginpanelinner">
			<div class="login-body">
				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
				</g:if>
				<g:form action="authenticate">
					<fieldset>
						<div
							class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
							<input type="text" id="username" name="username"
								placeholder="Digite seu login" size="50px" class="loginfields">
						</div>

						<div
							class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} loginfields">
							<input type="password" id="password" name="password"
								placeholder="Digite sua senha" size="50px" class="loginfields">
						</div>
					</fieldset>
					<fieldset class="botoes">
						<g:submitButton name="login" value="Login" />
					</fieldset>
					<g:link url="[action:'create', controller:'user']">Cadastre</g:link>
				</g:form>
			</div>
		</div>
	</div>
</body>
</html>