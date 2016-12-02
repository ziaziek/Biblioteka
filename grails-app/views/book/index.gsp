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
                    <table>         
                        <thead><th>Title</th><th>Author</th><th>Year</th><th>Status</th><th>Action</th><th>Show</th></thead>
                            <g:each in="${books}" var="book">
                            <tr><td>${book.title}</td><td>${book.author}</td><td>${book.year}</td><td><asset:image src="${book.image}" width="50px"/></td>
                            <td><a href="<g:createLink action="prepareBook" id="${book.id}"/>">${book.act}</a></td><td><a href="<g:createLink action="show" id="${book.id}"/>">Show</a></td></tr>
                            </g:each>
                    </table>
                </div>
                <p>${bookCount}&nbsp;books listed.</p>
            </div>

        </div>
    </body>
</html>
