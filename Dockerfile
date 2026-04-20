FROM node:20-alpine
WORKDIR /app

# зависимости
COPY package*.json ./
RUN npm install

# код
COPY . .

# инструменты + fix CRLF + права
RUN apk add --no-cache netcat-openbsd \
    && sed -i 's/\r//' *.sh \
    && chmod +x *.sh

EXPOSE 3000
CMD ["sh", "./dev.sh"]
