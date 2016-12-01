package grailsapplication1

import grails.validation.ValidationException
import grailsapplication1.Book
import grailsapplication1.Borrower

class BootStrap {

    def init = { servletContext -> 
        try{
           new Book(title:'Thinking in Java', author:'Bruce Eckel', year:2000, regnumber:'9788324631766').save()
        new Book(title:'Eksploracja danych', author:'David Hand', year:2000, regnumber:'9788320430530').save()
        new Borrower(firstName:'Adam', lastName:'Smith', regnumber: '991234522').save()
        new Borrower(firstName:'Julien', lastName:'de Blanch', regnumber: '991238522').save() 
        } catch(ValidationException e){
            print 'Error ocurred while initialisation of the application database.'
            print e.getMessage()
        }  
        
    }
    def destroy = {
    }
}
