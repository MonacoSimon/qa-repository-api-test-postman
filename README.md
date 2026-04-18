## Descripción

Este proyecto consiste en la implementación de pruebas de API utilizando Postman sobre la API pública DummyJSON.

El objetivo es validar el comportamiento de distintos endpoints REST mediante la ejecución de operaciones CRUD (Create, Read, Update, Delete), aplicando buenas prácticas de testing y automatización de validaciones.

Se busca simular un entorno real de trabajo QA enfocado en pruebas de backend.

---

## Alcance de pruebas

Se realizaron pruebas sobre los siguientes módulos de la API:

* Products
* Users
* Carts
* Recipes

Para cada uno de ellos se cubren las operaciones principales:

* GET → obtención de datos
* POST → creación de recursos
* PUT → actualización de información
* DELETE → eliminación de recursos

---

## Herramienta utilizada

* Postman – testing de APIs y automatización de validaciones mediante scripts

---

## Estructura del proyecto

```bash
.
├── collections        → colección de requests organizada por módulos
├── environment        → variables de entorno (URL base)
└── README.md
```

---

## Estrategia de testing

Se aplicó una estrategia basada en validaciones automáticas dentro de Postman, utilizando scripts en la pestaña **Tests** para cada request.

### Validaciones implementadas

* códigos de estado HTTP (200, 201, 204)
* formato de respuesta (JSON)
* estructura de los objetos
* existencia de atributos obligatorios
* consistencia de datos enviados vs recibidos
* tiempos de respuesta (< 2000 ms)
* validación de eliminación lógica (`isDeleted`)

---

## Cobertura funcional

El proyecto cubre escenarios como:

* obtención de listas de recursos
* consulta de elementos individuales
* creación de nuevos registros
* actualización de datos existentes
* eliminación de recursos
* validación de estructuras complejas (ej: carritos con productos)

---

## Ejecución

1. Importar la colección desde `/collections`
2. Importar el environment desde `/environment`
3. Configurar la variable `UrlBase` (ej: https://dummyjson.com)
4. Ejecutar los requests o la colección completa desde Postman

---

## Buenas prácticas aplicadas

* uso de variables de entorno para evitar hardcodeo
* organización modular por recurso
* validaciones automatizadas en cada request
* verificación de performance básica
* cobertura de flujo CRUD completo

---

## Conclusión

La API evaluada presenta un comportamiento consistente y estable en las operaciones principales.

Los endpoints responden correctamente a las solicitudes realizadas, manteniendo una estructura de datos predecible y tiempos de respuesta adecuados.

El proyecto demuestra la correcta aplicación de pruebas de API utilizando Postman, cubriendo tanto validaciones funcionales como técnicas, y dejando una base reutilizable para futuros escenarios de testing.

---

## Estado del proyecto

✔ Colección completa
✔ Environment configurado
✔ Validaciones automatizadas
✔ Cobertura CRUD implementada
✔ Estructura organizada y reutilizable
