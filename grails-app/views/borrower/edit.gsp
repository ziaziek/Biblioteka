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
        <asset:javascript src="borrowershow"/>
        <title>Edit borrower</title>
    </head>
    <body>
        <h1>Edit borrower</h1>
        <g:if test="${b.endDate==null}">
          <g:render template="/tagLibTemplates/borrowerForm" bean="${b}" var="b"/>
        </g:if>
        <g:else>
            <g:render template="/tagLibTemplates/inactiveBorrower" bean="${b}" var="b"/>
        </g:else>
    </body>
</html>
