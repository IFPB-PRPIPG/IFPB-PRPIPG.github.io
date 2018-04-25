---
layout: post
title: 'Docker visão geral'
introduction: 'Docker visão geral.'
description: 'Por onde começar, no Windows ou Linux.'
date: 2018-03-08 12:00:00
main-class: 'misc'
tags:
- docker
- windows
author_img: 'kelvin.png'
author: 'Kelvin Romero'
github_username: 'kelvinromero'
author_email: 'kelvin.romero@academico.ifpb.edu.br'
twitter_text: 'Docker, por onde começar no Linux ou Windows.'
comments: true
image: '/assets/img/posts/containerxvm.jpg'
---

# O que é o Docker

Docker é uma plataforma para desenvolvedores e administradores de sistemas desenvolverem, implantarem e executarem aplicações com _containers_ Linux. Container Linux é uma solução similar à criação de máquinas virtuais (VM) para compartilhamento de recursos de hardware, a principal diferença é que os _containers_ compartilham o Kernel da máquina hospedeira (Host), sem necessidade de simular hardware (comum em Hypervisores) e/ou instalar sistema operacional (S.O.) sobre a VM. O uso do containers Linux para implantar (deploy) aplicações chama-se **conteinerização**.

![Container vs VM][container_vs_vm]
<center>Máquinas Virtuais vs Containers</center>

## Vantagens

- Flexibilidade: Mesmo as aplicações mais complexas podem ser conteinerizada.
- Leve: Containers fazem proveito do uso compartilhado do kernel do Host.
- Intercambiável: Você pode fazer updates e upgrades na hora.
- Portable: Você pode construir localmente, fazer deploy na nuvem e rodar em qualquer S.O.
- Escalável: Você pode aumentar e automaticamente distribuir replicas do container criado.
- Empilhável: Facilmente você coloca novos serviços no ar.

# Vocabulário

- Docker image: Funciona como uma planta, para construir um container
- Docker container: É uma imagem em execução (basicamente um processo)
- Conteinerização: Uso do containers Linux para implantar (deploy) aplicações.

# Consiga o Docker
## Para o Windows
- Para o Windows 10 edição HOME : [Docker toolbox][get-docker-toolbox]
- Para o Windows 10 edição PROFESSIONAL : [Docker Community edition][get-docker-pro]
  - É preciso habilitar o Hyper-V: [Siga as instruções aqui][enable-hyperv].

## Para o Linux
Instruções para instalação do Docker Community Edition (gratuito):
- [Debian][get-docker-debian]
- [Ubuntu][get-docker-ubuntu]
- [Centos][get-docker-centos]
- [Fedora][get-docker-fedora]

## Para o MAC
- [MAC OS][get-docker-mac]

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

<!-- Links -->
[get-docker-toolbox]:https://docs.docker.com/toolbox/toolbox_install_windows/
[get-docker-pro]:https://docs.docker.com/docker-for-windows/install/
[enable-hyperv]:https://blogs.technet.microsoft.com/canitpro/2015/09/08/step-by-step-enabling-hyper-v-for-use-on-windows-10/
[container_vs_vm]:/assets/img/posts/containerxvm.jpg
[get-docker-debian]:https://docs.docker.com/install/linux/docker-ce/debian/
[get-docker-ubuntu]:https://docs.docker.com/install/linux/docker-ce/ubuntu/
[get-docker-centos]:https://docs.docker.com/install/linux/docker-ce/centos/
[get-docker-fedora]:https://docs.docker.com/install/linux/docker-ce/fedora/
[get-docker-mac]:https://docs.docker.com/docker-for-mac/install/
