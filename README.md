# Base de conhecimento NDST (IFPB-PRPIPG)

Esta é nossa base de conhecimento. Abaixo você entenderá como contribuir para esta base de conhecimento.

# NOTA
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
$ source /home/kelvin/.rvm/scripts/rvm

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
# returns: Using /home/kelvin/.rvm/gems/ruby-2.5.0
```

## Bundler

O bundler tem como objetivo gerenciar as _gems_ da sua aplicação. Para fazer a sua instalação:
```sh
$ gem install bundler
```

## Gemfile

Agora que temos o _bundler_ no nosso ambiente de trabalho podemos instalar todas as dependências do projeto. Dentro deste repositório existe um **_Gemfile_**, agora basta executar:
```sh
$ bundler install
```

# Requerimentos (Windows)
>**Aguardando contribuição...**

Existe a possibilidade de instalar através desse executável: [Ruby Installer](https://rubyinstaller.org/)  
Escolha a versão 2.5.0 do ruby.
