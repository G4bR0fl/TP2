# Projetos de Técnicas de Programação 2

Repositório criado para os projetos da matéria de Técnicas de Programação 2, voltada para desenvolvimento e teste de software utilizando a metodologia do TDD

## Membros

Antonio Rodrigues
Matheus Lemos
Otavio Souza
Saulo Mendes

## Setup inicial do ambiente

Para baixar as dependências é necessário instalar o bundler, o gerenciador de dependências do Ruby. Em distribuições baseadas no Ubuntu, o comando é:
```
$ sudo gem install bundler
```
Para distribuições "arch-based" :
```
$ sudo pacman -S ruby-bundler
```

Se houver erro de versão é necessário instalar uma versão mais recente do rubygems:
```
$ sudo gem install rubygems-update
```


## Instruções de build do projeto

Baixe o repositório do projeto para sua maquina local utilizando os comandos:

```
$ git clone https://github.com/MattLemos/TP2
$ cd TP2
```


Para instalar as dependências do projeto é necessário rodar o comando

```
$ bundle install
```

Entre na pasta dos códigos fonte do programa.

```
$ cd src/classes
```

Para rodar o programa através de sua função principal simplesmente rode o comando:
```
$ ruby main.rb
```
Saia da pasta de classes

```
$ cd ../..
```

## Instruções de teste

O projeto também possui uma funcionalidade de teste que permite rodar todos os testes automaticamente, utilizando um shell script chamado **regress.sh**.
Ele roda todos os testes presentes na pasta de teste, fornecendo output colorido para os casos de sucesso e falha. Esse script também salva o resultado mais detalhado
dos testes na pasta **src/testes/log**, com os respectivos nomes dos testes.
Para executar os testes rode os comandos, a partir da pasta principal do projeto:

```
$ cd src/testes
$ chmod +x regress.sh && ./regress.sh
```
