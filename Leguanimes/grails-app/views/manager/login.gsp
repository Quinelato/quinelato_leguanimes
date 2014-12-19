<%@ page import="entities.User" %>
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

    #email, #senha {
        height: 30px;
        width: 250px;
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

    #login:hover{
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
    </style>
</head>
<body>
<div class="loginpanel">
    <div class="loginpanelinner">
        <div class="logo">
            <g:img dir="images" file="logo.png" />
        </div>
        <div class="login-body">
            <g:form action="authenticate">
                <fieldset>
                    <div
                            class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
                        <input type="text" id="username" name="username"
                               placeholder="Digite seu login" size="50px">
                    </div>

                    <div
                            class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
                        <input type="password" id="password" name="password"
                               placeholder="Digite sua senha" size="50px">
                    </div>
                </fieldset>
                <fieldset class="botoes">
                    <g:submitButton name="login" value="Login" />
                </fieldset>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>