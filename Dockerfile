FROM python:3.10
RUN pip install mkdocs mkdocs-material
COPY . /docs
WORKDIR /docs
