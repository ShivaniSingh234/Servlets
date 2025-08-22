package com.maven.Demotest;

import org.glassfish.jersey.server.ResourceConfig;
import jakarta.ws.rs.ApplicationPath;

@ApplicationPath("/webresources")
public class AppConfig extends ResourceConfig {
    public AppConfig() {
        packages("com.maven.Demotest");
    }
}
