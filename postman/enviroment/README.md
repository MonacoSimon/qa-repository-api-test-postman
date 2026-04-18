## Descripción

Esta carpeta contiene el environment de Postman utilizado para ejecutar la colección de pruebas.

Permite centralizar variables y facilitar la reutilización de requests sin necesidad de modificar las URLs manualmente.

---

## Variables definidas

### UrlBase

Variable principal que representa la URL base de la API.

Ejemplo:

[https://github.com/Ovi/DummyJSON]


---

## Uso

1. Importar el environment en Postman
2. Seleccionarlo antes de ejecutar la colección
3. Configurar el valor de `UrlBase` con la URL de la API

---

## Ventajas

El uso de environment permite:

* evitar hardcodear URLs en los requests
* cambiar de entorno fácilmente (local, staging, producción)
* reutilizar la colección en distintos contextos

---

## Buenas prácticas aplicadas

* uso de variables globales
* separación entre configuración y lógica de testing
* compatibilidad con múltiples entornos

---

## Estado

✔ Environment configurado 
✔ Variable base implementada 
✔ Integración con colección funcional 
