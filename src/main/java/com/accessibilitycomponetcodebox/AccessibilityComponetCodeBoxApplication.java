package com.accessibilitycomponetcodebox;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class AccessibilityComponetCodeBoxApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(AccessibilityComponetCodeBoxApplication.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(AccessibilityComponetCodeBoxApplication.class, args);
	}	
}