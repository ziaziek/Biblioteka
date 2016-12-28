<div>
<g:form action="save">
    <label for="firstName">First name</label><input type="text" name="firstName" value="${b.firstName}"/><br/>
            <label for="lastName">Last name</label><input type="text" name="lastName" value="${b.lastName}"/><br/>
            <label for="regnumber">Registration number<input type="text" name="regnumber" value="${b.regnumber}"/><br/>
            <label for="registrationDate">Registration date:</label><input id="borrowerRegistrationDate" type="text" name="registrationDate" value="${b.registrationDate}"/>
            <br/>
            <input type="hidden" name="id" value="${b.id}"/><br/><br/>
            <input type="submit" value="Save"/>
    </g:form>       
</div>
<br/>
<button  class="ui-button" id="deactivate_borrower" onclick="o();">Deactivate user</button>  
<div id="borrower_deactivate_confirmation" style="display:none;">
This action will permanently deactivate the user, 
so they will not be able to lend out books.
<g:form name="deactivateForm" action="deactivate">
    <input type="hidden" name="id" value="${b.id}"/>
</g:form>
</div>
