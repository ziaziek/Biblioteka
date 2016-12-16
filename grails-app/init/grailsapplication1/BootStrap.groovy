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
                new Book(title:'Thinking in Java', author:'Bruce Eckel', year:2000, regnumber:'9788324631766', jacket:'Short book description.').save()
                new Book(title:'Eksploracja danych', author:'David Hand', year:2000, regnumber:'9788320430530', jacket:'A bit lonfer book description.').save()
                new Borrower(firstName:'Adam', lastName:'Smith', regnumber: '991234522').save()
                new Borrower(firstName:'Julien', lastName:'de Blanch', regnumber: '991238522').save() 
                new Parameter(name: Parameter.MAX_RETURN_PERIOD, displayName:'Return extension period', value: '0', unit:'days').save()
                new Parameter(name: 'ghfhgf', displayName:'Return extension period gfhfghgf', value: '0').save()
            } catch(ValidationException e){
                print 'Error ocurred while initialisation of the application database.'
                print e.getMessage()
            }
        }
    }
    def destroy = {
    }
}
