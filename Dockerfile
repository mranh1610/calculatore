FROM node:12-alpine
WORKDIR /usr/src/app 
COPY package.json package-lock.json ./
RUN npm install 
COPY . ./ 
RUN npm run build
CMD ["npm", "start"] 

