FROM postgres
ENV POSTGRES_PASSWORD password
ENV POSTGRES_DB task_2
COPY task2SQL.sql /docker-entrypoint-initdb.d/