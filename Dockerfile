# Build Website
FROM node:18-alpine AS builder

WORKDIR /src

## install dependencies
COPY package*.json ./
RUN npm install

## build website
COPY *.html *.css *.js ./
RUN npm run build

# Run Website
FROM nginx AS website

## install website
COPY --from=builder /src/dist /usr/share/nginx/html/
