cd ..
docker build -t scottyah/blog:latest .
docker push scottyah/blog:latest
kubectl rollout restart deployment blog-dep -n blog