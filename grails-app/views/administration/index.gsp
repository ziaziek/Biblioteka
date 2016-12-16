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
        <p>Administration panel</p>
        <g:form name="admin_params" action="update">
            <table style="width:40%;">
                <g:each in="${parameters}" var="param">
                    <tr><td>${param.displayName}:</td><td><input type="text" name="parameters.${param.name}" value="${param.value}" size="5"/></td><td>${param.unit}</td></tr>
                 </g:each>
            </table>
        </g:form>
        <button id="admin_update" onclick="o();">Update</button>
        <div id="administration_modal_confirm" style="display:none;">
            You are about to change parameters of the application.<br/>
            This may affect the users and the way you work with the application.
        </div>
    <asset:javascript src="admin.js"/>
</body>
</html>
