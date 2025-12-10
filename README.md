# Proyecto con Slim Framework 4

[![Coverage Status](https://coveralls.io/repos/github/slimphp/Slim-Skeleton/badge.svg?branch=master)](https://coveralls.io/github/slimphp/Slim-Skeleton?branch=master)

## Instalación
He optado por configurar un contenedor Docker para ejecutar el proyecto.

```bash
docker compose up -d
```

* Abre tu navegador http://localhost:8080
* Asegurate de que el usuario web puede escribir en `logs/`.

Para ejecutar la aplicación en desarrollo, puedes ejecutar estos comandos 

```bash
cd [my-app-name]
composer start
```

O puedes usar `docker-compose` para ejecutar la app con `docker`, asi puedes ejecutar estos comandos:
```bash
cd [my-app-name]
docker-compose up -d
```
Después de eso, abre `http://localhost:8080` en tu navegador.

Ejecuta este comando en el directorio de la aplicación para ejecutar el conjunto de pruebas

```bash
composer test
```

Ya está. A implementar algo guapo.
