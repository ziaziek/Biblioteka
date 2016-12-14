package grailsapplication1


class Metrics implements Comparable {
    
    static belongsTo = [book:Book]
    
    Date lentoutOn=null, returnedOn=null, expiryDate=null //when this book should be returned
    Borrower borrower
    String notes = ''
    
    static constraints = {
        returnedOn nullable: true
        expiryDate nullable: true
    }
    
    int compareTo(obj){
        lentoutOn.compareTo(obj.lentoutOn)
    }
}
