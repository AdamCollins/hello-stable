FROM node:10

# Create app directory
WORKDIR /usr/src/app

#install nginx
RUN apt-get -y update
RUN apt-get -y install nginx
COPY nginx.conf /etc/nginx/nginx.conf

#install node server
COPY node-server .
RUN cd node-server 
RUN npm install

#Setup start.sh
RUN cd ..
RUN chmod +x start.sh




EXPOSE 80

CMD ["./start.sh"]

