# Build Website
FROM node:18-alpine AS builder

WORKDIR /build

## install dependencies
COPY package*.json ./
RUN npm install

## build website
COPY src ./src
RUN npm run build

# Run Website
FROM nginx AS website

## install website
COPY --from=builder /build/dist /usr/share/nginx/html/

EXPOSE 80
