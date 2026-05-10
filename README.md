## Descripción

Este proyecto consiste en la implementación de pruebas de API utilizando Postman sobre la API pública DummyJSON.

El objetivo es validar el comportamiento de distintos endpoints REST mediante la ejecución de operaciones CRUD (Create, Read, Update, Delete), aplicando buenas prácticas de testing y automatización de validaciones.

Además, se incorporó la ejecución automatizada mediante Newman, permitiendo correr las pruebas desde línea de comandos y generar reportes, simulando un entorno real de integración continua (CI).

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

## Herramientas utilizadas

* Postman – testing de APIs y automatización de validaciones 
* Newman – ejecución automatizada de colecciones 
* Newman HTML Reporter – generación de reportes visuales 

---

## Estructura del proyecto

```bash
.
├── postman
│   ├── collections        → colección organizada por módulos
│   └── enviroment         → variables de entorno
├── newman
│   ├── run.sh             → script de ejecución automatizada
│   ├── report.html        → reporte generado
│   └── inform.md          → resultados de ejecución
├── README.md


strategia de testing

Se aplicó una estrategia basada en validaciones automáticas dentro de Postman, utilizando scripts en la pestaña Tests para cada request.

Validaciones implementadas
códigos de estado HTTP (200, 201, 204)
formato de respuesta (JSON)
estructura de los objetos
existencia de atributos obligatorios
consistencia de datos enviados vs recibidos
tiempos de respuesta (< 2000 ms)
validación de eliminación lógica (isDeleted)
Cobertura funcional

El proyecto cubre escenarios como:

obtención de listas de recursos
consulta de elementos individuales
creación de nuevos registros
actualización de datos existentes
eliminación de recursos
validación de estructuras complejas (ej: carritos con productos)
Ejecución con Postman
Importar la colección desde /postman/collections
Importar el environment desde /postman/enviroment
Configurar la variable UrlBase (ej: https://dummyjson.com
)
Ejecutar los requests o la colección completa

## Reporte

# Luego de la ejecución se genera:

newman/report.html

Este archivo contiene:

resumen de ejecución
requests ejecutadas
tests pasados y fallidos
tiempos de respuesta
Conclusión

- La API evaluada presenta un comportamiento consistente y estable en las operaciones principales.

- Los endpoints responden correctamente a las solicitudes realizadas, manteniendo una estructura de datos predecible y tiempos de respuesta adecuados.

- La incorporación de Newman permite automatizar la ejecución de pruebas y generar reportes, acercando el proyecto a un entorno real de trabajo con integración continua.

- El proyecto demuestra competencias en testing de APIs tanto manual como automatizado, incluyendo validaciones funcionales, técnicas y ejecución desde línea de comandos.

# Setup del Entorno

El proyecto incluye un script `set-up.sh` para automatizar la preparación inicial del entorno de ejecución.

## Funcionalidad del Script

El script realiza las siguientes tareas:

- Verifica que Node.js esté instalado
- Verifica que npm esté instalado
- Verifica si Newman está instalado
- Instala Newman automáticamente en caso de no existir
- Crea directorios necesarios para resultados
- Asigna permisos de ejecución a los scripts del proyecto

---

# Dar Permisos de Ejecución

Antes de ejecutar el script debe asignarse permiso de ejecución:

```bash
chmod +x set-up.sh
```

---

# Ejecutar el Script

```bash
./set-up.sh
```

---

# Resultado Esperado

Si todo funciona correctamente, el script mostrará:

```text
Entorno listo
```

---

# Ejecutar las Pruebas

Una vez finalizado el setup:

```bash
cd newman
./run.sh
```

---

# Requisitos

El proyecto requiere:

- Node.js
- npm
- conexión a Internet para instalar Newman automáticamente

---

# Resultados Generados

Los reportes y resultados se almacenan en:

```text
newman/results
```
