package com.rodolfo.pontosb.dtos;

import lombok.Data;
import lombok.ToString;

@Data @ToString
public class EmpresaDto {

	private Long id;
	private String razaoSocial;
	private String cnpj;

	public EmpresaDto() {
	}

}
