# Используем легкий образ с Java
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Создаем простейший индекс-файл для проверки доступности
RUN echo "Hello from DevOps Homework!" > index.html

# Устанавливаем python3 с помощью менеджера пакетов apk (так как это Alpine)
RUN apk add --no-cache python3

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080"]