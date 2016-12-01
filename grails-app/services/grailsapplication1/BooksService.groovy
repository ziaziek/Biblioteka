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
              }
              theBorrower.save()
              book.save()
    }
}
