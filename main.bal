import ballerina/mcp;

listener mcp:Listener mcpListener = new (8080);

@mcp:ServiceConfig {
    info: {
        name: "MCP Service",
        version: "1.0.0"
    }
}
service mcp:Service /mcp on mcpListener {
    # "Send Greeting"
    #
    # + return - string
    remote function greeting() returns string {
        return "Hello World";
    }

}
