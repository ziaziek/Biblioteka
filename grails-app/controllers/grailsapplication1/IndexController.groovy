package grailsapplication1

import grails.plugin.springsecurity.annotation.Secured

class IndexController {

    def searchService
    
    @Secured('ROLE_ADMIN')
    def index() { 
//        if(session['loggedin']!=1){
//            redirect(controller:'login')
//        }
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
