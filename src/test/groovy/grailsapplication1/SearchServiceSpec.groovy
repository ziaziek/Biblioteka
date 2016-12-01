package grailsapplication1

import grails.test.mixin.TestFor
import spock.lang.Specification
import grailsapplication1.SearchService

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(SearchService)
class SearchServiceSpec extends Specification {
    
    def setup() {
//        ss.metaClass.userSearch = { n->
//            return -100
//        }
//        ss.metaClass.bookSearch = { n->
//            return 0
//        }
    }

    def cleanup() {
    }

     void "test userSearch"() {
        assertEquals(new SearchService().regNumberSearch("991234522"),-1)
//        assert ss.regNumberSearch("995453532")==0
//        assert ss.regNumberSearch("9912345622")==0
//        assert ss.regNumberSearch("993472422")==-1
    }
    
    void "test bookSearch"(){
        assert ss.regNumberSearch("0")==0
    }
}
