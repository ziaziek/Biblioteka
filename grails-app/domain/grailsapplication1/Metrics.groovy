package grailsapplication1

class Metrics implements Comparable {
    
    static belongsTo = [book:Book]
    
    Date lentoutOn=null, returnedOn=null
    Borrower borrower
    String notes = ''
    
    static constraints = {
        returnedOn nullable: true
    }
    
    int compareTo(obj){
        lentoutOn.compareTo(obj.lentoutOn)
    }
}
