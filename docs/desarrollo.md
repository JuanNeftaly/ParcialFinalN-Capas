# Desarrollo y Roles de Seguridad

El desarrollo de este parcial está dividido en las siguientes etapas principales para asegurar los endpoints existentes osi osi

## Etapas del Desarrollo

1. **Parte 1: Implementar login con JWT.** Crear el endpoint `/auth/login`, validar usuario/contraseña y retornar un JWT firmado.
2. **Parte 2: Configurar filtros y validación.** Crear un filtro para validar el token en cada solicitud, extraer el usuario y añadirlo al contexto de seguridad de Spring.
3. **Parte 3: Proteger endpoints.** Permitir solo el acceso al login sin token y proteger los demás endpoints manejando los errores adecuadamente.

## Control de Acceso (Parte 4)

Se han implementado restricciones específicas dependiendo del rol del usuario utilizando anotaciones como `@PreAuthorize` o reglas en el `SecurityFilterChain`.

| Rol | Acceso Permitido |
| --- | --- |
| **USER** | Crear tickets, ver **solo** sus propios tickets. |
| **TECH** | Ver **todos** los tickets, actualizar el estado de los mismos. |

## Usuarios de Prueba (Parte 6)

Para validar estos roles, puedes utilizar las siguientes credenciales en el sistema:

* **Admin / Tech**
  * Correo: `admin@example.com`
    * Password: `adminuser`

* **User**
  * Correo: `user@example.com`
    * Password: `normaluser`
