<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
    </head>
    <body>
        <h1>Books borrowed</h1>
        <ul>
        <g:each var="b" in="${books}">
            <li>${b.title}</li>
            </g:each>
        </ul>
        <p>Altogether ${count} positions</p>
    </body>
</html>
