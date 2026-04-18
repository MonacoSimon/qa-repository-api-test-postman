## Descripción

Esta carpeta contiene la colección de Postman utilizada para realizar pruebas de API sobre DummyJSON.

El objetivo es validar distintos endpoints simulando operaciones reales sobre recursos como productos, usuarios, carritos y recetas.

---

## Estructura de la colección

La colección está organizada en módulos funcionales:

### Products
Operaciones sobre productos:

* GET → obtener lista de productos
* GET → obtener producto individual
* GET → categorías
* POST → crear producto
* DELETE → eliminar producto

---

### Users
Gestión de usuarios:

* GET → obtener usuario
* POST → crear usuario
* PUT → actualizar usuario
* DELETE → eliminar usuario

---

### Carts
Operaciones sobre carritos:

* GET → obtener todos los carritos
* GET → obtener carrito individual
* POST → crear carrito
* PUT → actualizar carrito
* DELETE → eliminar carrito

---

### Recipes
Gestión de recetas:

* GET → listar recetas
* GET → obtener receta
* POST → crear receta
* PUT → actualizar receta
* DELETE → eliminar receta

---

## Validaciones implementadas

En los scripts de test se validan:

* códigos de estado HTTP (200, 201, 204)
* formato de respuesta (JSON)
* estructura de los objetos
* existencia de propiedades clave
* tiempos de respuesta (< 2000 ms)
* creación y actualización de recursos
* eliminación lógica (`isDeleted`)

---

## Ejecución

1. Importar la colección en Postman
2. Seleccionar el environment correspondiente
3. Ejecutar requests individuales o toda la colección

---

## Objetivo del testing

Este conjunto de pruebas permite validar:

* correcto funcionamiento de endpoints REST
* integridad de datos
* comportamiento CRUD completo
* estabilidad de la API

---

## Estado

✔ Colección completa 
✔ Scripts de validación implementados 
✔ Estructura modular clara 
✔ Cobertura de múltiples recursos 
