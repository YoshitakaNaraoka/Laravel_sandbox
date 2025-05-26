-- 注意: mysql_native_password を使わずに作成する
CREATE DATABASE IF NOT EXISTS localDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP USER IF EXISTS 'appuser'@'%';
CREATE USER 'appuser'@'%' IDENTIFIED BY 'password'; -- caching_sha2_password を使う
GRANT ALL PRIVILEGES ON localDB.* TO 'appuser'@'%';
FLUSH PRIVILEGES;