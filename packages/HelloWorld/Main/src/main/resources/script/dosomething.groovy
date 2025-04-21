import com.sap.gateway.ip.core.customdev.util.Message;

def Message processData(Message message) {
    //Body
    def body = message.getBody(java.lang.String);
    def myheader = message.getHeader("MyHeader", java.lang.String)
    message.setProperty("xProp", "asdasdasd")
    message.setProperty("xPropTwo", "qweqweqwe");
    message.setHeader("MyHeader", myheader.toUpperCase())
    return message;
}
