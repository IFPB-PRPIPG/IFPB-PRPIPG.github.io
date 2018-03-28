# Treinamentos PRPIGP  

# Configurando ambiente  

Abaixo segue o tutorial de instalação do ambiente de desenvolvimento da página web do Núcleo de Desenvolvimento de Soluções Tecnológicas.

## Instalando a linguagem de programação Ruby na versão 2.5.0  

### Debian ou Ubuntu

O Debian GNU/Linux e o Ubuntu usam o gerenciador de pacotes apt. Sendo assim podemos instalar o ruby dessa forma:
```
$ sudo apt-get install ruby-full
```
No momento em que foi escrita esta página, o pacote ruby-full instalava a versão 2.3.1 do Ruby, a versão que queremos é a 2.5.0. Para mudar a versão é aconselhável utilizar o RVM([Ruby Version Manager](https://rvm.io/rvm/install)).

#### Instalando o RVM ([Fonte](https://rvm.io/rvm/install))

Para instalar a versão mais estável do RVM:
```
$ \curl -sSL https://get.rvm.io | bash -s stable
```

#### Instalando o RVM **Opção** ([Fonte](https://github.com/rvm/ubuntu_rvm))

Para instalar o RVM:
```
$ sudo apt-add-repository -y ppa:rael-gc/rvm
$ sudo apt-get update
$ sudo apt-get install rvm
```

Agora se faz necessário efetuar mudanças no terminal para que tenhamos acesso ao pacote **rvm**.

Vá até o terminal, clique em ```Edit``` > ```Profile Preferences``` > ```Command``` > ```Run command as a login shell```

![Terminal](https://github.com/IFPB-PRPIPG/IFPB-PRPIPG.github.io/blob/setup/assets/img/terminal.png)

Após isso temos que efetuar logout e login.

Para testar se tudo ocorreu como esperado:
``` 
$ rvm -v
rvm 1.29.3 (manual) by Michal Papis, Piotr Kuczynski, Wayne E. Seguin [https://rvm.io]
```

**Podemos** instalar o Ruby através do RVM:
```
$ rvm install ruby
```

Entretanto no momento em que foi escrita esta página o RVM efetuava a instalação do Ruby 2.4.1.

#### Instalando a versão 2.5.0 usando o RVM

Para instalar a versão 2.5.0:
```
$ rvm install ruby-2.5.0
```

Agora precisamos testar se a instalação foi efetuada com sucesso:
```
$ ruby -v
ruby 2.5.0
```

Caso a resposta não seja a versão que você instalou podemos efetuar a mudança através do RVM:
```
$rvm use 2.5.0
Using /home/${user}/.rvm/gems/ruby-2.5.0
```

Caso a resposta do ```$rvm use 2.5.0``` seja algo como:
```
Using /usr/local/rvm/gems/ruby-2.5.0
bash: /usr/local/rvm/rubies/ruby-2.5.0/bin/gem: /home/travis/.rvm/rubies/ruby-2.5.0/bin/ruby: bad interpreter: No such file or directory
```

Se faz necessário reinstalar a versão desejada: **([Fonte](https://github.com/rvm/rvm/issues/4291))**
```
$ rvm reinstall 2.5.0 --disable-binary
```

### Windows

Existe a possibilidade de instalar através desse executável: [Ruby Installer](https://rubyinstaller.org/)
Escolha a versão 2.5.0 do ruby.
