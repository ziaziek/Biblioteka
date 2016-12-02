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
           
           <table>
            <tr><th>First Name</th><th>Last Name</th><th>Edit</th><th>Show</th></tr>
            <g:each var="b" in="${borrowers}">
                <tr><td>${b.firstName}</td><td>${b.lastName}</td><td><a href="<g:createLink action="edit" id="${b.id}"/>">Edit</a></td><td>
                        <a href="<g:createLink action="show" id="${b.id}"/>">Show</a></td></tr>
            </g:each>
        </table> 
            </div>
        </div>
    </body>
</html>
