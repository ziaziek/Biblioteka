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
                <g:bookslist books="${borrowed}"/>
            </div>
            </g:if>

        </div>
    </body>
</html>
