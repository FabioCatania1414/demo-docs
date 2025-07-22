FROM python:3-alpine
RUN apk add --no-cache build-base && \
    pip install --upgrade pip && \
    pip install mkdocs
COPY ./mkdocs/ /mkdocs/
WORKDIR /mkdocs/
EXPOSE 8080
CMD ["mkdocs", "serve"]
