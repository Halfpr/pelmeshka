FROM node:16-alpine as builder
WORKDIR /usr/src/app
COPY . .
RUN npm install && NODE_ENV=production VUE_APP_API_URL=http://localhost:8081 && npm run build

FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY --from=builder /usr/src/app/dist .
WORKDIR /app
#COPY --from=builder /usr/src/app/nginx.tmpl ./nginx.tmpl
COPY --from=builder /usr/src/app/default.conf /etc/nginx/conf.d/
EXPOSE 80
