package grailsapplication1

import grails.transaction.Transactional

@Transactional
class BorrowerService {
    
    def BorrowerService(){
        
    }
    
    def getBorrowers() {
        return Borrower.findAll()
    }

}
