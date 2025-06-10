FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

# Construa a imagem com: docker build -t adopet:1.0 .
# Depois rode a imagem com: docker run -p 3000:3000 adopet:1.0
# Acesse: http://localhost:3000