

CREATE TABLE empresa
(
    id bigint NOT NULL DEFAULT nextval('empresa_id_seq'::regclass),
    cnpj character varying(255)  NOT NULL,
    data_atualizacao timestamp without time zone NOT NULL,
    data_criacao timestamp without time zone NOT NULL,
    razao_social character varying(255)  NOT NULL,
    CONSTRAINT empresa_pkey PRIMARY KEY (id)
);

CREATE TABLE public.funcionario
(
    id bigint NOT NULL DEFAULT nextval('funcionario_id_seq'::regclass),
    cpf character varying(255)  NOT NULL,
    data_atualizacao timestamp without time zone NOT NULL,
    data_criacao timestamp without time zone NOT NULL,
    email character varying(255)  NOT NULL,
    nome character varying(255)  NOT NULL,
    perfil character varying(255)  NOT NULL,
    qtd_horas_almoco real,
    qtd_horas_trabalho_dia real,
    senha character varying(255)  NOT NULL,
    valor_hora numeric(19,2),
    empresa_id bigint,
    CONSTRAINT funcionario_pkey PRIMARY KEY (id),
    CONSTRAINT fk4cm1kg523jlopyexjbmi6y54j FOREIGN KEY (empresa_id)
        REFERENCES public.empresa (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);


CREATE TABLE public.lancamento
(
    id bigint NOT NULL DEFAULT nextval('lancamento_id_seq'::regclass),
    data timestamp without time zone NOT NULL,
    data_atualizacao timestamp without time zone NOT NULL,
    data_criacao timestamp without time zone NOT NULL,
    descricao character varying(255) ,
    localizacao character varying(255) ,
    tipo character varying(255)  NOT NULL,
    funcionario_id bigint,
    CONSTRAINT lancamento_pkey PRIMARY KEY (id),
    CONSTRAINT fk46i4k5vl8wah7feutye9kbpi4 FOREIGN KEY (funcionario_id)
        REFERENCES public.funcionario (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

