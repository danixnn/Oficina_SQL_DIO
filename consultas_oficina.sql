--Quantos mecanicos possuem atualmente na oficina
select count *
from mecanicos;

--Trabalhos realizados em 2023
select count(*)
from servico as s
where s.data between '2023-01-01' and '2023-12-31';

--Media dos serviços prestador
select sum(valor)
from servico;

--Maior valor de um serviço prestado
select max(valor)
from servico;

--Menor valor de um serviço prestado
select min(valor)
from servico;

--Modelo do veiculo e dono da placa "ABEST"
select s.modelo_veiculo, c.nome  
from servico as s join cliente as c on s.cpf_cliente=c.cpf
where placa_veiculo = 'ABEST';

--Listar todos trabalhos que o mecanico "Ernesto do Teste" foi responsavel
select *
from servico as s join mecanico as m on s.id_mecanico = m.id_mecanico
where m.nome = 'Ernesto do Teste'