# Imagen base con Java 21
FROM eclipse-temurin:21-jdk-jammy

# Directorio donde vivirá la app en el contenedor
WORKDIR /app

# Copiamos el JAR que generaste con ./mvnw clean install
COPY target/api-banco-0.0.1-SNAPSHOT.jar app.jar

# Puerto que expone Spring Boot
EXPOSE 8080

# Comando de arranque
ENTRYPOINT ["java", "-jar", "app.jar"]