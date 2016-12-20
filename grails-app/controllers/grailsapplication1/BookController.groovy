package grailsapplication1

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class BookController {
    
    def booksService
    
    static {
        
    }
    
    def index() {
        def books
        if(params.search!=null){
            books = Book.where{
                like('author', '%'+params.search+'%') || like('title', '%'+params.search+'%')
            }.list()
        } else {
            books = Book.findAll()
        }
        [books: books, bookCount: books.size()]
    }
    
    def show(){
        [book: Book.get(params.id)]
    }
    
    /**
        This method is responsible both for lending out the book and returning it as well
   */ 
  def prepareBook(){
        def book = Book.get(params.id)
        if(book!=null){
            if(book.act.equals(Book.RETURN_ACTION_NAME)){ //return the book, unregister from current user
              booksService.returnBook(book)
              redirect(action:'index')
            } else { //just render a page to enable lend out
                [book: book, borrowers:Borrower.findAll()]
            }
        }
    }
    
    def prolong(){
        def book = Book.get(params.id)
        if(book!=null){
            booksService.prolongateBook(book)
        }
        redirect(action: 'index')
    }
    
    def lendOut(){
        booksService.lendOutBook(Integer.valueOf(params['book']), Integer.valueOf(params['userId']))
        redirect(action:'index')
    }
    
    def add(){
        
    }
    
    def create(){
        def b = new Book(params)
        b.save()
        redirect(action:'index')
    }
    
    def save(){
        def b = Book.get(params.id)
        bindData(b, params)
        b.save()
        redirect(action:'index')
    }

}
