<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main"/>
        <title>Books</title>
    </head>
    <body>


        <div>
            <p>Aktualny spis książek</p>
            <div style="float:left; height:50px; padding-top:10px; padding-bottom:2px;"><a href="/book/add">Add new book</a></div>
            <div style="width:100%; float:left; ">
                <g:form action="index">
                   <g:searchbox id="searchbox"/><br/> 
                </g:form>
                <div style="max-height: 300px; overflow: auto; padding-top:10px;">
                    <g:bookslist books="${books}"/>
                </div>
            </div>

        </div>
    </body>
</html>
