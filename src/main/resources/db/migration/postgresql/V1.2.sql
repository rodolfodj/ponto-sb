INSERT INTO "empresa" ("id","cnpj", "data_atualizacao", "data_criacao", "razao_social") 
VALUES (1,'98067555000155', now(), now(), 'Swagger IT');

insert 
        into
            "funcionario"
            ("cpf", "data_atualizacao", "data_criacao", "email", "empresa_id", "nome", "perfil", "qtd_horas_almoco", "qtd_horas_trabalho_dia", "senha", "valor_hora") 
        values
            ('02049262035',
            now(), 
            now(), 
            'swagger@dominio.com',
            1, 
            'USUARIO SWAGGER',
            'ROLE_ADMIN',
            1, 
            8, 
            '$2a$10$L/mQhWB0MtLsjS8yHTUUbu/bP.F7iJGAeMKYlhcWvUpz.TdGaQTTW',
            null);

