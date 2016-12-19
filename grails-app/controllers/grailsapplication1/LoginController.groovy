package grailsapplication1

class LoginController {

    def index() { }
    
    def login() {
        //Empty login. Redirect straight to the main controller
        session['loggedin']=1
        redirect(controller:'index')
    }
}
