package com.digitaltolk.translation;

import org.springframework.boot.SpringApplication;

public class TestTranslationApplication {

	public static void main(String[] args) {
		SpringApplication.from(TranslationApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
