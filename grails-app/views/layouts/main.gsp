<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    
    <g:layoutHead/>
</head>
<body>
<ul class="menu">
    <li><a href="<g:createLink controller="index" />">Home</a></li>
    <li><a href="<g:createLink controller="book"/>">Books</a></li>
    <li><a href="<g:createLink controller="borrower"/>">Borrowers</a></li>
        <li><a href="<g:createLink controller="report"/>">Reports</a></li>
</ul>
<h1>Library</h1>
    <g:layoutBody/>

</body>
</html>
