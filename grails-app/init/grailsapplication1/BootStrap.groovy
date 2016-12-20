package grailsapplication1

import grails.validation.ValidationException
import grailsapplication1.Book
import grailsapplication1.Borrower
import grailsapplication1.Parameter
import grails.util.Environment

class BootStrap {

    def init = { servletContext -> 
        if(Environment.current==Environment.DEVELOPMENT){
            try{
                new Book(title:'Thinking in Java', author:'Bruce Eckel', year:2000, regnumber:'9788324631766', jacket:'Short book description.', entryDate: Date.parse('yyyy-MM-dd', '2016-05-01')).save()
                new Book(title:'Eksploracja danych', author:'David Hand', year:2000, regnumber:'9788320430530', jacket:'A bit lonfer book description.', entryDate: Date.parse('yyyy-MM-dd', '2016-06-01')).save()
                new Borrower(firstName:'Adam', lastName:'Smith', regnumber: '991234522', registrationDate: Date.parse('yyyy-MM-dd', '2016-01-01')).save()
                new Borrower(firstName:'Julien', lastName:'de Blanch', regnumber: '991238522', registrationDate: Date.parse('yyyy-MM-dd', '2016-02-01')).save() 
                new Parameter(name: Parameter.MAX_RETURN_PERIOD, displayName:'Return extension period', value: '0', unit:'days').save()
                new Parameter(name: 'ghfhgf', displayName:'Return extension period gfhfghgf', value: '0').save()
                def adminRole = new Role(authority: 'ROLE_ADMIN').save()
                def userRole = new Role(authority: 'ROLE_USER').save()
                def user = new User(username:'przemo', password: 'derek').save()
                UserRole.create(user, adminRole)
                UserRole.withSession {
                    it.flush()
                    it.clear()
                }
            } catch(ValidationException e){
                print 'Error ocurred while initialisation of the application database.'
                print e.getMessage()
            }
        }
    }
    def destroy = {
    }
}
