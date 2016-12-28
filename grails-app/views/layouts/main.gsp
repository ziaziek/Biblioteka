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
    <link href="/assets/application.less" type="text/css" rel="stylesheet/less"/>    
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>
<body>
    <ul class="menu ui-widget-header">
        <li><a href="<g:createLink controller="index" />">Home</a></li>
        <li><a href="<g:createLink controller="book"/>">Books</a></li>
        <li><a href="<g:createLink controller="borrower"/>">Borrowers</a></li>
        <li><a href="<g:createLink controller="report"/>">Reports</a></li>
        <li><a href="<g:createLink controller="administration"/>">Administration</a></li>    
    </ul>
        <h1>Library</h1>
        <sec:ifLoggedIn>
          <span style="float:right;"><g:link controller="logout">Logout</g:link></span>  
        </sec:ifLoggedIn>
        <g:layoutBody/>

</body>
</html>
