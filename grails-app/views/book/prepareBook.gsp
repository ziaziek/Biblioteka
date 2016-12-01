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
        <title>Book lend out</title>
    </head>
    <body>
        <h1>${book.title}</h1>
        <div style="width:100%; float:left;">
            Available users:
                <table>
                    <tr><th>First name</th><th>Last name</th><th>Lend out</th></tr>
                    <g:each in="${borrowers}" var="b">
                        <tr><td>${b.firstName}</td><td>${b.lastName}</td><td><a href="/book/lendOut?userId=${b.id}&book=${book.id}"><asset:image src="giving.jpg" width="50px"/></a></td></tr>
                    </g:each>
                </table>
            </div>
    </body>
</html>
