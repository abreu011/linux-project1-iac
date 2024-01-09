#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários..."

useradd ana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd gabriel -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd isabela -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd matheus -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd carolina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd thiago -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd larissa -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento finalizado"
