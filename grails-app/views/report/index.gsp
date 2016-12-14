items.offer(e<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="layout" content="main"/>
    <asset:javascript src="reports"/>
</head>
<body>
    <div class="report_body">
        <div class="report_links">
            <p id="eb_report_link" href="<g:createLink action="expiredBooks" />" onclick="loadreport('#eb_report_link');">Expired books list</p>
            <p id="ehb_report_link" href="<g:createLink action="expiredHoldingBorrowers" />" onclick="loadreport('#ehb_report_link');">Expire holding borrowers list</p>   
        </div>
        <div class="report">
        </div>  
    </div>

</body>
</html>
