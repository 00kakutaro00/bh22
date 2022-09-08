FROM ubuntu:20.04


RUN apt-get update && apt-get install -y --no-install-recommends wget build-essential libreadline-dev \ 
libncursesw5-dev libssl-dev libsqlite3-dev libgdbm-dev libbz2-dev liblzma-dev zlib1g-dev uuid-dev libffi-dev libdb-dev curl

#任意バージョンのpython install
RUN wget --no-check-certificate https://www.python.org/ftp/python/3.9.5/Python-3.9.5.tgz \
&& tar -xf Python-3.9.5.tgz \
&& cd Python-3.9.5 \
&& ./configure --enable-optimizations\
&& make \
&& make install

#サイズ削減のため不要なものは削除
RUN apt-get autoremove -y
RUN apt-get install -y python3-pip


RUN pip install ipywidgets jupyterlab matplotlib \
    nodejs numpy pandas cwltool

RUN curl -fsSL https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz \
    | tar -xzC /usr/local/bin --strip=1 docker/docker

WORKDIR /workspace

