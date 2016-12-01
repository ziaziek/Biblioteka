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
        <title>Edit borrower</title>
    </head>
    <body>
        <h1>Edit borrower</h1>
        <g:form action="save?id=${b.id}">
            <g:borrower var="${b}"/>
            <input type="submit" value="Save"/>
        </g:form>
    </body>
</html>
