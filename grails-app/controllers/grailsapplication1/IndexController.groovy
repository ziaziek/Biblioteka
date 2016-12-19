package grailsapplication1

class IndexController {

    def searchService
    
    def index() { 
        if(session['loggedin']!=1){
            redirect(controller:'login')
        }
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
