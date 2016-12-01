package grailsapplication1

import grails.test.mixin.TestFor
import grailsapplication1.Book
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Book)
class BookSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test params"(){
        def b = new Book()
       expect: [b.year==0, b.author==null, b.title==null, b.regnumber==0]
    }
}
