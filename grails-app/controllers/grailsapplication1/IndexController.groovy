package grailsapplication1

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
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
