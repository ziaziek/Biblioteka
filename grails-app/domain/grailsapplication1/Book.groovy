package grailsapplication1

class Book {

    static final String AVAILABLE_ACTION_NAME = 'Lend out'
    static final String RETURN_ACTION_NAME = 'Return'
    static final String AVAILABLE_ICON = 'book_icon.jpg'
    static final String RETURN_ICON = 'book_locked_icon.jpg'
    
    static constraints = {
    }
    
    SortedSet metrics
    static hasMany = [metrics: Metrics]
    
    String title, author, image=AVAILABLE_ICON, act=AVAILABLE_ACTION_NAME
    int year
    String regnumber
    
}
