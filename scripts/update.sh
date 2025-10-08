cd ..
git pull
docker build -t scottyah/blog:latest .
docker push scottyah/blog:latest
sudo kubectl rollout restart deployment blog-dep
