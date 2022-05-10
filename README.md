# Crypto wallet

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    - ruby 3.0.2p
    - Rails 6.1.6

* Bundle 
    ```
        bundle install
        bundle 
     ```

* Database
    ``` 
        rails db:create
        rails db:migrate
    ``` 

___
## Observações de estudo

Foi escolhido deixar o SQLite3 como o banco de dados padrão porque ele é leve. Como esse trabalho é para fins de estudo do rails, o banco de dados foi deixado o mais simples. 

- MVC
	 - Action
	 - Log
- Modelagem de dados
    - Registros, campos.

- Active Record
	- É o M no MVC (o model), que é a camada do sistema responsável por representar os dados e a lógica do negócio. É uma implementação do padrão Active Record, que em si é uma descrição de um sistema de Matepamento Relacional de Objetos.
- ORM
	- Vem de Object-Relational Mapping. É uma técnica que mapeia os dados em um bD para classes/objetos na programação.
- Migrations
	- São uma característica do Active Record (o framework) que permite você "escrever/especificar" as tableas do BD usando a linguagem Ruby.
	Dessa forma pode adcionar, modificar e removever tabelas do BD sem utilizar SQL, além de ter sempre disponível toda a sequencia de criação/alteração das tabelas envolvidas no projeto.

- Rails tasks
	São tarefas predefinisdas que o Rails pode executar.
	> rails -T 

	> rails db:create, db:drop, db:migrate, db:rollback

- Ambientes do rails
	- Por padrão o rails vem com 3 ambientes: Desenvolvimento, Teste, Produção.
	- RAILS_ENV=production rails s #para rodar em producao
	- rails s -e production #modo de produção, mais comum

- Generators
	- rails g #tem generator para testes unitários

- ERB
	- Sistemas de templates do RUBY
	- Mesclar código Ruby com outras expressões

- Helpers
	- São métodos prontos que podem ser usados nas views
	- link_to 
	- image_tag
	- Dá para criar os próprios helpers


## Links úteis

Rails console: https://guides.rubyonrails.org/command_line.html#rails-console

Rails rounting: https://guides.rubyonrails.org/routing.html#crud-verbs-and-actions

Rails helpers: http://api.rubyonrails.org/classes/ActionCont
roller/Helpers.html

Active record: https://pt.wikipedia.org/wiki/Active_record	