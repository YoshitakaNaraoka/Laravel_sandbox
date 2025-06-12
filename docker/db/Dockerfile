FROM mysql:8.4

# MySQLの設定ファイルを追加
COPY ./docker/db/my.cnf /etc/my.cnf

# ユーザー作成用の初期SQLを追加
COPY docker/db/init.sql /docker-entrypoint-initdb.d/init.sql