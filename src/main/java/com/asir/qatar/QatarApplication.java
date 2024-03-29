package com.asir.qatar;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@MapperScan("com.asir.qatar.dao")
@SpringBootApplication
public class QatarApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(QatarApplication.class, args);
	}

	@Override
		protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(QatarApplication.class);
	}

}
