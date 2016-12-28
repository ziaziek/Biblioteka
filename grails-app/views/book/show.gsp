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
        <h1>${book.title} by ${book.author}</h1>
        <g:if test="${book.endDate==null}">
            <g:render template="/tagLibTemplates/bookForm" bean="${book}" var="book"/>
        </g:if>    
        <g:else>
            <g:render template="/tagLibTemplates/inactiveBook" bean="${book}" var="book"/>
        </g:else>
        
        
        <g:if test="${book.act=='Return'}">
            <div style="padding: 10px 0px 0px 10px;">
                <g:form action="prepareBook" style="float:left;padding-right: 10px;">
                <input class="ui-button" type="submit" value="Return book"/>
                <input type="hidden" value="${book.id}" name="id"/>
                </g:form>
                <button class="ui-button" onclick="o('prolong');">Extend return date</button>            
            </div>   
        </g:if>
        <g:if test="${book.endDate==null}">
          <button class="ui-button" onclick="o('deactivate');">Deactivate book</button>  
        </g:if>   
        
        <div class="metrics">
            <h1>Book lending history</h1>
            <g:if test="${book.metrics!=null && !book.metrics.isEmpty()}">
              <table>
                <tr>
                    <th>Lent out</th>
                    <th>Return expiry date</th>
                    <th>Returned</th>
                    <th>By Who</th>
                </tr>
                <g:each in="${book.metrics}" var="m">
                    <tr>
                    <td>${m.lentoutOn}</td>
                    <td>${m.expiryDate}</td>
                    <td>${m.returnedOn}</td>
                    <td>${m.borrower.firstName}&nbsp;${m.borrower.lastName}</td>
                </tr>
                </g:each>
            </table>  
            </g:if>
            <g:else>
                <p>No history available for this book</p>
            </g:else>
        </div>
        <div id="modal_prolong_confirm" style="display:none;">
            This action will extend the return expiry date for this book.<br/>
            Do you wish to continue?<br/><br/>
            <g:form name="prolong" action="prolong">
                <input type="hidden" value="${book.id}" name="id" />
            </g:form> 
        </div>
        <div id="modal_deactivate_confirm" style="display:none;">
            This action will permanently deactivate this book.<br/>
            Do you wish to continue?<br/><br/>
            <g:form name="deactivate" action="deactivate">
                <input type="hidden" value="${book.id}" name="id" />
            </g:form> 
        </div>
        <asset:javascript src="bookshow"/>
    </body>
</html>
