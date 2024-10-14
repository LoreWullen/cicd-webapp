FROM node:20-alpine
WORKDIR /app
COPY package.json yarn.lock ./
EXPOSE 3000 
RUN yarn install --frozen-lockfile
COPY . .
CMD ["yarn", "start"]