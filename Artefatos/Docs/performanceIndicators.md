# Indicadores de Desempenho

### Clientes

- Quantidade de Orçamentos por Cliente - Relatório
> count(*)

- Novos Clientes nos últimos meses - Relatório
> * => separa por mês

- Custos/Receitas por Cliente - Relatório
> SUM(value) WHERE client_id = {id do cliente}

### Orçamentos

- Custos/Receitas por Orçamento - Relatório
> SUM(valor) WHERE budget_id = {id do orçamento}

- Quantidade de Orçamentos dentro de uma faixa de quantidade de serviços - Relatório
> count(*) FROM orçamentos as O WHERE (SELECT count(*) FROM bufgetServices WHERE budget_id = O.id) near {quantidade de serviços alvo}

- Novos Orçamentos nos últimos meses
> * => separa por mês

### Obras

- Tempo médio de duração de Obras
> SUM(data de encerramento da obra - data de criação do orçamento)/count(*) WHERE construction_id = {id}

- Tempo médio de duração de Obras por Cliente - Relatório
> (SUM(data fim - data inicio) / count(*)) WHERE client_id = {id}

- Tempo médio de duração de Obras que possuem uma quantidade de serviços dentro de uma faixa - Relatório
> (SUM(data fim - data inicio) / count(*)) WHERE (count(*) FROM budgetServices WHERE budget_id = {budget_id}) near {quantidade de serviços}

### Serviços

- Custos/Receitas por Serviço - Relatório
> SUM(valor) WHERE service_id = {id}

- Tempo médio de duração por Serviço - Relatório
> SUM(data de fim - data de criação)/count(*) WHERE id = {id}

### Globais

- Custos/Receitas globais
> SUM(valor)
