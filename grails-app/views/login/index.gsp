<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="layout" content="main"/>
        <title>Login</title>
    </head>
    <body>
        
        <div style="margin-left: 30%; margin-top:15%;">
           <p>Login</p> 
            <g:form action="login">
                <fieldset>
                    <label for="username">Username:</label><input type="text" name="username"/>
                    <label for="password">Password:</label><input type="password" name="password"/>
                </fieldset>
                <input type="submit" value="Login"/>          
            </g:form>  
        </div>

    </body>
</html>
