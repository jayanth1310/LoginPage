package com.login.loginpage;

import javax.sql.DataSource;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class LoginpageApplication {

	public static void main(String[] args) {
		SpringApplication.run(LoginpageApplication.class, args);
	}
	 @Bean
    public CommandLineRunner commandLineRunner(DataSource dataSource) {
        return args -> {
            System.out.println("Connected to MariaDB: " + dataSource.getConnection().getMetaData().getURL());
        };
    }

}
