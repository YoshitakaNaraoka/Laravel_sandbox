## 構築手順記録記事　
[DockerでPHP（Laravel）+ nginx + MySQLのLEMP環境を構築する](https://qiita.com/hinako_n/items/f15646ea548bcdc8ac6c)

## Windows 11
 - Docker Desktop をインストール
 - WSL2 は Docker Desktop に付随するので，個別のインストールは不要
 - WSL2 上で起動する Linux ディストリビューションとして Microsoft Store で Ubuntu を導入
 - Docker Desktop で Ubuntu を同期
 - VSCode 上でプロジェクトターミナルから WSL ターミナルを開く
  - wsl -d Ubuntu-xx.xx
 - WSL 内に PHP,Composer をインストール
 - MySQL はこのプロジェクトでは Dockerfile に記述されているためインストール不要