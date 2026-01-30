# API de Gestion Bancaria - Proyecto Devsu

Este proyecto es una API REST robusta desarrollada para la gestion integral de clientes, cuentas y movimientos bancarios. Implementa logica de negocio avanzada para la validacion de saldos, registro de transacciones financieras y generacion de reportes de estados de cuenta.

## Tecnologias Utilizadas

* Java 21: Lenguaje de programacion principal (Version LTS).
* Spring Boot 3.4.x: Framework base para la creacion de microservicios.
* Spring Data JPA: Mapeo objeto-relacional (ORM) y gestion de persistencia.
* PostgreSQL 15: Motor de base de datos relacional.
* Docker & Docker Compose: Containerizacion y orquestacion de servicios.
* JUnit 5 & Mockito: Frameworks para pruebas unitarias y de integracion.
* Maven: Herramienta de gestion de dependencias y ciclo de vida del proyecto.

## Requisitos Previos

Para ejecutar este proyecto, es necesario contar con:

1. Docker Desktop instalado y en ejecucion.
2. Java 21 (opcional, si desea compilar fuera de Docker).
3. Maven (opcional, si desea gestionar dependencias localmente).

## Instalacion y Despliegue con Docker

El proyecto esta diseñado para ejecutarse en entornos aislados mediante contenedores. Siga estos pasos para levantar el sistema completo (API y Base de Datos):

1. Clonar el repositorio:
   git clone <url-del-repositorio>
   cd api-banco

2. Construir el archivo ejecutable (JAR):
   En sistemas Unix/Linux/macOS:
   ./mvnw clean package -DskipTests

   En sistemas Windows:
   mvnw.cmd clean package -DskipTests

3. Levantar los servicios con Docker Compose:
   docker-compose up --build

Una vez finalizado el proceso, la API estara disponible en: http://localhost:8080

## Documentacion de la API

Los principales endpoints disponibles son:

* Clientes: /clientes
* Cuentas: /cuentas
* Movimientos: /movimientos
* Reportes: /reportes?fecha=YYYY-MM-DD

## Ejecucion de Pruebas Unitarias

Para validar la logica de negocio, el cumplimiento de las reglas de saldo disponible y la integridad de las transacciones, ejecute:

./mvnw test

El reporte de pruebas indicara la cobertura de los metodos de servicio y controladores, asegurando que el sistema maneje correctamente las excepciones financieras definidas.

## Base de Datos

La base de datos PostgreSQL se inicializa automaticamente mediante Docker. Las credenciales de conexion y la configuracion de persistencia se encuentran definidas en el archivo src/main/resources/application.properties o mediante variables de entorno en el archivo docker-compose.yml.

---
Nota: La aplicacion utiliza migraciones de base de datos o generacion automatica de esquemas para asegurar que las tablas de Clientes, Cuentas y Movimientos esten listas al iniciar el servicio.
