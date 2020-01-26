# Hello, Stable!

Hello Stable is proof of concept/boiler-plate project on how to create a scaleable web server.

## Design.
The project has been designed to fit inside a single Docker container for easy deployment, but could easily be modified to use multiple containers on different machines.
The website is served by a cluster (default N=4) of Node.js Express processes.
These processes are load managed by a Ngnix instance. Nginx also caches static files.


## Dependencies
Since this whole project runs inside of a Docker container [Docker](https://www.docker.com/) is the only dependency.

## Usage

```bash
git clone https://github.com/AdamCollins/hello-stable.git && cd hello-stable
docker build
docker build -t <tag name> .
docker run -p 80:80 <tag name>
```

## License
[MIT](https://choosealicense.com/licenses/mit/)
