package grailsapplication1

class IndexController {

    def searchService
    
    def index() { 
    }
    
    def find(){
        if(params.number!='null'){
            redirect(url: searchService.regNumberSearch(params.number))
        }
    }
    
    def notfound(){
        render(view:'index', model: [nf:'1'])
    }
}
