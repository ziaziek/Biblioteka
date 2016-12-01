package grailsapplication1

import grails.transaction.Transactional

@Transactional
class BooksService {

    def getBooks() {
        def b = Book.findAll()
    }
    
    def lendOutBook(int bookId, int userId){
        def b = Book.get(bookId)
        def u = Borrower.get(userId)
        if(b!=null && u!=null){
            b.act=Book.RETURN_ACTION_NAME
            b.image=Book.RETURN_ICON
            u.addToBooks(b)
            //create metrics for the lendout
            def m = new Metrics(lentoutOn: new Date(), borrower: u)
            //m.save()
            b.addToMetrics(m)
            b.save()
            u.save()
        }
    }
    
    def returnBook(Book book){
        def u = Borrower.where {books.id == book.id}
              def theBorrower=u.find()
              book.act=Book.AVAILABLE_ACTION_NAME
              book.image=Book.AVAILABLE_ICON
              if(theBorrower!=null){
                  theBorrower.removeFromBooks(book)
                  def m = Metrics.findByBookAndReturnedOnIsNull(book)
                  if(m!=null){
                      m.returnedOn=new Date()
                  }
              }
              theBorrower.save()
              book.save()
    }
}
