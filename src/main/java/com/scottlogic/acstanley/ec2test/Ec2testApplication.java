package com.scottlogic.acstanley.ec2test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Ec2testApplication {

	public static void main(String[] args) {
		SpringApplication.run(Ec2testApplication.class, args);
	}

	@GetMapping("/")
	public String respond(){
		return "YoWaddup";
	}

}
