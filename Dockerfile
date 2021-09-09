FROM postgres:13

ADD ./init-auth.sh /docker-entrypoint-initdb.d/init-auth.sh
