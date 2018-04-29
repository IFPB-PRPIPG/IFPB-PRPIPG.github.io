---
layout: post
comments: true
title: "Docker como ambiente de desenvolvimento"
date: 2018-04-25 17:59:22
image: '/assets/img/'
description: 'Um exemplo simples de como colocar uma aplicação dentro de um container.'
main-class: 'dev'
tags:
- docker
- devops
- dev
categories:
twitter_text:
introduction: 'Fazendo do Docker seu novo ambiente de desenvolvimento.'
author_email: 'kelvin.romero@academico.ifpb.edu.br'
author: 'Kelvin Romero'
author_img: 'kelvin.png'
github_username: 'kelvinromero'
---

# O que vamos fazer

Vamos criar um simples app em python. Mas no lugar de instalar dependências no seu PC, vamos jogar tudo isso dentro de um container com o Docker.

![Docker learner][docker_learner]

# Requisitos

Tenha certeza de que está tudo azul com bolinhas brancas. [Dê uma olhada em como obter o Docker para seu sistema operacional][docker_visao_geral]. E o segredo é rodar o comando abaixo pra saber se está tudo funcionado como esperado.

```Bash
# Execute
$ docker run hello-world

# Parte do resultado esperado
Hello from Docker!
This message shows that your installation appears to be working correctly.
[...]
For more examples and ideas, visit:
 https://docs.docker.com/engine/userguide/
```


# Como fazer...
## ...o Container
O container é definido pelo _Dockerfile_. E pra colocar de forma simples, imagine que está montando um PC, instalando o sistema operacional e conectando à uma rede. O _Dockerfile_ é basicamente isso, ele vai dizer como montar o container.

Então aqui vai os primeiros passos para nosso experimento:

```Bash
# Crie e acesse um repositório
$ mkdir meu_app ; cd meu_app

$ touch Dockerfile
```
Agora dentro do arquivo criado, coloque o código abaixo, que ele vai dizer para o Docker o que fazer:

```Dockerfile
# "Herde" da imagem oficial do python
FROM python:2.7-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie o conteúdo do diretório corrente, para /app (dentro do container)
ADD . /app

# Instale as dependências com o pip (requirements a gente escreve mais a frente)
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Deixe a porta 80 disponível
EXPOSE 80

# Variáveis de ambiente...
ENV NAME Mundo

# E agora execute meu app.py com o python.
CMD ["python", "app.py"]
```

## ...o app em Python
Vamos precisar de mais dois arquivos. O requirements.txt que diz as dependências que o pip vai instalar e o código do app em si, que fica no arquivo app.py.

Abaixo só confie, copie e cole o código abaixo na mesma pasta em que está o _Dockerfile_.

### requirements.txt
```txt
Flask
Redis
```

### app.py
```Python
from flask import Flask
from redis import Redis, RedisError
import os
import socket

redis = Redis(host="redis", db=0, socket_connect_timeout=2, socket_timeout=2)

app = Flask(__name__)

@app.route("/")
def hello():
    try:
        visits = redis.incr("counter")
    except RedisError:
        visits = "<i>cannot connect to Redis, counter disabled</i>"

    html = "<h3>Olá {name}! Estou vivo!</h3>" \
           "<b>Nome do host:</b> {hostname}<br/>" \
           "<b>Visitas:</b> {visits}"
    return html.format(name=os.getenv("NAME", "world"), hostname=socket.gethostname(), visits=visits)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)
```

## ...construir o container
Nesse ponto você deve ter o seguinte:
```Bash
$ ls
app.py  Dockerfile  requirements.txt
```

Se você seguiu os passos direitinho até agora, e eu não escrevi nada errado, é só executar esse comando:
```Bash
docker build -t meu_container .
```

**Explicação do comando**
- -t : parametro para definir a tag (um nome pro nosso container)
- \.  : um **ponto** no final de tudo, diz pra montar o container com base no Dockerfile do diretório corrente. Então, lembre-se de estar dentro do repositório.

## ...executar o container
Primeiro vamos ver se o container foi criado, depois executamos (não é obriado testar, é só pra ver se existe, afinal estamos aprendendo...):
```Bash
$ docker image ls
$ docker run -p 4000:80 meu_container
```

**Explicação do comando**
- -p : Associa a posta 4000 no host com a 80 do Container
- meu_container : é o nome do nosso container :)

# Conclusão
Os comandos do docker são simples, e explicados em maiores detalhes [aqui][docker_visao_geral].

1. Criamos 3 arquivos:
  - Dockerfile : Descreve como construir o container
  - app.py : um app em python usando Redis e Flask
  - requirements.txt : Os requerimentos do ambiente python
2. Construimos o container:
  - Tendo como base o _Dockerfile_
3. Executamos o Container
  - E ele estava vivo!

<!-- links -->
[docker_visao_geral]:/2018/04/24/docker-visao-geral.html
[docker_learner]:/assets/img/posts/docker_learner.png
