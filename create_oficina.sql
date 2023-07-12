CREATE DATABASE "Oficina"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE cliente(
	cpf varchar(11) PRIMARY KEY,
	nome varchar(20)
);
	
CREATE TABLE mecanico(
	id_mecanico serial PRIMARY KEY,
	nome varchar(20)
);

CREATE TABLE servico(
	id_servico serial PRIMARY KEY,
	cpf_cliente varchar(11),
	id_mecanico serial,
	valor float,
	data date,
	placa_veiculo varchar(6),
	modelo_veiculo varchar(20),
	FOREIGN KEY (id_mecanico) REFERENCES mecanico(id_mecanico),
	FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf)
);