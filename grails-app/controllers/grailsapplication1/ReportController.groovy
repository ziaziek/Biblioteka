package grailsapplication1

class ReportController {

    def index() { }
    
    def expiredBooks() {
        def expiredBooksIds = []
        expiredMetrics().each {it-> expiredBooksIds << it.book.id} 
        def expiredBooks = Book.getAll(expiredBooksIds)
        [books: expiredBooks, count: expiredBooks==null ? 0 : expiredBooks.size()]
    }
    
    def expiredHoldingBorrowers(){
        def expiredBorrowers = []
        expiredMetrics().each {it -> expiredBorrowers << it.borrower.id}
        def borrowers = Borrower.getAll(expiredBorrowers)
        [borrowers: borrowers, count: expiredBorrowers==null ? 0 : expiredBorrowers.size()]
    }
    
    private List expiredMetrics(){
        return Metrics.where {
            expiryDate < new Date() && returnedOn==null
        }.list()
    }
}
