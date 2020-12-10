FROM node:12.7-alpine AS builder

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build --prod

CMD ["npm", "start"]

#FROM nginx:alpine
#COPY src/nginx/etc/conf.d/default.conf /etc/nginx/conf/default.conf
#COPY --from=builder app/dist/angular8-crud-demo usr/share/nginx/html
### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
COPY default.conf /etc/nginx/conf/default.conf
COPY --from=builder app/dist/angular8-crud-demo usr/share/nginx/html