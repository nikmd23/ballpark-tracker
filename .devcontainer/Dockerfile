FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:12 AS development

RUN sudo apt-get update \
    && sudo apt-get install gnupg \
    && wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add - \
    && echo "deb http://repo.mongodb.org/apt/debian $(lsb_release -cs)/mongodb-org/4.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list \
    && sudo apt-get update \
    && sudo apt-get install mongodb-org-tools \
    && npm i -g nodemon \

# Build steps go here
FROM development as builder
WORKDIR /app
COPY src/ *.json ./
RUN yarn install \
    && yarn compile \
    #  Just install prod dependencies
    && yarn install --prod

# Actual production environment setup goes here
FROM node:12-slim AS production
WORKDIR /app
COPY --from=builder /app/out/ ./out/
COPY --from=builder /app/node_modules/ ./node_modules/
COPY --from=builder /app/package.json .
EXPOSE 3000
ENTRYPOINT [ "/bin/bash", "-c" ]
CMD [ "npm start" ]
