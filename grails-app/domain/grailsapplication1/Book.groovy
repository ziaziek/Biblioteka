package grailsapplication1

class Book {

    static final String AVAILABLE_ACTION_NAME = 'Lend out'
    static final String RETURN_ACTION_NAME = 'Return'
    static final String AVAILABLE_ICON = 'book_icon.png'
    static final String RETURN_ICON = 'book_locked_icon.png'
    
    static constraints = {
        
    }
    
    SortedSet metrics
    static hasMany = [metrics: Metrics]
    
    String title, author, image=AVAILABLE_ICON, act=AVAILABLE_ACTION_NAME
    int year
    String regnumber, jacket=''
    
    def boolean isOverTimed(){
        return metrics != null && !metrics.findAll{it.returnedOn==null && it.expiryDate < new Date()}.isEmpty()
    }
}
