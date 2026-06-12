# Parcial Final Programación N-Capas – (Seguridad con Spring Security + JWT)

Este repositorio contiene un proyecto para evaluar y practicar los conceptos de seguridad en aplicaciones Spring Boot usando JWT, roles y Docker.

### Estudiantes
- **Nombre del estudiante 1**: [Oscar Armando Calderon Arguera] - [00090822]
- **Nombre del estudiante 2**: [Juan Neftaly Castellanos Hernandez] - [00182222]
- Sección: [02]
---
## Usuarios de Prueba
### Admin / Tech
- **Correo:** `admin@example.com`
- **Password:** `adminuser`

### User
- **Correo:** `user@example.com`
- **Password:** `normaluser`

## Ejecutar Docker 
Ejecutar: 
- `docker build -t ParcialFinalN-Capas .`
- `docker run -p 8080:8080 ParcialFinalN-Capas`
- `docker-compose up -d` (Para levantar con base de datos)

## Sistema de Soporte Técnico

### Descripción
Simula un sistema donde los usuarios pueden crear solicitudes de soporte (tickets) y los técnicos pueden gestionarlas. El sistema cuenta con autenticación y autorización mediante Spring Security y JWT.

### Características implementadas
- Autenticación mediante JWT.
- Roles de usuario: `USER` y `TECH`.
- Acceso restringido según el rol.
- Contenerización con Docker.
- Documentación con MkDocs.
- Colección de Postman incluida para pruebas.

_Si van a crear mas endpoints como el login o registrarse recuerden actualizar postman/insomnia/bruno collection_

### Partes de desarrollo

#### Parte 1: Implementar login con JWT
- [ ] Crear endpoint `/auth/login`.
- [ ] Validar usuario y contraseña (puede estar en memoria o en BD).
- [ ] Retornar JWT firmado.

#### Parte 2: Configurar filtros y validación del token
- [ ] Crear filtro para validar el token en cada solicitud.
- [ ] Extraer usuario desde el JWT.
- [ ] Añadir a contexto de seguridad de Spring.

#### Parte 3: Proteger endpoints con Spring Security
- [ ] Permitir solo el acceso al login sin token.
- [ ] Proteger todos los demás endpoints.
- [ ] Manejar errores de autorización adecuadamente.

#### Parte 4: Aplicar roles a los endpoints

| Rol   | Acceso permitido                                 |
|--------|--------------------------------------------------|
| USER  | Crear tickets, ver solo sus tickets              |
| TECH  | Ver todos los tickets, actualizar estado         |

- [ ] Usar `@PreAuthorize` o reglas en el `SecurityFilterChain`.
- [ ] Validar que un USER solo vea sus tickets.
- [ ] Validar que solo un TECH pueda modificar tickets.

#### Parte 5: Agregar Docker
- [ ] `Dockerfile` funcional para la aplicación.
- [ ] `docker-compose.yml` que levante la app y la base de datos.
- [ ] Documentar cómo levantar el entorno (`docker compose up`).

#### Parte 6: Evidencia de pruebas
- [ ] Probar todos los flujos con Postman/Insomnia/Bruno.
- [ ] Mostrar que los roles se comportan correctamente.
- [ ] Incluir usuarios de prueba (`user`, `tech`) y contraseñas.
