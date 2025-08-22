
package com.maven.Demotest;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

//
//import javax.ws.rs.Path;
//
///** Example resource class hosted at the URI path "/myresource"
// */
@Path("/myresource")
public class MyResource {
//    
//    /** Method processing HTTP GET requests, producing "text/plain" MIME media
//     * type.
//     * @return String that will be send back as a response of type "text/plain".
//     */
   @GET
   @Produces(MediaType.TEXT_PLAIN)
    public String getIt()
    {
	   return "Got it!";
    }
}
