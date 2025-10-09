FROM alpine:latest AS build_stage
WORKDIR /opt
RUN apk add git hugo
ADD hugo-content /opt/hugo-content
WORKDIR /opt/hugo-content
RUN hugo
ENTRYPOINT ["/bin/ash"]


FROM nginx:latest AS server_stage
COPY --from=build_stage /opt/hugo-content/public/ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
