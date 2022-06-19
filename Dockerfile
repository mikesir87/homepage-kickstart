# Update the NODE_VERSION arg in docker-compose.yml to pick a Node version: 18, 16, 14
FROM golang:1.18.3-bullseye

# Download Hugo
RUN mkdir $HOME/src && \
    cd $HOME/src && \
    git clone https://github.com/gohugoio/hugo.git && \
    cd hugo && \
    go install --tags extended

# Hugo dev server port
EXPOSE 1313