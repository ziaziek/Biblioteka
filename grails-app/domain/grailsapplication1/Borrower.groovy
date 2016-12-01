package grailsapplication1

class Borrower {

    static constraints = {
    }
    
    static hasMany = [books: Book]
    String firstName='', lastName=''
    String regnumber
}
