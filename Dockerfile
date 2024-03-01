FROM node:21-alpine as build

WORKDIR /app
 
COPY package.json .

RUN npm install npm@latest -g

COPY . . 

RUN npm install -g create-react-app

RUN npm run build

EXPOSE 3000

CMD ["npm","start"]

FROM nginx:alpine

COPY --from=build /app/build /usr/share/nginx/html
