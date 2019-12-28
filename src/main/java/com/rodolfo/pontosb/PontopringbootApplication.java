package com.rodolfo.pontosb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;


@SpringBootApplication
@EnableCaching
public class PontopringbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(PontopringbootApplication.class, args);
	}

}
