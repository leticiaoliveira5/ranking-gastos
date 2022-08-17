# :detective: Desafio Backend - Ranking dos gastos dos Deputados - RJ

[![Maintainability](https://api.codeclimate.com/v1/badges/b8d58ccaa50d5119d493/maintainability)](https://codeclimate.com/github/leticiaoliveira5/desafio-backend/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/b8d58ccaa50d5119d493/test_coverage)](https://codeclimate.com/github/leticiaoliveira5/desafio-backend/test_coverage)

Aplicação Ruby on Rails (v. 7.0.2). 

O desafio consiste em analisar alguns dados disponibilizados pela Câmara dos Deputados relativos aos gastos dos parlamentares. A ideia é descobrir quem, do seu estado, está gastando mais e exibir de forma resumida esses principais gastos.

"A Cota para o Exercício da Atividade Parlamentar, custeia as despesas do mandato, como passagens aéreas e conta de celular. Algumas são reembolsadas, como as com os Correios, e outras são pagas por débito automático, como a compra de passagens. Nos casos de reembolso, os deputados têm três meses para apresentar os recibos. O valor mensal não utilizado fica acumulado ao longo do ano. Por esse motivo, em alguns meses o valor gasto pode ser maior que a média mensal. (Fonte: [Portal da Câmara dos Deputados](https://www2.camara.leg.br/transparencia/acesso-a-informacao/copy_of_perguntas-frequentes/cota-para-o-exercicio-da-atividade-parlamentar)). Através do portal da transparência, nós temos acesso a essas despesas e podemos saber como e onde os políticos estão gastando."

## :computer:	Requisitos
- Ruby 3.0.0
- Node
- SQLite3

## :scroll:	Como iniciar a aplicação localmente

### :whale: Com Docker

Se você tem Docker instalado, tente isso:

- Clonar este repositório

```bash
git clone https://github.com/leticiaoliveira5/jobs.git
```

- No diretório do projeto, rodar pelo terminal:

```bash
docker-compose build
```

- Fazer o setup do banco de dados:
```bash
docker-compose run --rm web bundle exec rake db:create db:migrate RAILS_ENV=development
```

E então:

```bash
docker-compose up
```

Agora você pode acessar a aplicação em http://localhost:3000/

### Sem Docker

- Clonar este repositório

- No diretório do projeto, rodar pelo terminal:

```bash
bundle install
rails assets:precompile
```

- Fazer o setup do banco de dados (criação das tabelas):

```bash
rake db:setup
```

Iniciar a aplicação:

```bash
rails server
```

Agora você pode acessar a aplicação em http://localhost:3000/

### Testes

Para rodar os testes, usar o comando:

```bash
bundle exec rspec
```

## :bulb:	Como usar a aplicação

É necessário fazer o upload de um arquivo CSV, que será parseado para popular o banco de dados e gerar as tabelas exibidas no app

[Fonte de dados](https://dadosabertos.camara.leg.br/swagger/api.html#staticfile)

Depois do upload e sua leitura realizada com sucesso, a opção de upload não ficará mais disponível até que você decida apagar os dados e iniciar novamente clicando no botão na página inicial.

A página inicial consiste em um ranking com todos os deputados pela ordem dos gastos acumulados. Cada linha possui um link que leva para a página do parlamentar com mais detalhes sobre seus gastos.

## :framed_picture:	Imagens da aplicação

![image](https://user-images.githubusercontent.com/74281572/184265183-7c4c2560-a5d5-4584-9fcf-b9bb7f034c93.png)

![image](https://user-images.githubusercontent.com/74281572/184265230-08bc4138-fafe-4b59-b023-ffa546d0c07d.png)

![image](https://user-images.githubusercontent.com/74281572/184265299-e1d38253-df17-47ea-b33f-cb451c236056.png)

![image](https://user-images.githubusercontent.com/74281572/184265345-71202257-777b-4556-b993-4809f1c2c21e.png)
