package com.primeiraAplicacao.atividades;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequestMapping("/")
public class AtividadesApplication {
	
	@GetMapping("/atividade1")
	public String Atividade1() {
		return "*** Persistência *** Atenção aos detalhes *** Proatividade ***";
	}
	
	@GetMapping("/atividade2")
	public String Atividade2() {
		return "Entender todos os conceitos passados pelo Boaz e Geandro em sala de aula.";
	}
	
	public static void main(String[] args) {
		SpringApplication.run(AtividadesApplication.class, args);
	}

}
