# Base de conhecimento NDST (IFPB-PRPIPG)

Esta é nossa base de conhecimento. Abaixo você entenderá como contribuir para esta base de conhecimento.

# IMPORTANTE
>**Não utilize _apt-get_** para instalar pacotes _Ruby, Gems ou Rails_ tanto no Debian como no Ubuntu. **Este sistema está desatualizado** e pode gerar dores de cabeça.

O método de instalação a seguir cria uma espécie de _sandbox_ na sua home em: ~/.rvm. O que garante um ambiente mais isolado.

# Requerimentos/Instalação [Debian/Ubuntu]
- [Do sistema operacional](https://rvm.io/rvm/prerequisites)
- Do ambiente
  - RVM - Ruby Version Manager
  - Ruby
  - Bundler - Gerenaciar as _gems_ do projeto
- Do projeto
  - _Gemfile_ - _Gems_ do projeto

## RVM
```sh
# Chave para segurar os Repositórios
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

# RVM
$ curl -sSL https://get.rvm.io | bash -s stable

# Ative o ambiente (Não precisa fazer toda vez)
$ source /home/user/.rvm/scripts/rvm

# Verifique a instalação / Resultado
$ rvm -v
# returns: rvm 1.29.3 (latest) by Michal Papis, Piotr Kuczynski, Wayne E. Seguin [https://rvm.io]

```
**Outras opções de instalação disponíveis [aqui](https://rvm.io/rvm/install).**

## Ruby

```sh
# Instale o Ruby através do RVM
$ rvm install ruby-2.5.0

# Garanta que está utilizando a versão correta
$ rvm use 2.5.0
# returns: Using /home/user/.rvm/gems/ruby-2.5.0
```

## Bundler

O bundler tem como objetivo gerenciar as _gems_ da sua aplicação. Para fazer a sua instalação:
```sh
$ gem install bundler
```

## Gemfile

Agora que temos o _bundler_ no nosso ambiente de trabalho podemos instalar todas as dependências do projeto. Dentro deste repositório existe um **_Gemfile_**, agora basta executar:
```sh
$ cd IFPB-PRPIPG.github.io/
$ bundler install
```

# Rodando o ambiente

```sh
$ jekyll serve --watch
```

# Criando novo post

```sh
$ ./initpost.sh -c Título da postagem
```
Mais detalhes [aqui](https://ifpb-prpipg.github.io/2018/03/08/base-de-conhecimento.html).

# Requerimentos (Windows)
>**Aguardando contribuição...**

Existe a possibilidade de instalar através desse executável: [Ruby Installer](https://rubyinstaller.org/)  
Escolha a versão 2.5.0 do ruby.

# Requerimentos Docker
> O Dockerfile presente nesse repositório ainda **não está pronto**.

Atualmente o Docker deste projeto só consegue instalar as dependências e exibir a página pronta com os comandos que serão demonstrados em seguida. Porém ainda não conseguimos sincronizar as alterações de conteúdo.

Tendo o Docker cliente e server instalado na sua máquina, dentro deste repositório execute os seguintes comandos:

```sh
# Construção do container
$ docker build -t NOME_CONTAINER .

# Execução do container
$ docker run -it --rm -p 80:80 -v ABSOLUTE/PATH/TO/IFPB-PRPIPG.github.io:/app NOME_CONTAINER
```

**Explicação dos comandos**
- Construção do container
  - -t : Argumento que aguarda o nome do container.
- Execução do container
  - -it : interativo
  - --rm : ao concluir a execução remove o container
  - -p : porta 80 localhost para 80 do container
  - -v : Volume que aguarda o caminho absoluto do código no host, seguido de dois pontos, caminho absoluto no container

## IMPORTANTE
> Ainda é apenas experimental. A execução ainda não está garantida, mas serve para fazer testes de posts antes de subir para o github caso você não queira instalar o Ruby e suas dependências no sistema operacional que você usa.

