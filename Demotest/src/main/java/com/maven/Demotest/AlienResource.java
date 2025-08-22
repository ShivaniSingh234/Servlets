package com.maven.Demotest;


import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;


@Path("aliens")
public class AlienResource {
	
	
	@GET
	@Produces(MediaType.APPLICATION_XML )
	public Aliens getAlien() {
		System.out.println("getAlen called......");
		Aliens a1 = new Aliens();
		a1.setName("Navin");
		a1.setPoints(60);

		return a1;
	}
}
