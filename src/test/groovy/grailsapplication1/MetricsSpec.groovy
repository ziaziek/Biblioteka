package grailsapplication1

import grails.test.mixin.TestFor
import grailsapplication1.Metrics
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Metrics)
class MetricsSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        def m = new Metrics()
        
        expect: [m.borrower==null, lentoutOn==null, returnedOn==null, book==null, notes=='']
    }
}
