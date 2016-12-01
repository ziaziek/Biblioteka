package grailsapplication1

import grails.test.mixin.TestFor
import grailsapplication1.Borrower
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Borrower)
class BorrowerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        def b = new Borrower()
        expect:[b.firstName=='', b.lastName=='', b.regnumber==0]
    }
}
