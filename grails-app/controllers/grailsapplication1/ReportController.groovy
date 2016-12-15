package grailsapplication1

class ReportController {

    def index() { }
    
    def expiredBooks() {
        def expiredBooksIds = []
        Metrics.findAllByExpiryDateLessThan(new Date()).each {it-> expiredBooksIds << it.book.id} 
        System.out.println(expiredBooksIds.size())
        def expiredBooks = Book.getAll(expiredBooksIds)
        [books: expiredBooks, count: expiredBooks==null ? 0 : expiredBooks.size()]
    }
    
    def expiredHoldingBorrowers(){
        
    }
}
