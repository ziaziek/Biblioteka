package grailsapplication1

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

       //"/"(controller:"book")
        "/"(controller:"index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
