FROM alpine:latest as build_stage
WORKDIR /opt
RUN apk add git hugo
# Adding this so the repo isn't cached
ADD https://api.github.com/repos/scottyah/scottyah-blog/git/refs/heads/main version.json
RUN git clone https://github.com/scottyah/scottyah-blog.git
WORKDIR /opt/scottyah-blog/hugo-content
RUN hugo

FROM nginx:latest as server_stage
COPY --from=build_stage /opt/scottyah-blog/hugo-content/public/ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]