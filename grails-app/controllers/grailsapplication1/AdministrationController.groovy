package grailsapplication1

class AdministrationController {

    def index() {
        def ps = Parameter.findAll()
        [parameters: ps]
    }
    
    def update(){
        def p = params.parameters.each{
            def prm = Parameter.findByName(it.key)
            prm.value=it.value;
            prm.save()
        }
        
        redirect(action:'index')
    }
}
