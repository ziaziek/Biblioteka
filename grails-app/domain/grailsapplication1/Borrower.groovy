package grailsapplication1

class Borrower {

    static constraints = {
        endDate nullable: true
    }
    
    static hasMany = [books: Book]
    String firstName='', lastName=''
    String regnumber
    Date registrationDate, endDate
}
