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
        <title>Borrower ${borrower.firstName}&nbsp;${borrower.lastName}</title>
    </head>
    <body>
        <h1>${borrower.firstName}&nbsp;${borrower.lastName}</h1>
        <div>
            <g:if test="${borrowed.size()>0}">
                <p>List of books:</p>
                <div style="width:50%; float:left;">
                <table>
                    <tr><th>Tytuł</th><th>Autor</th><th>Data wydania</th><th>Status</th><th></th></tr>
                    <g:each in="${borrowed}" var="book">
                        <tr><td>${book.title}</td><td>${book.author}</td><td>${book.year}</td><td><asset:image src="${book.image}" width="50px"/></td><td><a href="/book/prepareBook/${book.id}">${book.act}</a></td></tr>
                    </g:each>
                </table>
                <p>${bookCount}&nbsp;books listed.</p>
            </div>
            </g:if>

        </div>
    </body>
</html>
