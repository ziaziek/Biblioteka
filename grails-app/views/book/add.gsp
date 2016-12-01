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
        <title>Add new booke</title>
    </head>
    <body>
        
        <p>${message}</p>
        <g:form action="create">
            <fieldset class="createform">
              <h1>Add new book</h1>  
            <label for="title">Author:</label><input type="text" name="author"/><br/>
            <label for="title">Title:</label><input type="text" name="title"/><br/>
            <label for="year">Year:</label><input type="text" name="year"/><br/>
            <label for="regnumber">Reg number:</label><input type="text" name="regnumber"/><br/>
            <input type="submit" value="Save"/>
            </fieldset>
            
        </g:form>
    </body>
</html>
