# STEP1 Ubuntu
FROM ubuntu:latest
# STEP2 Nginxのインストール
RUN apt-get update && apt-get install -y -q nginx
# STEP3 ファイルのコピー
COPY index.html /usr/share/nginx/html/
# STEP4 Nginxの起動
CMD ["nginx","-g","deamon off;"] 
