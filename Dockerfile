FROM node:16-alipne AS praveen
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000


FROM praveen AS final
RUN npm run build
COPY . .
CMD ["npm", "start"]
