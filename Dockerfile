FROM node:16.15.0-alpine as build
WORKDIR /frontend
COPY package.json /frontend/
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]