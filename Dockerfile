FROM node AS builder

COPY angular-realworld-example-app/ /app	

RUN npm install -g @angular/cli -y

WORKDIR /app

RUN yarn install || exit 0

RUN ng build

FROM nginx

RUN mkdir -p /var/www/app 

WORKDIR /var/www/app

COPY --from=builder /app/dist/ .
EXPOSE 80
COPY nginx-conf/nginx.conf /etc/nginx/nginx.conf
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx-conf/app.conf /etc/nginx/conf.d/	

CMD ["nginx", "-g", "daemon off;"]
