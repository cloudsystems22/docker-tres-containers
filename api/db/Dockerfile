FROM mysql:5.7
ENV MYSQL_DATABASE produtos
ENV MYSQL_ROOT_PASSWORD davidfico


COPY ./var/lib/mysql script.sql
RUN /var/lib/mysql/script.sql


