FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:12 AS development
 
ENV DEBIAN_FRONTEND=noninteractive
 
RUN apt-get update \
 && apt-get install gnupg \
 && wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | (OUT=$(apt-key add - 2>&1) || echo $OUT) \
 && echo "deb http://repo.mongodb.org/apt/debian $(lsb_release -cs)/mongodb-org/4.2 main" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list \
 && apt-get update \
 && apt-get install mongodb-org-tools \
 && apt-get install mongodb-org-shell \
 && npm i -g nodemon
 
ENV DEBIAN_FRONTEND=dialog
