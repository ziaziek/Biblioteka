package grailsapplication1

import grails.transaction.Transactional

@Transactional
class SearchService {

    def String regNumberSearch(String regNumber){
        //rules for users and book numbers:
        //books have no rules as their barcode can be of any type
        //users cards will always start with to 9's and end with to 2's, and will be 9 digits long
        if(regNumber!=null){
            if(regNumber==~/99[0-9]{5}22/){
            return userSearch(regNumber)
        } else {
            return bookSearch(regNumber)
        }
        } else {
            return '/'
        }
        
    }
    
    private String userSearch(String regNumber){
        def bid = Borrower.findByRegnumber(regNumber)
        if(bid!=null){
           return '/borrower/show/' +  bid.id
        } else {
            return '/'
        }
        
    }
    
    private String bookSearch(String regNumber){
        def bid = Book.findByRegnumber(regNumber)
        if(bid!=null){
            return '/book/show/'+bid.id
        } else {
            return '/'
        }
        
    }
}
