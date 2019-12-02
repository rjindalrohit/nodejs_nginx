# nodejs_nginx
angular project used - https://github.com/gothinkster/angular-realworld-example-app

Docker CMD :- 
1) Clone code :- git clone https://github.com/rjindalrohit/nodejs_nginx.git
2) go to nodejs_nginx dir 
3) build image - docker build -t ${IMAGE_NAME} . i.e. docker build -t app_image .
4) start conatiner - docker run -d -p 8080:80 app_image
5) Check URL :- ${SYSTEM_IP}/8080 
