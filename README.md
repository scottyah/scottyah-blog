### Prereqs:
Docker
Internet connection

### To run:
git clone https://github.com/scottyah/scottyah-blog.git
docker build --no-cache -t blog-svr .
docker run -d -p 80:80 blog-svr