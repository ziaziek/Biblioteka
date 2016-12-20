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
    </head>
    <body>
        <h1>New borrower</h1>

        <g:form action="create">
            <fieldset class="createform">
                <g:borrower var="${b}"/>
                <input type="submit" value="Save"/>
            </fieldset>
        </g:form>
        <script>$('#borrowerRegistrationDate').datepicker({dateFormat: 'yy-mm-dd'});</script>
    </body>
</html>
