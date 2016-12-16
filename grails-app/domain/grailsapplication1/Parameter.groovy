package grailsapplication1

class Parameter {

    public static String MAX_RETURN_PERIOD="max_return_period"
    
    static constraints = {
        unit nullable:true
    }
    
    String name, displayName, value, unit
}
