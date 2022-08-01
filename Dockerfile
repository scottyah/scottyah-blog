FROM alpine:latest

RUN apk add --no-cache git hugo
RUN git clone https://github.com/scottyah/scottyah-blog.git
WORKDIR scottyah-blog/hugo-content

EXPOSE 1313:1313
CMD ["hugo", "server", "--bind", "0.0.0.0", "-D"]
