# --- Этап 1: Сборка проекта (Build) ---
FROM maven:3.9-eclipse-temurin-17 AS builder
WORKDIR /build

# Копируем описание зависимостей и скачиваем их
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Копируем исходный код и собираем проект
COPY src ./src
RUN mvn clean package -DskipTests

# --- Этап 2: Финальный образ для запуска (Runtime) ---
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Копируем готовый .jar файл из первого этапа
COPY --from=builder /build/target/*.jar app.jar

# Указываем порт приложения
EXPOSE 8080

# Команда для запуска
ENTRYPOINT ["java", "-jar", "app.jar"]