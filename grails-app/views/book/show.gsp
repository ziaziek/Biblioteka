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
        <h1>${book.title} by ${book.author}</h1>
        <g:form action="save">
            <label for="title">Title: </label><input type="text" name="title" value="${book.title}"/>
            <label for="author">Author: </label><input type="text" name="author" value="${book.author}"/>
            <label for="year">Year: </label><input type="text" name="year" value="${book.year}"/> 
            <label for="regnumber">Reg. number: </label><input type="text" name="regnumber" value="${book.regnumber}"/>
            <input type="submit" value="Save"/>
            <input type="hidden" value="${book.id}" name="id"/>
        </g:form>
        <g:if test="${book.act=='Return'}">
            <div style="padding: 10px 0px 0px 10px;">
                <g:form action="prepareBook">
                <input type="submit" value="Return book"/>
                <input type="hidden" value="${book.id}" name="id"/>
            </g:form> 
            </div>
            
        </g:if>

    </body>
</html>
