# Sistema de Gestion Bancaria - Frontend

Este es el frontend de una aplicacion de gestion bancaria desarrollada con Angular. Permite la administracion de clientes, cuentas y movimientos financieros, incluyendo la generacion de estados de cuenta detallados mediante filtros de fecha.

## Caracteristicas Principales

* Administracion de Clientes: Registro y gestion de la informacion personal de los usuarios.
* Gestion de Cuentas: Creacion de cuentas de ahorro y corrientes asociadas a clientes especificos.
* Movimientos Financieros: Registro de depositos y retiros con validacion automatica de saldo disponible en el servidor.
* Estados de Cuenta: Consulta de reportes detallados filtrados por rangos de fechas definidos por el usuario.
* Pruebas Unitarias: Cobertura de logica de negocio y validacion de componentes mediante Jasmine y Karma.

## Tecnologias Utilizadas

* Angular 17+: Framework base utilizando Standalone Components.
* RxJS: Manejo de flujos de datos asincronos y comunicaciones con el backend.
* Reactive Forms: Implementacion de formularios con validaciones robustas.
* Bootstrap: Framework de diseño para una interfaz responsiva.
* Jasmine y Karma: Herramientas para la ejecucion de pruebas unitarias.

## Requisitos Previos

Asegurate de tener instalados los siguientes componentes en tu entorno de desarrollo:

1. Node.js (Version 18 o superior recomendada).
2. Angular CLI (Instalable mediante: npm install -g @angular/cli).

## Instalacion y Configuracion

Sigue estos pasos para configurar el proyecto localmente:

1. Clonar el repositorio:
   git clone https://github.com/tu-usuario/nombre-del-repo.git
   cd nombre-del-repo

2. Instalar las dependencias del proyecto:
   npm install

3. Configurar el entorno: 
   Verifica la URL de la API en el archivo src/environments/environment.ts para asegurar la conexion con el backend.

## Ejecucion del Proyecto

Para iniciar el servidor de desarrollo, ejecuta el siguiente comando:

ng serve

Una vez iniciado, abre tu navegador en http://localhost:4200/. El proyecto cuenta con recarga automatica ante cualquier cambio detectado en el codigo fuente.

## Pruebas Unitarias

Para ejecutar la suite de pruebas unitarias y verificar la integridad de los componentes, utiliza:

ng test

Este proceso ejecuta validaciones clave, incluyendo:
- La creacion exitosa de componentes.
- La simulacion de servicios (Mocking) para evitar dependencias reales de HTTP.
- El manejo de errores especificos como "Saldo no disponible" y su visualizacion en la interfaz.

## Construccion para Produccion

Para generar una version optimizada de produccion en la carpeta dist/, ejecuta:

ng build

---
Nota: Este proyecto requiere la ejecucion simultanea de la API del Sistema Bancario para el correcto funcionamiento de la persistencia de datos.
