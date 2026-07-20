# Используем легкий образ с Java
FROM eclipse-temurin:17-jdk-slim

WORKDIR /app

# Создаем простейший индекс-файл для проверки доступности
RUN echo "Hello from DevOps Homework!" > index.html

# Устанавливаем простой python-сервер для имитации веб-приложения на порту 8080
RUN apt-get update && apt-get install -y python3

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080"]