#!/bin/bash

echo "Criando diretórios, um momento..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "Criando grupos de usuário, um momento..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos de usuário criados!"

echo "Criando usuários e atribuindo seus grupos, um momento..."

useradd carlos -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_VEN
useradd sebastiana  -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd teste@321) -G GRP_SEC

echo "Usuários criados e grupos atribuidos!"

echo "Atribuindo permissões aos diretórios, um momento..."


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "Permissões atribuidas aos diretórios!"

echo "Finalizado!"
