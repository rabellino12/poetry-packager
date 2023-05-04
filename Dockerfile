FROM alpine:3.15

ENV PATH="${HOME}/.poetry/bin:${PATH}"

RUN apk upgrade --update && apk add --no-cache curl python3 python3-dev gcc gfortran freetype-dev musl-dev libpng-dev g++ lapack-dev git
RUN ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools awscli
RUN curl https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
