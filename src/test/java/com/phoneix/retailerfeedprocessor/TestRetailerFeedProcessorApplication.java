package com.phoneix.retailerfeedprocessor;

import org.springframework.boot.SpringApplication;

public class TestRetailerFeedProcessorApplication {

	public static void main(String[] args) {
		SpringApplication.from(RetailerFeedProcessorApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
