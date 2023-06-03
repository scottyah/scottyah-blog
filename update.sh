git pull
docker build -t scottyah/blog:latest .
docker push scottyah/blog:latest
sk rollout restart deployment blog-dep
