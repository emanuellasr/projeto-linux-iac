#!/bin/bash

echo "Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuários"

useradd carlos -c "Carlos Martins" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_ADM
useradd joao -c "João Ribeiro" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_ADM
useradd debora -c "Debora Reis" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_VEN
useradd sebastiana -c "Sebastiana Claro" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_VEN
useradd roberto -c "Roberto Santos" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_VEN
useradd josefina -c "Josefina Carla" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_SEC
useradd amanda -c "Amanda Pereira" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_SEC
useradd rogerio -c "Rogério Carlos" -m -s /bin/bash -p $(openssl passwd senhausuario) -G GRP_SEC

echo "Dono dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Permissões"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


