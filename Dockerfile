FROM gitea/gitea:latest

COPY custom/app.ini /data/gitea/conf/app.ini

RUN apk --no-cache add asciidoctor freetype freetype-dev gcc g++ libpng python-dev py-pip python3-dev py3-pip

RUN pip3 install --upgrade pip
RUN pip3 install -U setuptools
RUN pip3 install jupyter matplotlib docutils 
