package com.primeiraaplicacao.atividade2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequestMapping("/")
public class Atividade2Application {
	
	@GetMapping("/atividade2")
	public String Atividade2() {
		return "Entender todos os conceitos passados pelo Boaz e Geandro em sala de aula.";
	}

	public static void main(String[] args) {
		SpringApplication.run(Atividade2Application.class, args);
	}

}
