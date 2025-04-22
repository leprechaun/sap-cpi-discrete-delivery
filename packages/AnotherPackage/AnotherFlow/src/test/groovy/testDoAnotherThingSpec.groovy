import com.sap.gateway.ip.core.customdev.util.Message
import spock.lang.Shared
import spock.lang.Specification
// import org.apache.commons.io.IOUtils

class DoAnotherThing extends Specification {
    @Shared Script script
    @Shared Message msg

    static def xml


    def setupSpec() {
        GroovyShell shell = new GroovyShell()
        script = shell.parse(
            new File(this.getClass().getResource('/script/doanotherthing.groovy').getFile())
        )
    }

    def setup() {
        msg = new Message()
        msg.setHeader("MyHeader", "some value")
    }

    def 'Should do ... something'() {
        given:
        msg.setBody(this.getClass().getResource("message.xml").newInputStream())

        when:
        'Script is executed'
        script.processData(msg)

        then:
        //1 * test.setProperty("xProp", "asdasdasd")
        msg.getProperty("xProp") == "asdasdasd"
        msg.getHeader("MyHeader", String) == "SOME VALUE"
    }
}
