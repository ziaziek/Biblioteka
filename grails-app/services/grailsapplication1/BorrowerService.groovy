package grailsapplication1

import grails.transaction.Transactional

@Transactional
class BorrowerService {
    
    def BorrowerService(){
        
    }
    
    def getBorrowers() {
        return Borrower.findAll()
    }
    
    def deactivateBorrower(int id){
        def b = Borrower.get(id)
        if(b!=null){
            b.endDate = new Date()
            b.save()
        }
    }

}
