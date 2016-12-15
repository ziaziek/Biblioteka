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
        <h1>Registered borrowers</h1>
        <div style="float:left; height:50px; padding-top:10px; padding-bottom:2px;"><a href="/borrower/add">Add new borrower</a></div>
        <div style="width:100%; float:left; ">
        <div style="max-height: 300px; overflow: auto; padding-top:10px;">
            <g:form action="index">
                <g:searchbox id="searchbox"/> 
            </g:form>
           
            <g:borrowerslist borrowers="${borrowers}"/>
            </div>
        </div>
    </body>
</html>
