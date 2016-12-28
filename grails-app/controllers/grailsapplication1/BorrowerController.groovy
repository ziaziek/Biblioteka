package grailsapplication1

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class BorrowerController {

    def borrowerService
    
    def index() {
        def b
        if(params.search!=null){
            b = Borrower.where{
                like('firstName', '%'+params.search+'%') || like('lastName', '%'+params.search+'%')
            }.list()
        } else {
            b = Borrower.findAll()
        }
        [borrowers: b]
    }
    
    def show(){
        def borrower = Borrower.get(Integer.valueOf(params.id))
        [borrower: borrower, borrowed: borrower.books, bookCount: borrower.books.size()]
    }
    
    def add(){
        [b: new Borrower()] 
    }
    
    def edit(){
        [b: Borrower.get(params.id)]
    }
    
    def save(){
        def borrower = Borrower.get(params.id)
        if(borrower!=null){
            bindData(borrower, params)
            borrower.save()
        }
            
        redirect(action:'index')
    }
    
    def create(){
        new Borrower(params).save()
        redirect(action:'index')
    }
    
    def deactivate(){
        borrowerService.deactivateBorrower(Integer.valueOf(params.id))
        redirect(action: 'index')
    }
}
