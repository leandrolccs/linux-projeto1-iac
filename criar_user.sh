#!/bin/bash


echo "Criando usuários do sistema...."


useradd guest10 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd teste@123)
passwd guest10  -e

useradd guest11 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd teste@123)
passwd guest10  -e

useradd guest12 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd teste@123)
passwd guest10  -e

useradd guest13 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd teste@123)
passwd guest10  -e


echo "Finalizado!"
