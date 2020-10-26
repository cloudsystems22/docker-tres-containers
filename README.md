# docker-tres-containers

1. Executando a imagem do mysql para construirmo o banco de dados e tabelas:
docker build -t mysql-image -f api/db/Dockerfile .

O comando abaixo irá exibir as imagens disponivies para utilização
docker imag ls 

Comando para criação do container que utilizara nossa imagem
docker run -d --rm --name mysql-container mysql-image

Compartilhando volume
docker run -d --rm --name mysql-container -v var/lib/mysql mysql-image
docker run -d -v $(pwd)/api/db/data:/var/lib/mysql --rm --name mysql-container mysql-image

Informar exec -i para indicar que precisamos executar um comando modo interativo

docker exec -i mysql-container mysql -uroot -pdavidfico < api/db/script.sql
windows => docker exec -i mysql-container mysql -uroot -pdavidfico api/db/script.sql
docker exec -i mysql-container sh -c 'exec mysql -uroot -p"davidfico"' api/db/script.sql

Acessar a tabela.
docker exec -it mysql-container /bin/bash

Acesso ao mysql
mysql uroot -pdavidfico

2. Contruindo docker node.
Construindo imagem
docker build -t node-image -f api/Dockerfile .

Construindo container
docker run -d --rm -p 9001:9001 --name node-container node-image

3. Construindo container PHP 
docker build -t php-image -f website/Dockerfile .

Container php
docker run -d --rm -p 8888:8888 --name php-container php-image
