FROM node
WORKDIR /userGKE
COPY package*.json ./
RUN npm install
COPY . .
ENV DB_HOST=172.17.0.2
ENV DB_USER=root
ENV DB_PASSWORD=gilda
ENV DB_NAME=user
#ENV DB_PORT=3306
ENV DB_PORT=3000
ENV NODE_DOCKER_PORT=8080  
EXPOSE 8080
CMD ["npm","start"]



