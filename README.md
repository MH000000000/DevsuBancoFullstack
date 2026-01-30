# Sistema Bancario Integral - Evaluación Técnica

Este repositorio contiene la solución completa para el sistema de gestión bancaria. La arquitectura está desacoplada en un **Backend (API)** y un **Frontend (Web)**, permitiendo escalabilidad y mantenibilidad independiente.

## Hoja de Ruta para la Revisión

Para una correcta evaluación y despliegue del proyecto, se recomienda seguir este orden:

### Paso 1: Inicialización de Datos
Antes de ejecutar las aplicaciones, es necesario preparar el entorno de persistencia:
- En su gestor de base de datos, ejecute el script `CREATE DATABASE db_banco.sql`, que se encontrará en la raíz del proyecto, para crear el esquema y los datos iniciales.

### Paso 2: Configuración y Despliegue del Backend
Una vez preparada la base de datos, proceda con el núcleo del sistema:
- Diríjase a la carpeta `/api-banco`.
- En esta carpeta encontrará un **README.md** específico con los requisitos de Java, Maven, instrucciones para ejecutar las **Pruebas de Integración** y los pasos para el despliegue del servicio.

### Paso 3: Configuración y Despliegue del Frontend
Finalmente, levante la interfaz de usuario:
- Diríjase a la carpeta `/api-banco-front`.
- En esta carpeta encontrará un **README.md** detallado con los comandos de Angular CLI para la instalación de dependencias, ejecución del servidor de desarrollo y comandos para las **Pruebas Unitarias** con Karma.

---

## Aspectos Técnicos Destacados

- **Arquitectura de Microservicios Ready**: El proyecto está preparado para ser dockerizado de forma independiente.
- **Validación de Reglas de Negocio**: Implementación de lógica distribuida para la validación de saldos y tipos de movimiento.
- **Reportes Avanzados**: Módulo de generación de estados de cuenta con exportación nativa a PDF.
- **Cobertura de Pruebas**: Suite de pruebas automatizadas en ambas capas (JUnit para el Back y Jasmine/Karma para el Front).

---
**Nota para el Evaluador:** Cada submódulo ha sido tratado como un proyecto profesional independiente, siguiendo las convenciones de nombres y estructuras de carpetas estándar de la industria.