FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:12 AS development

RUN sudo apt-get update \
    && sudo apt-get install gnupg \
    && wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add - \
    && echo "deb http://repo.mongodb.org/apt/debian $(lsb_release -cs)/mongodb-org/4.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list \
    && sudo apt-get update \
    && sudo apt-get install mongodb-org-tools \
    && npm i -g nodemon
