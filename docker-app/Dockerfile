# Dockerfile
# CentOs : Current
# Apache : 2.4.27

# ベースとなるイメージの選択
From centos

# コマンドの実行
RUN yum update -y && yum install -y \
    httpd24.x86_64 \
    php \
    mysql \
    vi \
    vim

# Apache用のログファイル作成
RUN mkdir /var/www/httpd-log

# Composerのインストール
RUN cd /tmp
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/bin/composer

# 開けるポートを指定する
EXPOSE 80

# ソフトウェアの実行(apacheの起動)
CMD /usr/sbin/httpd -DFOREGROUND
