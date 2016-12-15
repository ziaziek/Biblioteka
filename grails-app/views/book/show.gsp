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
        <g:form action="save">
            <div style="width:60%; padding:10px 0px 10px 10px;">
                <label for="title">Title: </label><input type="text" name="title" value="${book.title}"/>
                <label for="author">Author: </label><input type="text" name="author" value="${book.author}"/>
                <label for="year">Year: </label><input type="text" name="year" value="${book.year}"/> 
                <label for="regnumber">Reg. number: </label><input type="text" name="regnumber" value="${book.regnumber}"/><br/>
                Short description:<br/>
                <g:textArea name="jacket" value="${book.jacket}" rows="10" cols="300" style="width:100%;"/><br/>
            </div>
            
            <input type="submit" value="Save"/>
            <input type="hidden" value="${book.id}" name="id"/>
        </g:form>
        <g:if test="${book.act=='Return'}">
            <div style="padding: 10px 0px 0px 10px;">
                <g:form action="prepareBook" style="float:left;padding-right: 10px;">
                <input type="submit" value="Return book"/>
                <input type="hidden" value="${book.id}" name="id"/>
                </g:form>
                <g:form action="prolong">
                <input type="submit" value="Extend return date"/>
                <input type="hidden" value="${book.id}" name="id"/>
                </g:form> 
            </div>       
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
    </body>
</html>
