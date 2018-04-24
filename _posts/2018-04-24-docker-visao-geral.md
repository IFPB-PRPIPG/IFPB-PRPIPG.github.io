---
layout: post
title: 'Docker visão geral'
introduction: 'Visão geral sobre o Docker no Windows.'
description: 'Uma visão geral e resumida sobre como usar o Docker, com foco no Windows.'
date: 2018-03-08 12:00:00
main-class: 'misc'
tags:
- docker
- windows
author_img: 'kelvin.png'
author: 'Kelvin Romero'
github_username: 'kelvinromero'
author_email: 'kelvin.romero@academico.ifpb.edu.br'
twitter_text: '"Se eu vi mais longe, foi por estar sobre ombros de gigantes." - Isaac Newton'
comments: true
---

# Vocabulário

- Docker image: Funciona como uma planta, para contruir um container.
- Docker container: É uma imagem em execução (basicamente um processo);

# Comandos básicos

| Command | Output
| ------- | ------
| docker | Lista todos os comandos disponíveis
| docker COMMAND --help | Retorna ajuda de um dado COMMAND.
| docker version | Informações de versão do cliente e do servidor.
| docker info | Informações detalhadas do cliente e do servidor.
| docker --version | Informações da build.
| docker run hello-world | Executa o container Hello World (Que indica que a instalação está funcionando bem).
| docker image ls | Lista todas as imagens disponíveis localmente.
| docker container ls --all | Lista todos os containers (Imagens em execução ou executadas).

# Específicos do Windows
## Conseguindo o Docker

- Para o Windows 10 edição HOME : [Docker toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/)
- Para o Windows 10 edição PROFESSIONAL : [Docker Community edition](https://docs.docker.com/docker-for-windows/install/)
 - É preciso habilitar o Hyper-V: [Siga as instruções aqui](https://blogs.technet.microsoft.com/canitpro/2015/09/08/step-by-step-enabling-hyper-v-for-use-on-windows-10/).

## Mais coisa em breve...
