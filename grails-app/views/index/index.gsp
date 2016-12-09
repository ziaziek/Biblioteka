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
        <asset:stylesheet src="application.css"/>
    </head>
    <body>
        <div style="margin-left: 30%; margin-top:15%;">
            <g:if test="${nf!=null}">
                <p class="error">The number you entered could not be found.<br/>Please try again.</p>
            </g:if>
         <g:form action="find">
             <SPAN>Enter number:</span><br/>
             <input type="text" name="number" size="50" autofocus="true"/>
            <input type="submit" value="Search"/>
        </g:form>   
        </div>
    </body>
</html>
