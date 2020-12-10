FROM node:12.7-alpine AS builder

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build --prod

CMD ["npm", "start"]

FROM nginx:alpine
RUN cp -r src/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
RUN cp -r --from=builder app/dist/angular8-crud-demo usr/share/nginx/html


