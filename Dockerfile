FROM node:10

# Create app directory
WORKDIR /usr/src/app

#install nginx
RUN apt-get -y update
RUN apt-get -y install nginx
COPY nginx-config/default /etc/nginx/sites-enabled/

#install node server
ADD node-server .
RUN npm install

#Setup start.sh
COPY start.sh ./start.sh
RUN chmod +x start.sh




EXPOSE 80

CMD ["./start.sh"]

