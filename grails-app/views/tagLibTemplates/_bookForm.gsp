<g:form action="save">
            <div style="width:100%; padding:10px 0px 10px 10px; min-width: 1024px;">
                <label for="title">Title: </label><input type="text" name="title" value="${book.title}"/>
                <label for="author">Author: </label><input type="text" name="author" value="${book.author}"/>
                <label for="year">Year: </label><input type="text" name="year" value="${book.year}"/> 
                <label for="regnumber">Reg. number: </label><input type="text" name="regnumber" value="${book.regnumber}"/>
                <label for="entryDate">Entry date: </label><input id="entryDate" type="text" name="entryDate" value="${book.entryDate}"/>
                <g:if test="${book.endDate!=null}">
                    <label for="endDate">Deactivation date: </label><input id="endDate" type="text" name="endDate" value="${book.endDate}" readonly="true"/>
                </g:if>    
                <br/>
                
                Short description:<br/>
                <g:textArea name="jacket" value="${book.jacket}" rows="10" cols="300" style="width:90%;"/><br/>
            </div>
            
            <input class="ui-button" type="submit" value="Save"/>
            <input type="hidden" value="${book.id}" name="id"/>
</g:form>
